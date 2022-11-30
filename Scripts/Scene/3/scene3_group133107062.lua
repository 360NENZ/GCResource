-- 基础信息
local base_info = {
	group_id = 133107062
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 62001, monster_id = 26010101, pos = { x = -347.142, y = 270.536, z = 580.894 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 24, drop_tag = "骗骗花", area_id = 7 },
	{ config_id = 62002, monster_id = 26010101, pos = { x = -363.709, y = 270.166, z = 587.085 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 24, drop_tag = "骗骗花", area_id = 7 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
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
		monsters = { 62001, 62002 },
		gadgets = { },
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