-- ������� ����� ����������
QTable ={}
QTable.__index = QTable

-- ������� ������������� �������
function QTable.new()
    local t_id = AllocTable()
    if t_id ~= nil then
        q_table = {}
	setmetatable(q_table, QTable)
	q_table.t_id=t_id
	q_table.caption = ""
	q_table.created = false
	q_table.curr_col=0
	-- ������� � ��������� ���������� ��������
	q_table.columns={}
	return q_table
    else
        return nil
    end
end
-- ������� � �������������� ��������� ������� QTable
--test_table = QTable:new()

-- ������� ������������� �������
function InitTable()
    tt = test_table.t_id
    AddColumn(tt, 1, '������� �1', true,QTABLE_STRING_TYPE,12)
    AddColumn(tt, 2, '������� �2', true,QTABLE_CACHED_STRING_TYPE,12)
    AddColumn(tt, 3, '������� �3', true,QTABLE_STRING_TYPE,7)

    -- ������������� �� �������
    SetTableNotificationCallback(tt, OnTableEvent)

    -- ������� ���� � ��������
    CreateWindow(tt)
    -- ����������� ���� ���������
    SetWindowCaption(tt, "���� � ��������")
    -- ������ ������� ����
    SetWindowPos(tt, 0, 70, 692, 240)
end

-- ������� ������������ ������� � �������
function OnTableEvent(t_id, msg, par1, par2)
    -- ���� ��� ���� ����� �������
    if msg == QTABLE_LBUTTONDBLCLK then
        -- ���� ��� ����� ����
	if par1 == 1 -- ����� ������
	    and par2 == 1 then -- ����� �������

	        -- �������� ����������� �������

	else
	    if par2 == 2 then

	        -- �������� ����������� �������

	    end
	end
    end
end
