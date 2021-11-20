-- Создаем новую переменную
QTable ={}
QTable.__index = QTable

-- Функция инициализации таблицы
function QTable.new()
    local t_id = AllocTable()
    if t_id ~= nil then
        q_table = {}
	setmetatable(q_table, QTable)
	q_table.t_id=t_id
	q_table.caption = ""
	q_table.created = false
	q_table.curr_col=0
	-- Таблица с описанием параметров столбцов
	q_table.columns={}
	return q_table
    else
        return nil
    end
end
-- Создаем и инициализируем экземпляр таблицы QTable
--test_table = QTable:new()

-- Функция инициализации таблицы
function InitTable()
    tt = test_table.t_id
    AddColumn(tt, 1, 'Колонка №1', true,QTABLE_STRING_TYPE,12)
    AddColumn(tt, 2, 'Колонка №2', true,QTABLE_CACHED_STRING_TYPE,12)
    AddColumn(tt, 3, 'Колонка №3', true,QTABLE_STRING_TYPE,7)

    -- Подписываемся на события
    SetTableNotificationCallback(tt, OnTableEvent)

    -- Создаем окно с таблицей
    CreateWindow(tt)
    -- Присваиваем окну заголовок
    SetWindowCaption(tt, "Окно с таблицей")
    -- Задаем позицию окна
    SetWindowPos(tt, 0, 70, 692, 240)
end

-- Функция обрабатывает события в таблице
function OnTableEvent(t_id, msg, par1, par2)
    -- Если был клик левой кнопкой
    if msg == QTABLE_LBUTTONDBLCLK then
        -- Если это общий стоп
	if par1 == 1 -- Номер строки
	    and par2 == 1 then -- Номер колонки

	        -- Вызываем необходимую функцию

	else
	    if par2 == 2 then

	        -- Вызываем необходимую функцию

	    end
	end
    end
end
