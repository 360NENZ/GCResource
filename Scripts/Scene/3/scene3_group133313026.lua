-- 基础信息
local base_info = {
	group_id = 133313026
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 26001, monster_id = 21010101, pos = { x = -378.138, y = 17.813, z = 4555.999 }, rot = { x = 0.000, y = 271.691, z = 0.000 }, level = 32, drop_tag = "丘丘人", pose_id = 9011, area_id = 32 },
	{ config_id = 26002, monster_id = 21010201, pos = { x = -320.176, y = 2.219, z = 4556.656 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, drop_tag = "丘丘人", area_id = 32 },
	{ config_id = 26003, monster_id = 21010101, pos = { x = -359.729, y = 15.354, z = 4546.040 }, rot = { x = 0.000, y = 37.002, z = 0.000 }, level = 32, drop_tag = "丘丘人", pose_id = 9011, area_id = 32 }
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
		monsters = { 26001, 26002, 26003 },
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