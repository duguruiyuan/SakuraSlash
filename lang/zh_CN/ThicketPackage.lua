-- translation for ThicketPackage

return {
	["thicket"] = "其徐如林",

	["matsudajinpei"] = "松田阵平",
	["chaidan"] = "拆弹",
	[":chaidan"] = "单发技，你可以选择一名角色判定区内的一张牌并进行一次判定，若判定牌为该延时锦囊的判定生效牌，获得此判定牌和目标锦囊",
	["julun"] = "巨轮",
	[":julun"] = "限定技，从你开始，依次摸下家一张牌，若下家没牌，受到来自上家的一点伤害",
	["@circle"] = "轮子",

	["tsuburayamitsuhiko"] = "圆谷光彦",
	["conghui"] = "聪慧",
	[":conghui"] = "你可以跳过出牌阶段并将一张手牌背面朝下移出游戏，从下家开始轮流猜点数，不能猜已经猜过的，最接近正确答案的摸三张牌，猜点成绩排名靠后的一半角色（向下取整）失去一点体力。",
	["qingyi"] = "情义",
	[":qingyi"] = "你可以指定一名少势力角色，不用参加聪慧的猜点，且结算完成后获得你移出游戏的聪慧牌\
★猜点举例：手牌点数是3。二位猜4，三位猜1，四位猜10，五位猜5，六位本来想猜4，但已经有人猜4，所以改猜12，七位猜3，八位猜9。最后结算，七位猜对，摸三张牌。有三位需要失去体力，按照差值由大到小依次是六位（差9），四位（差7），八位（差6）",
	["@conghui"] = "你可以发动【聪慧】，将一张手牌移出游戏",
	["#Caidian"] = "%from 的猜点结果是 %arg",
	["caidian"] = "猜点",

	["tabuseharuna"] = "田布施阳菜",
	["hongmeng"] = "虹梦",
	[":hongmeng"] = "单发技，你可以将红桃手牌当【雨后彩虹】使用。每当有人使用【雨后彩虹】时，你可以先拿走所有的红桃牌",
	["loli"] = "萝莉",
	[":loli"] = "锁定技，红色的【杀】对你无效",

	["hattorishizuka"] = "服部静华",
	["tieshan"] = "铁扇",
	[":tieshan"] = "锁定技，当你成为非延时锦囊的目标时，可立即摸一张牌",
	["cimu"] = "慈母",
	[":cimu"] = "主公技，单发技，你可以弃一张质数点数的牌，指定一名其他侦势力或武势力角色，在自己下回合开始前获得“铁扇”技能",

	["kudouyukiko"] = "工藤有希子",
	["luanzhen"] = "乱真",
	[":luanzhen"] = "回合开始阶段，你可以获得两个已存活武将的武将技，直到你下个回合开始时",
	["chuchu"] = "楚楚",
	[":chuchu"] = "锁定技，你的回合之外，若你上个回合没有发动乱真，其他角色计算和你的距离时，始终+1",

	["kudouyuusaku"] = "工藤优作",
	["anye"] = "暗夜",
	[":anye"] = "锁定技，红色锦囊对你无效",
	["panguan"] = "判官",
	[":panguan"] = "在任意角色的判定牌生效前，你可以获得该判定牌并令该角色重新进行一次判定且判定结果立即生效",
	["fenbi"] = "奋笔",
	[":fenbi"] = "限定技，弃牌阶段，从下家开始，每人必须弃掉一张和你弃掉的牌相同的牌，若无法做到，失去一点体力\
★相同的牌，指的是不考虑花色点数，其他内容完全一样的牌，比如都是杀，都是锦囊过河拆桥等，若发动奋笔时弃牌不止一张，只要打出和其中一张一样的牌即可",
	["wuji"] = "无稽",
	[":wuji"] = "主公技，当你受到伤害时，只要艺势力角色或工藤家族角色打出一张【杀】，可抵消此次伤害\
★工藤家族角色，指工藤优作，工藤有希子，工藤新一，江户川柯南",

	["otagiritoshirou"] = "小田切敏郎",
	["qinjian"] = "勤俭",
	[":qinjian"] = "锁定技，你自动获得被【无懈可击】抵消的锦囊",
--	[":qinjian"] = "当你使用的【杀】被【闪】抵消时，你可以进行一次判定，若判定结果为红色，你收回那张【杀】，且此回合你可以额外使用一张【杀】。",
--	["@qinjian-slash"] = "你可以再使用一次【杀】",

	["yamamuramisao"] = "山村操",
	["ruoyu"] = "若愚",
	[":ruoyu"] = "出牌阶段，你可自减一点体力，将基本牌当【顺手牵羊】使用且可额外指定一个目标，本技能可多次发动",
	["zilian"] = "自恋",
	[":zilian"] = "回合外，你每受到一次伤害或失去一点体力，可以弃X张牌，摸X+1张牌，X不大于你的当前手牌数",
	["@zilian"] = "你可以发动【自恋】，弃X张牌，摸X+1张牌",

	["suzukijirokichi"] = "铃木次郎吉",
	["lvbai"] = "屡败",
--	[":lvbai"] = "当你受到伤害时，可进行一次判定，若不为JQK，可弃一张牌抵消此次伤害",
	[":lvbai"] = "当你受到伤害时，可与一名角色拼点，若你赢，将此伤害转移给该角色",
	["@lvbai"] = "请打出一张手牌用于【%dest】拼点，目标是 %src",
	["lvzhan"] = "屡战",
--	[":lvzhan"] = "当你对其他角色造成伤害时，可进行一次判定，若为QKA，可以用弃掉对方两张牌来抵消此伤害",
	[":lvzhan"] = "当你对其他角色造成伤害时，可和目标拼点，若你赢，该伤害+1",

	["jiikounosuke"] = "寺井黄之助",
	["zhongpu"] = "忠仆",
	[":zhongpu"] = "你每受到一点伤害，可指定除你之外的一名角色摸两张牌或回复一点体力，若如此做，本回合内不再承受任何伤害",
	["zhongpu:draw"] = "摸两张牌",
	["zhongpu:recover"] = "回复一点体力",
	["zhiqu"] = "智取",
	[":zhiqu"] = "单发技，出牌阶段，你可以弃掉任一角色区域内的一张牌，若如此做，跳过你下个回合的出牌和弃牌阶段",
	["@zhiqu"] = "智取",

	["chianti"] = "基安蒂",
	["weiju"] = "微距",
	[":weiju"] = "锁定技，若你未装备武器，你和其他角色的距离锁定为1",
	["shanjing"] = "闪镜",
	[":shanjing"] = "当你对目标使用【杀】时，可做两次判定，若花色和点数均不相同，该【杀】不能被闪避，否则视为该角色打出了【闪】",
	["#Shanjing"] = "%from 的【%arg】技能生效，%to 无法闪避",
	["shanjing1"] = "闪镜1",
	["shanjing2"] = "闪镜2",

	["korn"] = "科恩",
	["baotai"] = "爆胎",
	[":baotai"] = "锁定技，你始终无视所有角色的车",
--	[":baotai"] = "锁定技，当你的【杀】造成伤害时，弃置目标的所有车",
	["mangju"] = "盲狙",
	[":mangju"] = "当你对目标使用【杀】时，可做一次判定，若为黑色基本牌，该【杀】不能被闪避",

--	["jamesblack"] = "詹姆斯·布莱克",
	["jamesblack"] = "詹姆斯",
	["anyong"] = "暗涌",
	[":anyong"] = "回合开始阶段，你可以对任意一名角色判定，若为黑色，该角色在下次行动时互换判定阶段和弃牌阶段。每阶段限一次",
	["@anyong"] = "暗涌",
	["#SwapPhases"] = "%from 交换了自己的 %arg阶段 和 %arg2阶段",
	["panda"] = "熊猫",
	[":panda"] = "主公技，你可以要求特势力角色打出一张手牌来修改你或黑势力角色的判定牌",
	["@panda"] = "你可以打出一张手牌来修改 %src 的判定牌",

	["hondoueisuke"] = "本堂瑛祐",
	["zhizhuo"] = "执着",
	[":zhizhuo"] = "在你的回合，当你使用的一张手牌（非装备和延时类锦囊牌）结算完毕后，你可以将另一张与之相同花色的手牌当该手牌使用。",
	["mihu"] = "迷糊",
	[":mihu"] = "锁定技，出牌阶段，你发动【执着】的失败率为25%。",
	["#Mihu_cup"] = "%from 的锁定技【%arg】被触发，结算被终止",

-- last words
	["~matsudajinpei"] = "其实……我挺喜欢你的……",
	["~tsuburayamitsuhiko"] = "我可是要成为福尔摩斯的男人，怎么能轻易死在这里？",
	["~tabuseharuna"] = "呜呜……",
	["~hattorishizuka"] = "等我！",
	["~kudouyukiko"] = "- -",
	["~kudouyuusaku"] = "= =",
	["~yamamuramisao"] = "嘿，哥们，我是山村~",
	["~otagiritoshirou"] = "我是谁？",
	["~suzukijirokichi"] = "我不会认输的！基德！",
	["~jiikounosuke"] = "少爷，千万不要忘了给老爷报仇……",
	["~chianti"] = "糟了，目标暴露了！",
	["~korn"] = "撤。",
	["~jamesblack"] = "少年，我记下你了。",
	["~hondoueisuke"] = "姐姐……不要扔下我……",
}
