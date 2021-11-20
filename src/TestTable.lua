dofile (getScriptPath() .. "\\CreateTable2.lua")

--QTable ={}
--QTable.__index = QTable

makeData = {error: "Нету"}
makeData.__index = makeData

makeData.head = {
    [1]: "Кол1",
    [2]: "Кол2",
    [3]: "Кол3",
    [4]: "Кол4",
    [5]: "Кол5",
    [6]: "Кол6",
    [7]: "Кол7",
    [8]: "Кол8",
    [9]: "Кол9",
    [10]: "Кол10"
}

makeData.body = {
    [1]: {[1]: "Кол1Value", [2]: "Кол2Value"},
    [2]: {[1]: "Кол1Value2", [2]: "Кол2Value2", [7]: "Кол7Value2"},
    [2]: {[1]: "Кол1Value3", [4]: "Кол4Value3", [9]: "Кол9Value3"},
}

function main()
  test_table = QTable:new(makeData)
  InitTable()

end
