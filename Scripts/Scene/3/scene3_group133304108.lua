-- 基础信息
local base_info = {
	group_id = 133304108
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 108002, gadget_id = 70220103, pos = { x = -1110.833, y = 185.521, z = 2078.632 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 21 },
	{ config_id = 108003, gadget_id = 70220103, pos = { x = -1104.822, y = 201.293, z = 2098.125 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 21 },
	{ config_id = 108004, gadget_id = 70330197, pos = { x = -1102.823, y = 186.142, z = 2072.686 }, rot = { x = 0.000, y = 83.104, z = 0.000 }, level = 30, area_id = 21 },
	{ config_id = 108006, gadget_id = 70220103, pos = { x = -1122.021, y = 192.086, z = 2082.962 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 21 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
}

-- 变量
variables = {
}

-- 废弃数据
garbages = {
	gadgets = {
		{ config_id = 108001, gadget_id = 70220103, pos = { x = -1148.347, y = 180.558, z = 2079.304 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 21 },
		{ config_id = 108005, gadget_id = 70220103, pos = { x = -1130.857, y = 164.582, z = 2072.360 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 21 }
	}
}

--================================================================
-- 
-- 初始化配置
-- 
--================================================================

-- 初始化时创建
init_config = {
	suite = 1,
	end_suite = 0,
	rand_suite = false
}

--================================================================
-- 
-- 小组配置
-- 
--================================================================

suites = {
	{
		-- suite_id = 1,
		-- description = ,
		monsters = { },
		gadgets = { 108002, 108003, 108004, 108006 },
		regions = { },
		triggers = { },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================