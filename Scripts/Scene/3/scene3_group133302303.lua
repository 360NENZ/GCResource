-- 基础信息
local base_info = {
	group_id = 133302303
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
	{ config_id = 303001, gadget_id = 70220103, pos = { x = -931.202, y = 215.724, z = 2623.078 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, area_id = 24 },
	{ config_id = 303002, gadget_id = 70220103, pos = { x = -986.272, y = 209.393, z = 2610.408 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, area_id = 24 },
	{ config_id = 303003, gadget_id = 70220103, pos = { x = -914.635, y = 208.110, z = 2699.248 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, area_id = 24 },
	{ config_id = 303004, gadget_id = 70220103, pos = { x = -1004.274, y = 205.127, z = 2673.167 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, area_id = 24 },
	{ config_id = 303005, gadget_id = 70330197, pos = { x = -1005.346, y = 227.298, z = 2527.424 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, area_id = 24 },
	{ config_id = 303006, gadget_id = 70220103, pos = { x = -1005.077, y = 243.252, z = 2473.287 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, area_id = 24 },
	{ config_id = 303007, gadget_id = 70220103, pos = { x = -922.040, y = 237.237, z = 2908.757 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, area_id = 24 },
	{ config_id = 303008, gadget_id = 70220103, pos = { x = -911.512, y = 249.253, z = 2920.120 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, area_id = 24 },
	{ config_id = 303009, gadget_id = 70220103, pos = { x = -972.332, y = 259.969, z = 2979.924 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, area_id = 23 }
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
		gadgets = { 303001, 303002, 303003, 303004, 303005, 303006, 303007, 303008, 303009 },
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