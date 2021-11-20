-- Создаем новую переменную
QTable ={}
QTable.__index = QTable

-- Функция инициализации таблицы
function QTable.new(table)
    local t_id = AllocTable()
    if t_id ~= nil then
	setmetatable(table, QTable)
	table.t_id=t_id
	table.name = "Окно с таблицей"
	table.caption = ""
	table.created = false
	table.curr_col=0
	return table
    else
        return nil
    end
end

-- Функция инициализации таблицы
function InitTable()
    tableId = table.t_id

    for i=0, ipairs(table), 1 do
        AddColumn(tableId, i, table.head[i], true,QTABLE_STRING_TYPE,10)
    end;



    -- Подписываемся на события
--     SetTableNotificationCallback(tt, OnTableEvent)

    -- Создаем окно с таблицей
    CreateWindow(tableId)
    -- Присваиваем окну заголовок
    SetWindowCaption(tableId, table.name)
    -- Задаем позицию окна
    SetWindowPos(tableId, 0, 70, 692, 240)
end