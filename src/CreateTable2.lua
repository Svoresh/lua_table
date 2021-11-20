-- Создаем новую переменную
QTable ={}
QTable.__index = QTable

-- Функция инициализации таблицы
function QTable.new(table, head, body)
    local t_id = AllocTable()
    if t_id ~= nil then
	--setmetatable(table, QTable)
	table.t_id=t_id
	table.name = "Picachoooo"
	table.caption = ""
	table.created = false
	table.curr_col=0
	table.head={
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
	table.body=body
	return table
    else
        return nil
    end
end

-- Функция инициализации таблицы
function InitTable(table)
    tableId = table.t_id

    for key, val in pairs(table.head) do
        AddColumn(tableId, key, val, true,QTABLE_STRING_TYPE,10)
    end;


--for key, val in pairs(table.head) do

   --message("key == "..key.."; val == "..val)

--end
    -- Подписываемся на события
--     SetTableNotificationCallback(tt, OnTableEvent)

    -- Создаем окно с таблицей
    CreateWindow(tableId)
    -- Присваиваем окну заголовок
    SetWindowCaption(tableId, table.name)
    -- Задаем позицию окна
    SetWindowPos(tableId, 0, 70, 692, 240)
end
