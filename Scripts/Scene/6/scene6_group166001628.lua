-- 基础信息
local base_info = {
	group_id = 166001628
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
	{ config_id = 628001, gadget_id = 70500000, pos = { x = 860.402, y = 969.410, z = 739.316 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 36, point_type = 1010, area_id = 300 },
	{ config_id = 628002, gadget_id = 70500000, pos = { x = 860.990, y = 971.441, z = 745.369 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 36, point_type = 1010, area_id = 300 },
	{ config_id = 628003, gadget_id = 70500000, pos = { x = 864.615, y = 970.536, z = 738.542 }, rot = { x = 0.000, y = 278.566, z = 0.000 }, level = 36, point_type = 1010, area_id = 300 },
	{ config_id = 628004, gadget_id = 70500000, pos = { x = 859.306, y = 968.832, z = 737.842 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 36, point_type = 1003, area_id = 300 }
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
		gadgets = { 628001, 628002, 628003, 628004 },
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