-- 基础信息
local base_info = {
	group_id = 144004105
}

-- Trigger变量
local defs = {
	maxPathNode = 6,
	pointarray_route = 400100022,
	gadget_bubble = 105002,
	group_id = 144004105,
	gadget_reward = 105001
}

-- DEFS_MISCS
function MovePlatform(context)
	ScriptLib.PrintLog("platform to move")
	local pathnodeindex = ScriptLib.GetGroupVariableValue(context, "currentPathNode") + 1

	if pathnodeindex > defs.maxPathNode then 
		pathnodeindex = defs.maxPathNode
	end

	ScriptLib.SetPlatformPointArray(context, defs.gadget_bubble, defs.pointarray_route, {pathnodeindex}, { route_type = 0 })
	ScriptLib.PrintLog("platform to move : start platform")
	return 0
end

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
	{ config_id = 105001, gadget_id = 70210105, pos = { x = -710.182, y = 120.000, z = -284.797 }, rot = { x = 0.000, y = 235.625, z = 0.000 }, level = 16, chest_drop_id = 1002000, drop_count = 1, isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 103 },
	{ config_id = 105002, gadget_id = 70950081, pos = { x = -535.398, y = 120.000, z = -310.553 }, rot = { x = 0.000, y = 235.625, z = 0.000 }, level = 1, start_route = false, is_use_point_array = true, area_id = 100 }
}

-- 区域
regions = {
	-- 首次接近气泡
	{ config_id = 105004, shape = RegionShape.SPHERE, radius = 5, pos = { x = -535.398, y = 120.000, z = -310.553 }, area_id = 100 }
}

-- 触发器
triggers = {
	-- 后续每次接近气泡
	{ config_id = 1105003, name = "AVATAR_NEAR_PLATFORM_105003", event = EventType.EVENT_AVATAR_NEAR_PLATFORM, source = "", condition = "condition_EVENT_AVATAR_NEAR_PLATFORM_105003", action = "action_EVENT_AVATAR_NEAR_PLATFORM_105003", trigger_count = 0 },
	-- 首次接近气泡
	{ config_id = 1105004, name = "ENTER_REGION_105004", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_105004", action = "action_EVENT_ENTER_REGION_105004", trigger_count = 0 },
	-- 判定气泡到达终点
	{ config_id = 1105005, name = "PLATFORM_REACH_POINT_105005", event = EventType.EVENT_PLATFORM_REACH_POINT, source = "", condition = "condition_EVENT_PLATFORM_REACH_POINT_105005", action = "action_EVENT_PLATFORM_REACH_POINT_105005", trigger_count = 0 }
}

-- 变量
variables = {
	{ config_id = 1, name = "currentPathNode", value = 0, no_refresh = false },
	{ config_id = 2, name = "isReachGoal", value = 0, no_refresh = false }
}

--================================================================
-- 
-- 初始化配置
-- 
--================================================================

-- 初始化时创建
init_config = {
	suite = 1,
	end_suite = 2,
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
		-- description = suite_1,
		monsters = { },
		gadgets = { 105002 },
		regions = { 105004 },
		triggers = { "AVATAR_NEAR_PLATFORM_105003", "ENTER_REGION_105004", "PLATFORM_REACH_POINT_105005" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = suite_2,
		monsters = { },
		gadgets = { 105001 },
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

-- 触发条件
function condition_EVENT_AVATAR_NEAR_PLATFORM_105003(context, evt)
		if defs.gadget_bubble ~= evt.param1 then
		return false
		end
		return true
end

-- 触发操作
function action_EVENT_AVATAR_NEAR_PLATFORM_105003(context, evt)
		if ScriptLib.GetGroupVariableValue(context,"isReachGoal") == 1 then
			ScriptLib.SetGadgetStateByConfigId(context, defs.gadget_bubble, GadgetState.GearStart)
			ScriptLib.KillEntityByConfigId(context, { config_id = defs.gadget_bubble})
			ScriptLib.CreateGadget(context, { config_id = defs.gadget_reward })
			ScriptLib.GoToGroupSuite(context,defs.group_id,2)
		else
			ScriptLib.SetGadgetStateByConfigId(context, defs.gadget_bubble, GadgetState.GearStart)
			MovePlatform(context)
		end
		return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_105004(context, evt)
	if evt.param1 ~= 105004 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_105004(context, evt)
	return 0
end

-- 触发条件
function condition_EVENT_PLATFORM_REACH_POINT_105005(context, evt)
		if defs.gadget_bubble ~= evt.param1 then
		return false
		end
		return true
end

-- 触发操作
function action_EVENT_PLATFORM_REACH_POINT_105005(context, evt)
			ScriptLib.SetGroupVariableValue(context, "currentPathNode", evt.param3)	
				ScriptLib.StopPlatform(context, defs.gadget_bubble) 
			
				if evt.param3 == defs.maxPathNode then 
					--ScriptLib.KillEntityByConfigId(context, { config_id = defs.gadget_bubble})
					--ScriptLib.CreateGadget(context, { config_id = defs.gadget_reward })
					--ScriptLib.GoToGroupSuite(context,defs.group_id,2)
					ScriptLib.SetGroupVariableValue(context, "isReachGoal", 1)				
				end
				ScriptLib.SetGadgetStateByConfigId(context, defs.gadget_bubble, GadgetState.Default)
				return 0
end