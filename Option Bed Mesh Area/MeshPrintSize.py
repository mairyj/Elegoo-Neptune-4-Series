import re #To perform the search and replace.

from ..Script import Script


class MeshPrintSize(Script):

    def getSettingDataString(self):
        return """{
            "name": "Mesh Print Size",
            "key": "MeshPrintSize",
            "metadata": {},
            "version": 2,
            "settings":{}
        }"""

    def execute(self, data):
            minMaxXY = {'MINX':0,'MINY':0,'MAXX':0,'MAXY':0}
            lineData = ''

            for layer_number, layer in enumerate(data):
                for k,v in minMaxXY.items():
                    result = re.search(str(k)+":(\d*\.?\d*)",layer)
                    if result is not None:
                        minMaxXY[k] = result.group(1)

                areaStartGcode = re.search("BED_MESH_CALIBRATE  AREA_START=%MINX%,%MINY% AREA_END=%MAXX%,%MAXY%",layer)

                if areaStartGcode is not None:
                    if not lineData:
                        lineData = layer
                    for k, v in minMaxXY.items():    
                        pattern3 = re.compile('%' + k + '%')
                        lineData = re.sub(pattern3, v, lineData)
                    
                    data[layer_number] = lineData
        
                                         
            return data