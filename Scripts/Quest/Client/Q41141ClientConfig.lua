local L0_1, L1_1, L2_1, L3_1, L4_1, L5_1, L6_1
L0_1 = {}
L0_1.MainID = 41141
L0_1.ActorAlias = "41141"
L1_1 = {}
L1_1.q4114104 = 4114104
L1_1.q4114101 = 4114101
L1_1.q4114102 = 4114102
L1_1.q4114103 = 4114103
L0_1.SubIDs = L1_1
L1_1 = {}
L2_1 = {}
L2_1.id = 30027
L2_1.alias = "Npc30027"
L2_1.script = "Actor/Npc/NpcFSMBehaviour"
L3_1 = sceneData
L4_1 = L3_1
L3_1 = L3_1.GetDummyPoint
L5_1 = 3
L6_1 = "EQ41141_NPCBorn"
L3_1 = L3_1(L4_1, L5_1, L6_1)
L2_1.point = L3_1
L1_1.Npc30027Data = L2_1
L0_1.Npcs = L1_1
L1_1 = {}
L2_1 = {}
L3_1 = {}
L3_1.dialogID = 411410901
L3_1.audioEvtName = ""
L3_1.duration = 4
L4_1 = {}
L4_1.dialogID = 411410902
L4_1.audioEvtName = ""
L4_1.duration = 4
L2_1[1] = L3_1
L2_1[2] = L4_1
L1_1.CountDownFailReminder = L2_1
L2_1 = {}
L3_1 = {}
L3_1.dialogID = 411411001
L3_1.audioEvtName = ""
L3_1.duration = 4
L4_1 = {}
L4_1.dialogID = 411411002
L4_1.audioEvtName = ""
L4_1.duration = 4
L2_1[1] = L3_1
L2_1[2] = L4_1
L1_1.WatcherFailReminder = L2_1
L0_1.Datas = L1_1
return L0_1