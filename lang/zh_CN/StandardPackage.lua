-- translation for StandardPackage

local t = {
	["attack_card"] = "进攻牌", 
	["defense_card"] = "防御牌", 
	["recover_card"] = "恢复牌", 
	["disgusting_card"] = "恶心牌", 
	["girl_card"] = "女孩牌", 
	["global_effect"] = "全局效果", 
	["aoe"] = "范围效果", 
	["single_target_trick"] = "单体锦囊", 
	["delayed_trick"] = "延时锦囊", 
	["weapon"] = "武器", 
	["armor"] = "道具", 
	["defensive_horse"] = "防御甲胄", 
	["offensive_horse"] = "进攻甲胄", 
	["slash"] = "杀", 
	["jink"] = "闪", 
	["peach"] = "桃", 
	["crossbow"] = "小型机器人", 
	["double_sword"] = "神剑白羽鸟", 
	["qinggang_sword"] = "光刀无形", 
	["blade"] = "神刀灭却", 
	["spear"] = "神崎长刀", 
	["axe"] = "海神战斧", 
	["halberd"] = "日耳曼长矛", 
	["kylin_bow"] = "花火弓", 
	["eight_diagram"] = "圣魔方", 
	["ice_sword"] = "灵剑荒鹰", 
	["koubu"] = "光武", 
	["koubux"] = "光武改", 
	["mocao"] = "魔操机兵", 
	["isenclight"] = "爱森克莱特", 
	["koubuf"] = "光武F", 
	["watkemo"] = "蒸汽兽", 
	["amazing_grace"] = "帝剧公映", 
	["god_salvation"] = "梦回故乡", 
	["savage_assault"] = "花组出击", 
	["archery_attack"] = "降魔来袭", 
	["collateral"] = "借刀杀人", 
	["duel"] = "决斗", 
	["ex_nihilo"] = "无中生有", 
	["snatch"] = "顺手牵羊", 
	["dismantlement"] = "舞台坍塌", 
	["nullification"] = "金瓯无缺", 
	["indulgence"] = "验机维修", 
	["lightning"] = "闪电", 
	["eight_diagram:yes"] = "进行一次判定，若判定结果为红色，则视为你打出了一张【闪】", 
	["slash-jink"] = "%src 使用了【杀】，请打出一张【闪】", 
	["duel-slash"] = "%src 向您决斗，您需要打出一张【杀】", 
	["savage-assault-slash"] = "%src 使用了【花组出击】，请打出一张【杀】来响应", 
	["archery-attack-jink"] = "%src 使用了【降魔来袭】，请打出一张【闪】以响应", 
	["collateral-slash"] = "%src 使用了【借刀杀人】，目标是 %dest，请打出一张【杀】以响应", 
	["blade-slash"] = "您可以再打出一张【杀】发动追杀效果", 
	["double-sword-card"] = "%src 发动了神剑白羽鸟特效，您必须弃一张手牌或让 %src 摸一张牌", 
	["axe-card"] = "你可再弃两张牌（包括装备）使此杀强制命中", 
	["double_sword:yes"] = "您可以让对方让您摸一张牌或自弃一牌", 
	["ice_sword:yes"] = "您可以弃掉弃两张牌", 
	["kylin_bow:yes"] = "弃置对方的道具或甲胄", 
	["kylin_bow:dhorse"] = "防御甲胄(+1)", 
	["kylin_bow:ohorse"] = "进攻甲胄(-1)", 
	["kylin_bow:armor"] = "道具", 
	["#Slash"] = "%from 对 %to 使用了【杀】", 
	["#Jink"] = "%from 使用了【闪】", 
	["#AxeSkill"] = "%from 使用了海神战斧，弃掉了2张牌以对 %to 强制命中", 
	[":slash"] = "出牌时机：出牌阶段\
使用目标：除你外，你攻击范围内的一名角色\
作用效果：【杀】对目标角色造成1点伤害", 
	[":jink"] = "出牌时机：以你为目标的【杀】开始结算时\
使用目标：以你为目标的【杀】\
作用效果：抵消目标【杀】的效果", 
	[":peach"] = "出牌时机：1、出牌阶段。2、有角色处于濒死状态时\
使用目标：1、你。2、处于濒死状态的一名角色\
作用效果：目标角色回复1点体力", 
	[":duel"] = "出牌阶段，对除你以外，任意一名角色使用，由目标角色先开始，你们俩轮流打出一张【杀】，首先不出【杀】的一方受到另一方造成的1点伤害", 
	[":dismantlement"] = "出牌阶段，对除你以外，任意一名角色使用，你选择并弃掉目标角色手牌（随机选择）、装备区或判定区里的一张牌", 
	[":snatch"] = "出牌阶段，对除你以外，与你距离1以内的一名角色，你选择并获得目标角色手牌（随机选择）、装备区或判定区里的一张牌", 
	[":archery_attack"] = "出牌阶段，对除你以外的所有角色使用，按行动顺序结算，除非目标角色打出1张【闪】，否则该角色受到此牌对其造成的1点伤害", 
	[":savage_assault"] = "出牌阶段，对除你以外的所有角色使用，按行动顺序结算，除非目标角色打出1张【杀】，否则该角色受到此牌对其造成的1点伤害", 
	[":god_salvation"] = "出牌阶段，对所有角色使用，按行动顺序结算，每名角色回复1点体力", 
	[":ex_nihilo"] = "出牌阶段，对自己使用，摸两张牌", 
	[":amazing_grace"] = "出牌阶段，对所有角色使用，你从牌堆顶亮出等同于现存角色数量的牌，然后按行动顺序结算，每名角色选择并获得这些牌中的一张", 
	[":collateral"] = "出牌阶段，对除你以外，装备区里有武器牌的一名角色A使用，同时选择另一个A使用【杀】能攻击到的角色B，A需对B使用一张【杀】，否则A必须将其装备的武器牌交给你", 
	[":indulgence"] = "出牌阶段，对除你以外任意一名角色使用，将此牌横置于目标角色判定区里，目标角色回合判定阶段，进行判定；若判定结果不为红桃，则跳过目标角色的出牌阶段，将此牌弃置", 
	[":lightning"] = "出牌阶段，将【闪电】横置于自己的判定区里，回合判定阶段进行判定；若判定结果为黑桃2-9之间（包括黑桃2和9），则【闪电】对目标角色造成3点伤害，将闪电弃置。若判定结果不为黑桃2-9之间（包括黑桃2和9），将【闪电】移动到当前目标角色下家（【闪电】的目标变为该角色）的判定区", 
	[":nullification"] = "在目标锦囊对目标角色生效前，抵消该锦囊对其指定的一名目标角色产生的效果", 
	[":crossbow"] = "攻击范围：１\
武器特效：出牌阶段，你可以使用任意张【杀】", 
	[":double_sword"] = "攻击范围：２\
武器特效：你使用【杀】时，指定了一名异性角色后，在【杀】结算前，你可以令对方选择一项：自己弃一张手牌或者让你从牌堆摸一张牌", 
	[":ice_sword"] = "攻击范围：２\
武器特效：当你使用【杀】造成伤害时，你可以防止此伤害，改为弃置该目标角色的两张牌（弃完第一张再弃第二张）", 
	[":qinggang_sword"] = "攻击范围：２\
武器特效：锁定技，每当你使用【杀】时，无视目标角色的道具", 
	[":blade"] = "攻击范围：２\
武器特效：当你使用的【杀】被【闪】抵消时，你可以立即对相同的目标再使用一张【杀】直到【杀】生效或你不愿意出了为止", 
	[":spear"] = "攻击范围：３\
武器特效：当你需要使用（或打出）一张【杀】时，你可以将两张手牌当一张【杀】使用（或打出）", 
	[":axe"] = "攻击范围：３\
武器特效：目标角色使用【闪】抵消你使用【杀】的效果时，你可以弃两张牌，则【杀】依然造成伤害", 
	[":halberd"] = "攻击范围：４\
武器特效：当你使用的【杀】是你的最后一张手牌时，你可以为这张【杀】指定至多三名目标角色，然后按行动顺序依次结算之", 
	[":kylin_bow"] = "攻击范围：５\
武器特效：你使用【杀】对目标角色造成伤害时，你可以弃置1张目标装备区里的道具或甲胄", 
	[":eight_diagram"] = "道具效果：每当你需要使用（或打出）一张【闪】时，你可以进行一次判定：若结果为红色，则视为你使用（或打出）了一张【闪】；若为黑色，则你仍可从手牌里使用（或打出）。\
★由八卦使用或打出的【闪】，并非从你的手牌中使用或打出", 
	[":-1 horse"] = "你计算与其他角色的距离时，始终-1。（你可以理解为一种进攻上的优势）", 
	[":+1 horse"] = "其他角色计算与你的距离时，始终+1。（你可以理解为一种防御上的优势）", 
	[":koubu"] = "1.其他角色计算与你的距离时，始终+1。（你可以理解为一种防御上的优势）\
	2.装备后，若受到伤害，可选择丢弃光武，抵消此次伤害", 
	[":koubux"] = "1.其他角色计算与你的距离时，始终+1。（你可以理解为一种防御上的优势）\
	2.装备后，可以在受到伤害后丢弃光武改，对伤害来源造成等量伤害。光武改为造成伤害的牌", 
	[":mocao"] = "1.其他角色计算与你的距离时，始终+1。（你可以理解为一种防御上的优势）\
	2.锁定技，装备后降魔来袭和普通杀对你无效。每次受到火焰伤害时，该伤害+1", 
	["#MocaoDamage"] = "%from 的魔操机兵暴走，从 %arg 点火焰伤害增加到了 %arg2 点火焰伤害",
	[":isenclight"] = "1.你计算与其他角色的距离时，始终-1。（你可以理解为一种进攻上的优势）\
	2.锁定技，装备后雷电伤害对你无效，你是所有雷电伤害的来源", 
	["#Isenclightprotect"] = "%to 装备有爱森克莱特，防止了 %arg 点雷电伤害",
	[":koubuf"] = "1.你计算与其他角色的距离时，始终-1。（你可以理解为一种进攻上的优势）\
	2.锁定技，装备后其他角色对你使用的非延时锦囊(除舞台坍塌外)无效", 
	["#KoubuF"] = "%from 装备有光武F， %to 的锦囊【%arg】对其无效",
	[":watkemo"] = "1.你计算与其他角色的距离时，始终-1。（你可以理解为一种进攻上的优势）\
	2.锁定技，装备后每受到一次伤害时，最多承受1点伤害（防止多余的伤害）；当你失去装备区里的蒸汽兽时，你回复1点体力", 

	["standard"] = "标配", 
	["ogami"] = "大神一郎", 
	["tuxi"] = "天地一矢",
	[":tuxi"] = "摸牌阶段，你可以放弃摸牌，然后从至多两名（至少一名）角色的手牌里各抽取一张牌", 
	["@tuxi-card"] = "您是否想发动【天地一矢】技能？", 
	["yiji"] = "金城铁壁",
	[":yiji"] = "当你的体力值不小于手牌数时，你每受到1点伤害，可摸两张牌，将这些牌任意分给其他角色", 
	["huoshou"] = "天狼转化",
	[":huoshou"] = "你是任何【花组出击】造成伤害的来源；【花组出击】对你无效",
	["jijiang"] = "狼虎灭却·三刃成虎",
	[":jijiang"] = "主公技，当你需要使用（或打出）一张【杀】时，你可以要求花组成员（8+5）按行动顺序依次选择是否打出一张【杀】“提供”给你（视为由你使用或打出），直到有一名角色或没有任何角色决定如此作时为止",
	[":jijiang:"] = "队长命令:杀丫的！", 
	["jijiang:accept"] = "好！", 
	["jijiang:ignore"] = "可是……",  
	["@jijiang-slash"] = "请提供一张【杀】给队长", 
	["zhaohuan:yes"] = "召唤帝国华击团",
	["zhaohuan:no"] = "召唤巴黎华击团", 
		
	
	["$Dismantlement"] = "%from 被拆掉了 %card",
}

local ohorses = {"xiangjing", "wanzi"}
local dhorses = {"opukiloo", "paotai"}

for _, horse in ipairs(ohorses) do
	t[":" .. horse] = t[":-1 horse"]
end

for _, horse in ipairs(dhorses) do
	t[":" .. horse] = t[":+1 horse"]
end

return t