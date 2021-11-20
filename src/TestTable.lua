dofile (getScriptPath() .. "\\CreateTable2.lua")

--QTable ={}
--QTable.__index = QTable

makeData = {}
makeData.__index = makeData

head = {
    [1]= "Col1",
    [2]= "Col2",
    [3]= "Col3",
    [4]= "Col4",
    [5]= "Col5",
    [6]= "Col6",
    [7]= "Col7",
    [8]= "Col8",
    [9]= "Col9",
    [10]= "Col10",
}

body = {
    [1]= {[1]= "Col1Value", [2]= "Col2Value"},
    [2]= {[1]= "Col1Value2", [2]= "Col2Value2", [7]= "Col7Value2"},
    [2]= {[1]= "Col1Value3", [4]= "Col4Value3", [9]= "Col9Value3"},
}

function main()
  test_table = QTable:new(makeData, head, body)
  InitTable(test_table)

end
