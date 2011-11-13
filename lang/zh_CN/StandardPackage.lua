-- translation for StandardPackage

return {
	["standard_cards"] = "标准卡牌包",
	["standard_ex_cards"] = "标准EX卡牌包",
	["attack_card"] = "进攻牌",
	["defense_card"] = "防御牌",
	["recover_card"] = "恢复牌",
	["disgusting_card"] = "恶心牌",
	["global_effect"] = "全局效果",
	["aoe"] = "范围效果",
	["single_target_trick"] = "单体锦囊",
	["delayed_trick"] = "延时锦囊",
	["weapon"] = "武器",
	["armor"] = "防具",
	["defensive_car"] = "防御车",
	["offensive_car"] = "进攻车",
	["slash"] = "杀",
	["jink"] = "闪",
	["peach"] = "桃",
	["crossbow"] = "诸葛连弩",
	["double_sword"] = "雌雄双股剑",
	["qinggang_sword"] = "青釭剑",
	["blade"] = "青龙偃月刀",
	["spear"] = "丈八蛇矛",
	["axe"] = "贯石斧",
	["halberd"] = "方天画戟",
	["kylin_bow"] = "麒麟弓",
	["eight_diagram"] = "八卦阵",
	["renwang_shield"] = "仁王盾",
	["car"] = "车",
	["ice_sword"] = "寒冰剑",
	["amazing_grace"] = "五谷丰登",
	["god_salvation"] = "桃园结义",
	["savage_assault"] = "南蛮入侵",
	["archery_attack"] = "万箭齐发",
	["collateral"] = "借刀杀人",
	["duel"] = "决斗",
	["ex_nihilo"] = "无中生有",
	["snatch"] = "顺手牵羊",
	["dismantlement"] = "过河拆桥",
	["nullification"] = "无懈可击",
	["indulgence"] = "乐不思蜀",
	["lightning"] = "闪电",
	["eight_diagram:yes"] = "进行一次判定，若判定结果为红色，则视为你打出了一张【闪】",
	["slash-jink"] = "%src 使用了【杀】，请打出一张【闪】",
	["duel-slash"] = "%src 向您决斗，您需要打出一张【杀】",
	["savage-assault-slash"] = "%src 使用了【南蛮入侵】，请打出一张【杀】来响应",
	["archery-attack-jink"] = "%src 使用了【万箭齐发】，请打出一张【闪】以响应",
	["collateral-slash"] = "%src 使用了【借刀杀人】，目标是 %dest，请打出一张【杀】以响应",
	["blade-slash"] = "您可以再打出一张【杀】发动青龙偃月刀的追杀效果",
	["double-sword-card"] = "%src 发动了雌雄双股剑特效，您必须弃一张手牌或让 %src 摸一张牌",
	["@axe"] = "你可再弃两张牌（包括装备）使此杀强制命中",
	["double_sword:yes"] = "您可以让对方选择自弃一牌或让您摸一张牌",
	["ice_sword:yes"] = "您可以弃掉其两张牌",
	["kylin_bow:yes"] = "弃置对方的一辆车",
	["kylin_bow:dcar"] = "防御车(+1车)",
	["kylin_bow:ocar"] = "进攻车(-1车)",
	["#Slash"] = "%from 对 %to 使用了【杀】",
	["#Jink"] = "%from 使用了【闪】",
	["#AxeSkill"] = "%from 使用了贯石斧的技能，弃掉了2张牌以对 %to 强制命中",
	[":slash"] = "出牌时机：出牌阶段\
使用目标：除你外，你攻击范围内的一名角色\
作用效果：【杀】对目标角色造成1点伤害",
	[":jink"] = "出牌时机：以你为目标的【杀】开始结算时\
使用目标：以你为目标的【杀】\
作用效果：抵消目标【杀】的效果",
	[":peach"] = "出牌时机：1、出牌阶段。2、有角色处于濒死状态时\
使用目标：1、你。2、处于濒死状态的一名角色\
作用效果：目标角色回复1点体力",
	[":duel"] = "出牌时机：出牌阶段\
使用目标：除你以外，任意一名角色\
作用效果：由目标角色先开始，你和他（她）轮流打出一张【杀】，【决斗】对首先不出【杀】的一方造成1点伤害；另一方成为此伤害的来源",
	[":dismantlement"] = "出牌时机：出牌阶段。\
使用目标：除你以外，任意一名角色。\
作用效果：你选择并弃掉目标角色手牌（随机选择）、装备区或判定区里的一张牌",
	[":snatch"] = "出牌时机：出牌阶段。\
使用目标：除你以外，与你距离1以内的一名角色。\
作用效果：你选择并获得目标角色手牌（随机选择）、装备区或判定区里的一张牌",
	[":archery_attack"] = "出牌时机：出牌阶段。\
使用目标：除你以外的所有角色。\
作用效果：按行动顺序结算，除非目标角色打出1张【闪】，否则该角色受到【万箭齐发】对其造成的1点伤害",
	[":savage_assault"] = "出牌时机：出牌阶段。\
使用目标：除你以外的所有角色。\
作用效果：按行动顺序结算，除非目标角色打出1张【杀】，否则该角色受到【南蛮入侵】对其造成的1点伤害",
	[":god_salvation"] = "出牌时机：出牌阶段。\
使用目标：所有角色。\
作用效果：按行动顺序结算，目标角色回复1点体力",
	[":ex_nihilo"] = "出牌时机：出牌阶段。\
使用目标：你。\
作用效果：摸两张牌",
	[":amazing_grace"] = "出牌时机：出牌阶段。\
使用目标：所有角色。\
作用效果：按你从牌堆顶亮出等同于现存角色数量的牌，然后按行动顺序结算，目标角色选择并获得这些牌中的一张",
	[":collateral"] = "出牌时机：出牌阶段。\
使用目标：除你以外，装备区里有武器牌的一名角色A。（你需要在此阶段选择另一个A使用【杀】能攻击到的角色B）。\
作用效果：A需对B使用一张【杀】，否则A必须将其装备的武器牌交给你",
	[":indulgence"] = "出牌时机：出牌阶段。\
使用目标：除你以外，任意一名角色。\
作用效果：将【乐不思蜀】横置于目标角色判定区里，目标角色回合判定阶段，进行判定；若判定结果不为红桃，则跳过目标角色的出牌结算，将【乐不思蜀】弃置",
	[":lightning"] = "【闪电】出牌时机：出牌阶段。\
使用目标：你。\
作用效果：将【闪电】横置于目标角色判定区里，目标角色回合判定阶段，进行判定；若判定结果为黑桃2-9之间（包括黑桃2和9），则【闪电】对目标角色造成3点伤害，将闪电弃置。若判定结果不为黑桃2-9之间（包括黑桃2和9），将【闪电】移动到当前目标角色下家（【闪电】的目标变为该角色）的判定区",
	[":nullification"] = "出牌时机：目标锦囊对目标角色生效前。\
使用目标：目标锦囊。\
作用效果：抵消该锦囊对其指定的一名目标角色产生的效果",
	[":crossbow"] = "攻击范围：１\
武器特效：出牌阶段，你可以使用任意张【杀】",
	[":double_sword"] = "攻击范围：２\
武器特效：你使用【杀】时，指定了一名异性角色后，在【杀】结算前，你可以令对方选择一项：自己弃一张手牌或者让你从牌堆摸一张牌",
	[":ice_sword"] = "攻击范围：２\
武器特效：当你使用【杀】造成伤害时，你可以防止此伤害，改为弃置该目标角色的两张牌（弃完第一张再弃第二张）",
	[":qinggang_sword"] = "【青釭剑】攻击范围：２\
武器特效：锁定技，每当你使用【杀】时，无视目标角色的防具",
	[":blade"] = "攻击范围：３\
武器特效：当你使用的【杀】被【闪】抵消时，你可以立即对相同的目标再使用一张【杀】直到【杀】生效或你不愿意出了为止",
	[":spear"] = "攻击范围：３\
武器特效：当你需要使用（或打出）一张【杀】时，你可以将两张手牌当一张【杀】使用（或打出）",
	[":axe"] = "攻击范围：３\
武器特效：目标角色使用【闪】抵消你使用【杀】的效果时，你可以弃两张牌，则【杀】依然造成伤害",
	[":halberd"] = "【方天画戟】攻击范围：４\
武器特效：当你使用的【杀】是你的最后一张手牌时，你可以为这张【杀】指定至多三名目标角色，然后按行动顺序依次结算之",
	[":kylin_bow"] = "攻击范围：５\
武器特效：你使用【杀】对目标角色造成伤害时，你可以将其装备区里的一辆车弃置",
	[":eight_diagram"] = "防具效果：每当你需要使用（或打出）一张【闪】时，你可以进行一次判定：若结果为红色，则视为你使用（或打出）了一张【闪】；若为黑色，则你仍可从手牌里使用（或打出）。\
★由八卦使用或打出的【闪】，并非从你的手牌中使用或打出",
	[":renwang_shield"] = "防具效果：锁定技，黑色的【杀】对你无效",
	["chevyCK"] = "雪佛兰CK",
	[":chevyCK"] = "你计算与其他角色的距离时，始终-1。（你可以理解为一种进攻上的优势）<br/>\
◆赤井秀一专用技：当你受到伤害时，可立即发动“殉职”",
	["porsche365A"] = "保时捷365A",
	[":porsche365A"] = "其他角色计算与你的距离时，始终+1。（你可以理解为一种防御上的优势）<br/>\
◆琴酒专用技：回合内，你可以将黑色手牌当【杀】使用",
	["beetle"] = "大众甲壳虫",
	[":beetle"] = "其他角色计算与你的距离时，始终+1。（你可以理解为一种防御上的优势）<br/>\
◆阿笠博士专用技：发动“溯源”时，你可以同时更改伤害目标",
	["benzCLK"] = "奔驰CLK",
	[":benzCLK"] = "你计算与其他角色的距离时，始终-1。（你可以理解为一种进攻上的优势）<br/>\
◆？？专用技：？？",
	["mazdaRX7"] = "马自达RX-7",
	[":mazdaRX7"] = "其他角色计算与你的距离时，始终+1。（你可以理解为一种防御上的优势）<br/>\
◆？？专用技：？？",
	["skateboard"] = "涡轮滑板",
	[":skateboard"] = "你计算与其他角色的距离时，始终-1。（你可以理解为一种进攻上的优势）<br/>\
◆柯南专用技：？？",

	["$Dismantlement"] = "%from 被拆掉了 %card",
	["#AcquireSkill"] = "%from 获得了技能 【%arg】",

--run a way
	["runaway_mode"] = "跑路模式",
	["#Runprex"] = "%from 翻开一张跑路牌，但由于其点数 %arg 不小于场上存活角色数，本次不得跑路",
	["#Runpre"] = "%from 翻开一张跑路牌，他需要跑 %arg 步路",
	["#Runaway2"] = "%arg 位 %from 和 %arg2 位 %to 交换了位置",
	["#Runaway"] = "%arg 位 %from 跑到了 %arg2 位 的位置",
	["runbycar"] = "爱车助我",
	["runbycar:fast"] = "踩油门（暴走）",
	["$runfast"] = "%from 装备有 %card ，多跑了一步路",
	["runbycar:slow"] = "踩刹车（龟速）",
	["$runslow"] = "%from 装备有 %card ，少跑了一步路",
	["runbycar:kao"] = "踩离合器（^o^）",
}
