local cjson = require "cjson"

-- local simpleJson = [[ {"age": "23", "testArray": {"array": [8, 9, 11, 14, 25]}, "Himi": "himigame.com"} ]]
local simpleJson = [[{"age": "23", "testArray": {"array": [8, 9, 11, 14, 25]}, "Himi": "himigame.com"}]]

local data = cjson.decode(simpleJson)
print(data["age"])
print(data["testArray"]["array"][1])

local cjson = require "cjson"
local retTable = {}
local intDatas = {}
intDatas[1] = 100
intDatas[2] = "100"
local aryDatas = {}
aryDatas[1] = {}
aryDatas[1]['键11'] = "值11"
aryDatas[1]['键12'] = "值12"
aryDatas[2] = {}
aryDatas[2]["键21"] = "值21"
aryDatas[2]["键22"] = "值22"
retTable["键1"] = "值1"
retTable[2] = 123
retTable["intDatas"] = intDatas
retTable["aryDatas"] = aryDatas
local jsonStr = cjson.encode(retTable)
print(jsonStr)
