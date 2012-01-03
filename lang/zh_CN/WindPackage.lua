-- translation for WindPackage

return {
	["wind"] = "其疾如风",

	["kisakieri"] = "妃英理",
	["bianhu"] = "辩护",
	[":bianhu"] = "在任意角色的锦囊生效前，你可以打出一张相同花色的手牌，来改变这张锦囊的目标",
	["@bianhu"] = "%src 使用了花色为 %arg 的锦囊，你可以弃掉一张同花色手牌来发动【辩护】",
	["$Bianhu"] = "%from 发动了【辩护】，将当前锦囊的目标改为 %to",
	["fenju"] = "分居",
	[":fenju"] = "弃牌阶段弃牌后，你可以指定一名男性角色，摸取和你弃牌数相同数量的手牌",

	["kujoureiko"] = "九条玲子",
	["fating"] = "法庭",
	[":fating"] = "任意一名角色的判定牌生效前，你可以用自己的一张基本牌替换之",
	["@fating-card"] = "请使用【法庭】技能来修改 %src 的 %arg 判定",
	["rougu"] = "柔骨",
	[":rougu"] = "锁定技，当你的手牌数不大于体力上限时，自动跳过弃牌阶段；当手牌数小于体力上限时，不能成为【顺手牵羊】和【过河拆桥】的目标；当手牌数大于体力上限时，你不能成为【乐不思蜀】和【兵粮寸断】的目标",

	["kojimagenta"] = "小岛元太",
	["manyu"] = "鳗鱼",
	[":manyu"] = "回合开始阶段，若你已受伤，可以从牌堆里抽出一张牌，若为黑桃，你回复一点体力，否则将其交给其他角色",
	["$Manyu"] = "%from 亮出的牌是 %card",
	["$ManyuTo"] = "%from 把 %card 交给了 %to",
	["bantu"] = "斑秃",
	[":bantu"] = "锁定技，你的【杀】必须打出一张非基本牌才能抵消",
	["#BantuEffect"] = "%from 的锁定技【%arg】生效，%to 必须用非基本牌来响应",
	["bantu-jink"] = "%src 拥有【斑秃】技能，您必须打出一张非基本牌来抵消这张【杀】",
	["tuanzhang"] = "团长",
	[":tuanzhang"] = "主公技，少势力角色在其出牌阶段可以对其他少势力角色使用【桃】\
★团长是场景效果，回合外可以用桃给非濒死角色加一点体力",
	["tuanzhangv"] = "团长令",
	[":tuanzhangv"] = "你可以对其他少势力角色使用【桃】",

	["heiji"] = "服部平次",
	["nijian"] = "逆剑",
	[":nijian"] = "当你因【杀】或【决斗】受到伤害时，可以弃一张和该伤害牌相同花色的牌，视为将此次伤害转移给【杀】或【决斗】的伤害来源",
	["@nijian"] = "你可以发动【逆剑】弃掉一张 %arg 花色的牌（包括装备），将这次伤害转移给 %src",
	["#Nijian"] = "%from 发动了技能【%arg】，将 %arg2 点伤害转移给了 %to",

	["okidasouji"] = "冲田总司",
	["zhenwu"] = "真武",
	[":zhenwu"] = "若你选择跳过摸牌阶段或出牌阶段，可以规定在你下个回合开始之前：（二选一）1.所有人不能使用黑色【杀】；2.所有人不能使用黑色非延时锦囊",
	["zhenwu:slash"] = "封印黑色的【杀】",
	["zhenwu:ndtrick"] = "封印黑色的非延时锦囊",

	["suzukisonoko"] = "铃木园子",
	["huachi"] = "花痴",
	[":huachi"] = "弃牌阶段弃牌前，若你的手牌数不小于2，可以指定一名男性角色，将所有手牌交给对方，此时开始直到目标角色下次行动结束时，称为花痴有效期",
	["@huachi"] = "你可以发动【花痴】，请指定一名男性角色",
	["huhua"] = "护花",
	[":huhua"] = "锁定技，在花痴指定后的有效期内，对自己的一切伤害都由对方承担",
	["@flower"] = "花",
	["#Huhua"] = "%from 的技能【护花】生效，护花使者 %to 为 %from 承担了 %arg 点伤害[%arg2]",

	["okinoyouko"] = "冲野洋子",
	["ouxiang"] = "偶像",
	[":ouxiang"] = "回合开始阶段，你可以选择摸X张牌，X为你当前体力值，若如此做，立刻中止本回合",
	["#SkipAllPhase"] = "%from 中止了当前回合",
	["qingchun"] = "青春",
	[":qingchun"] = "觉醒技，回合结束阶段，你获得一枚青春标记；当你的青春标记达到5个时，永久失去偶像和青春技能",
	["@qingchun"] = "青春",
	["#Qingchun"] = "%from 的青春标记达到了 %arg 个，觉醒技【%arg2】触发，以后将无法发动【偶像】和【青春】技能",

	["hattoriheizou"] = "服部平藏",
	["yunchou"] = "运筹",
	[":yunchou"] = "单发技，你给其他角色一张牌，到你下回合开始时，该角色使用和此牌同类型的牌（基本、装备、锦囊）时无效",
	["#YunchouEffect"] = "%from 受到【%arg】影响，结算被中止",
	["#Yunchou"] = "%from 使用了【%arg2】，%to 的 %arg 统统变成了废牌",
	["weiwo"] = "帷幄",
	[":weiwo"] = "回合外，你每失去一张手牌，可以做一次判定，若判定牌和你失去的牌是同一类型，你获得此判定牌",
	["lingjia"] = "凌驾",
	[":lingjia"] = "主公技，当场上有人使用【桃】且无人濒死，在生效前，你可以用相同点数的牌替换之，并交给其他警势力或侦势力角色",
	["@lingjia"] = "%src 使用了【桃】，你可以弃掉一张 %arg 点数的牌获得这张【桃】",

	["touyamaginshirou"] = "远山银司郎",
	["yinsi"] = "银司",
	[":yinsi"] = "在场上发生伤害事件时，你可以选择：1.对受到伤害的角色使用【桃】；2.若在攻击范围内，你可以弃一张装备牌，视为对受到伤害的角色使用了一张【火杀】",
	["yinsi:friend"] = "对受伤角色使用桃",
	["yinsi:enemy"] = "对受伤角色落井下石",
	["yinsi:cancel"] = "不发动",
	["@yinsi-friend"] = "%src 受到了伤害，你可以立即送一个【桃】给他吃",
	["@yinsi-enemy"] = "%src 受到了伤害，你可以弃掉一张装备牌，视为对其使用一张【火杀】",

	["nakamoriginzou"] = "中森银三",
	["weijiao"] = "围剿",
	[":weijiao"] = "判定阶段，你可以放弃判定，指定两名不同性别的角色拼点，成功一方对失败一方造成一点伤害",
	["@weijiao-card"] = "你可以发动【围剿】，指定两名角色进行拼点",
	["@weijiao-ask"] = "你即将和 %src 拼点，请展示一张手牌",
	["shiyi"] = "拾遗",
	[":shiyi"] = "发动围剿后，可以选择跳过摸牌阶段，从弃牌堆回收那两张拼点牌",

	["vermouth"] = "贝尔摩德",
	["designer:vermouth"] = "宇文天启、凌天翼",
	["weixiao"] = "微笑",
	[":weixiao"] = "单发技，你可以将一张牌交给一名男性角色，该角色在其下个回合内对其他角色使用【杀】或【决斗】造成的伤害+1",
	["@smile"] = "微笑",
	["#Weixiao"] = "%from 有 %to 撑腰，下回合有部分伤害加成的效果",
	["#WeixiaoBuff"] = "%from 的【微笑】效果被触发，对 %to 的伤害从 %arg 点上升至 %arg2 点",
	["qianmian"] = "千面",
	[":qianmian"] = "非主公技，当你死亡时，可以说出一种非主公的身份，杀死你的角色须按照该身份执行奖惩",
	["qianmian:cancel"] = "不发动",
	["#Qianmian"] = "%from 发动了【%arg2】，选择的身份是 %arg",
	["kuai"] = "苦艾",
	[":kuai"] = "主公技，黑势力角色每造成一点伤害，你可以摸一张牌",

	["jodie"] = "茱蒂",
	["dianwan"] = "电玩",
	[":dianwan"] = "摸牌阶段，若你已受伤，可以额外摸一张牌",
	["shuangyu"] = "双语",
	[":shuangyu"] = "限定技，出牌阶段，你可以选择两个目标，分别猜你的身份，猜错者失去3点体力，猜对者增加一点体力上限",
	["@two"] = "双语",
	["#ShuangyuReduce"] = "%from 猜错了 %to 的身份，流失 %arg 点体力",
	["#ShuangyuAdd"] = "%from 猜对了 %to 的身份，获得 %arg 点体力上限",
	["juanxiu"] = "隽秀",
	[":juanxiu"] = "锁定技，你的回合外，攻击不到你的角色不能对你使用锦囊",

	["araidetomoaki"] = "新出智明",
	["qingdi"] = "情敌",
	[":qingdi"] = "你每失去一张装备区里的装备时，可视为对任意一名角色（包括自己）使用了一张【杀】（此【杀】不计入每回合的使用限制）",
	["zhiyu"] = "治愈",
	[":zhiyu"] = "单发技，你可以弃一张方块牌，为一名角色回复一点体力。若你在出牌阶段未使用过【杀】，回合结束后可为自己回复一点体力\
★若你回合内使用的【杀】都是情敌【杀】，也算作未使用过【杀】",

	["tomesan"] = "登米",
	["yanshi"] = "验尸",
	[":yanshi"] = "你可以获得死亡角色的所有牌",
	["dushu"] = "毒术",
	[":dushu"] = "当场上有角色进入濒死状态时，若其在你的攻击范围内，你可以弃掉一张【桃】，令该角色立即死亡",
	["#Dushu"] = "%from 发动了技能【%arg】，%to 去见马克思了",
	["@dushu"] = "你可以弃掉一张【桃】，令 %src 立即死亡",

-- last words
	["~kisakieri"] = "从失败中吸取教训，下次一定胜利！",
	["~kujoureiko"] = "走着瞧吧，你的不败记录，我一定会打破的",
	["~kojimagenta"] = "能不能……再给我一份鳗鱼饭……",
	["~heiji"] = "浪花剑客，屡败屡战！",
	["~okidasouji"] = "咦？",
	["~suzukisonoko"] = "阿真……救我……",
	["~okinoyouko"] = "红颜弹指老，刹那芳华……",
	["~hattoriheizou"] = "平次，老爸的希望全寄托在你身上了。",
	["~touyamaginshirou"] = "还不能够啊……",
	["~nakamoriginzou"] = "可恶，基德……",
	["~vermouth"] = "哼，看来栽跟头了啊",
	["~jodie"] = "秀……",
	["~araidetomoaki"] = "杀一个医生，减十年阳……寿……",
	["~tomesan"] = "啥？我是龙套？",
}
