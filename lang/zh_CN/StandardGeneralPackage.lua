-- translation for StandardGeneralPackage

return {
	["standard"] = "标准版",

	["designer:kobayashisumiko"] = "宇文天启、尉迟泱",

	["kudoushinichi"] = "工藤新一",
	["zhenxiang"] = "真相",
	[":zhenxiang"] = "锁定技，其他角色的手牌始终对你处于可见状态。",
	["$Zhenxiangissingle"] = "%from 观看了 %to 的手牌",
	["wuwei"] = "无畏",
	[":wuwei"] = "主公技，你的回合外，每当你受到一次伤害，你可以在伤害结算后令其他角色依次打出一张【杀】（每打出一张视为你对伤害来源使用一张【杀】）。",
	[":wuwei:"] = "%from 想让你帮其出一张【杀】:",
	["wuwei:accept"] = "响应无畏",
	["wuwei:ignore"] = "不响应",
	["@wuwei-slash"] = "请打出一张【杀】以响应主公的【无畏】",

	["hattoriheiji"] = "服部平次",
	["rexue"] = "热血",
	[":rexue"] = "每当你受到一次伤害时，你可以将一名其他角色的一张牌置于其武将牌上，称为“热血牌”。当一名武将牌上有热血牌的角色进入濒死状态时，该角色可以将一张热血牌置入弃牌堆，回复1点体力。\
★服部平次死亡后，拥有热血牌的角色依然可以执行该效果。",
	["rexue_get"] = "热血·救援",
	["jiaojin"] = "较劲",
	[":jiaojin"] = "单发技，你可以展示一张手牌，令任一其他角色展示一张相同花色的手牌，否则该角色弃置三张牌。\
★单发技的定义：每回合出牌阶段可以发动且只能发动一次的技能。",
	["@jiaojinask"] = "%src 发动了【较劲】，如果你没有和 %arg 相同花色的手牌，你的装备或手牌将不保",

	["mourikogorou"] = "毛利小五郎",
	["chenshui"] = "沉睡",
	[":chenshui"] = "回合开始阶段开始时，你可以令其他所有或除你额外指定的一名角色外的所有角色依次打出一张【杀】，否则受到你对其造成的1点伤害。若如此做，你跳过此回合的判定、摸牌和出牌阶段。",
	["chenshuiprotect"] = "请选择一名角色，该角色不受【沉睡】的影响",
	["chenshui-slash"] = "%src 陷入了沉睡，请打出一张【杀】来证明自己的清白",
	["jingxing"] = "惊醒",
	[":jingxing"] = "每当你受到1点伤害后，你可以摸两张牌或令一名角色弃置一张牌。",
--	["zuoxi"] = "做戏",
--	[":zuoxi"] = "单发技，出牌阶段，当你发起的某个事件结算完毕后，未造成任何濒死或死亡，你可以反悔一次\
--★结算后反悔举例：当你用过河拆桥拆A，B出了无懈可击，你反无懈，A被拆。执行反悔操作，A从弃牌堆里收回被拆的牌，你回收无懈可击，B回收无懈可击，你回收过河拆桥，完毕",

	["edogawaconan"] = "江户川柯南",
	["zhinang"] = "智囊",
	[":zhinang"] = "你的回合外，当你失去一张手牌时，可以摸一张牌。",
	["mazui"] = "麻醉",
	[":mazui"] = "单发技，你可以令一名其他角色进行一次判定，若判定结果为红桃，该角色将其武将牌翻面。",
	["fuyuan"] = "复原",
	[":fuyuan"] = "主公技，弃牌阶段，当你弃置了两张或更多的手牌时，若工藤新一未加入游戏，你可以获得技能【真相】和【无畏】，直到你下回合的弃牌阶段开始时。",
	["$Fuyuanrb"] = "%from 又变成了小屁孩的样子……",

	["haibaraai"] = "灰原哀",
	["pantao"] = "叛逃",
	[":pantao"] = "其他角色的回合开始前，若你已受伤且武将牌正面朝上，你可以将你的武将牌翻面，进行一个额外的回合。",
	["shiyan"] = "实验",
	[":shiyan"] = "单发技，你可以展示一张手牌并进行一次判定并获得生效后的判定牌，若判定结果与你展示的手牌花色相同，你可以摸两张牌。",
	["$Shiyan"] = "%from 对 %card 进行实验",
	["$Shiyansuc"] = "%from 判定牌的花色和 %card 的花色相同 ，实验成功！",
	["$Shiyanfail"] = "%from 判定牌的花色和 %card 的花色不同 ，实验失败……",
	["qianfu"] = "潜伏",
	[":qianfu"] = "锁定技，若你的武将牌背面朝上，黑色的【杀】对你无效",

	["yoshidaayumi"] = "吉田步美",
	["tianzhen"] = "纯真",
	[":tianzhen"] = "锁定技，当你受到锦囊牌对你造成的伤害时，或你使用锦囊牌对其他角色造成伤害时，防止该伤害。",
	["#TianzhenPrevent"] = "%from 的锁定技【%arg】被触发，防止了当前锦囊对 %to 造成的 %arg2 点伤害",
	["lanman"] = "烂漫",
	[":lanman"] = "当你的手牌数小于4时，你可以将一张方块手牌当【勇气】使用",
	["dontcry"] = "不哭",
	[":dontcry"] = "觉醒技，你的首个回合会跳过弃牌阶段，第二个回合结束之后须进行选择：增加1点体力槽，或手牌上限+2.",
	["#BukuWake"] = "阳光总在风雨后，%from 触发了觉醒技【%arg】并选择%arg2",
	["hpc"] = "增加1点体力槽",
	["mxc"] = "手牌上限+2",
	["$dontcry"] = "我不想逃避！逃避是不会胜利的！",

	["mouriran"] = "毛利兰",
	["duoren"] = "夺刃",
	[":duoren"] = "你可以将一张红色手牌当【闪】使用或打出；当你使用或打出一张【闪】时（若为使用则在选择目标后），你可以获得当前回合角色的武器。",
	["shouhou"] = "守候",
	[":shouhou"] = "回合开始阶段开始时，你可以令一名其他角色回复1点体力，若如此做，你跳过此回合的判定和摸牌阶段。",

	["touyamakazuha"] = "远山和叶",
	["heqi"] = "合气",
	[":heqi"] = "当你成为其他角色使用【杀】的目标时，若该角色的牌数比你的手牌数多，你可以获得其一张手牌或判定区里的牌。",
	["shouqiu"] = "手球",
	[":shouqiu"] = "在一名角色的判定牌生效前，你可以打出一张牌代替之。",
	["@shouqiu-card"] = "请使用【手球】技能来修改 %src 的 %arg 判定",

	["kyougokumakoto"] = "京极真",
	["shenyong"] = "神勇",
	[":shenyong"] = "你可以将装备牌当【杀】使用或打出，出牌阶段使用【杀】可额外指定一个目标。",

	["kaitoukid"] = "怪盗基德",
	["shentou"] = "神偷",
	[":shentou"] = "你可以将一张锦囊牌当【顺手牵羊】使用且无距离限制；若出牌阶段你使用了两张或以上的【顺手牵羊】，你可以跳过此回合的弃牌阶段。",
	["baiyi"] = "白衣",
	[":baiyi"] = "限定技，出牌阶段，弃掉区域内的全部牌，视为你使用了一张【空手白狼】。",
	["@wolf"] = "白狼",
	["feixing"] = "飞行",
	[":feixing"] = "锁定技，若你的装备区没有牌，视为你装备着【+1车】。",

	["sharon"] = "莎朗·温亚德",
	["wuyu"] = "物语",
	[":wuyu"] = "锁定技，当你失去装备区里的一张装备牌时，你摸两张牌。",
	["yirong"] = "易容",
	[":yirong"] = "限定技，当你处于濒死状态时，你可以抽取三张未登场的武将牌，并变身为其中一名且体力回复至3点。",
	["@yaiba"] = "面膜",
	["$yirong"] = "A secret makes a woman woman.",

	["megurejyuuzou"] = "目暮十三",
	["quzheng"] = "取证",
	[":quzheng"] = "其他角色的弃牌阶段结束时，你可以获得弃牌堆里所有于此阶段中弃置的非武器牌；摸牌阶段，若你的手牌数大于你的体力上限，你必须放弃摸牌。",
	["ranglu"] = "让路",
	[":ranglu"] = "主公技，你可以将“取证”的机会交给其他侦势力角色。",

	["matsumotokiyonaka"] = "松本清长",
	["shangchi"] = "伤饬",
	[":shangchi"] = "摸牌阶段，若你已受伤，可以额外摸X张牌，或者让另一名角色摸Y-1张牌，X为你失去的体力，Y为你当前的体力。",
	["shangchi:me"] = "自己摸牌",
	["shangchi:him"] = "其他人摸牌",
	["diaobing"] = "调兵",
	[":diaobing"] = "主公技，单发技，你可以令其他警势力角色依次对你选择的一名目标进攻一次。\
★发动调兵时，警势力角色可以打出【杀】、【决斗】和【纵火】来响应，若造成伤害，伤害来源为响应调兵的角色",
	[":diaobing:"] = "%from 命令你攻击目标:",
	["diaobing:accept"] = "攻击",
	["diaobing:ignore"] = "弹药不足",
	["@diaobing-slash"] = "请打出一张【杀】【决斗】或【纵火】以响应主公的【调兵】",

	["shiratorininzaburou"] = "白鸟任三郎",
	["guilin"] = "归林",
	[":guilin"] = "若对你造成伤害的牌为一张，你可以获得之，并从伤害来源或当前行动角色处抽取一张牌。若两张牌花色不同，你必须弃一张牌。",

	["kurobakaitou"] = "黑羽快斗",
--	["bjvh"] = "变装",
--	[":bjvh"] = "回合开始阶段开始时，你可以弃一张牌，改变自己的性别。",
	["tishen"] = "替身",
	[":tishen"] = "当你处于濒死状态时，你可以获得一名其他角色的一张手牌并展示，若为基本牌，你的体力回复至3点并无法再次发动【替身】直到游戏结束。",
	["$tishen"] = "私に対してとてもキッドにとってできないことはない!",
	["@fake"] = "假人",
	["moshu"] = "魔术",
	[":moshu"] = "任意角色的摸牌阶段摸牌前，你可以摸两张牌，然后将你的两张手牌以任意顺序置于牌堆顶。每轮限一次。",
	["#Moshu"] = "%from 发动了【%arg2】技能，替换了牌堆顶的 %arg 张牌",
	["@moshu-card"] = "请选择两张牌（包括装备）放到当前牌堆顶",

	["nakamoriaoko"] = "中森青子",
	["renxing"] = "任性",
	[":renxing"] = "单发技，你可以与一名体力比你多的角色拼点，若你赢，你获得其一张牌。否则失去1点体力。",
	["qingmei"] = "青梅",
	[":qingmei"] = "锁定技，你参与拼点时，除你之外其他角色的基本牌点数均视为1。",
	["#Qingmeieff"] = "%from 的锁定技【%arg】生效，某张拼点牌的点数可能发生了改变",

	["gin"] = "琴酒",
	["ansha"] = "暗杀",
	[":ansha"] = "限定技，出牌阶段，你可以失去1点体力上限并弃置四张不同花色的手牌，令一名角色获得暗杀标记（不明示）。该角色在其下回合的回合结束阶段结束时受到你对其造成的3点伤害。",
	["@ansha"] = "杀气",
	["$ansha"] = "安息吧，永远地安息吧……",
	["#Ansha"] = "%from 的技能【%arg】生效，目标是 %to",
	["juelu"] = "绝戮",
	[":juelu"] = "当你使用的【杀】造成伤害结算后，你可以对受到该伤害的角色再使用一张【杀】。",
	["juelu-slash"] = "你可以发动【绝戮】，继续【杀】目标！",
	["heiyi"] = "黑衣",
	[":heiyi"] = "主公技，其他黑势力角色可以跳过自己的摸牌阶段，令你在下回合的摸牌阶段摸牌时额外摸两张牌。",
	["@heiyi"] = "黑衣",

	["vodka"] = "伏特加",
	["maixiong"] = "买凶",
	[":maixiong"] = "出牌阶段，你可以将自己的基本牌交给其他角色（一名角色限一张），你每给出两张手牌时，回复1点体力。",
	["dashou"] = "打手",
	[":dashou"] = "回合结束阶段开始时，你可以令其他角色各交给你一张牌，若你获得的牌不少于两张，你将你的武将牌翻面。",
	["@dashou-get"] = "%src 向你求一张牌，想给就给，不想给就别给",

	["akaishuichi"] = "赤井秀一",
	["jushen"] = "狙神",
	[":jushen"] = "锁定技，当你装备的武器攻击范围大于2时，你使用的【杀】不可被【闪】响应。",
	["#Jushenslash"] = "%from 的锁定技【%arg】生效，目标不可闪避",
	["xunzhi"] = "殉职",
	[":xunzhi"] = "锁定技，你死亡时，杀死你的角色（若存在）以及另一名你选择的角色获得以下技能直到游戏结束：摸牌阶段摸牌时，该角色少摸一张牌。",
	["#Xunzhieffect"] = "%from 受到【%arg】效果的影响，少摸了 1 张牌",
	["@aka"] = "红色",

	["agasahiroshi"] = "阿笠博士",
	["gaizao"] = "改造",
	[":gaizao"] = "摸牌阶段，你可以放弃摸牌，改为弃置一名其他角色装备区里的一张牌，然后你和该角色各摸一张牌。",
	["@gaizao"] = "你可以【改造】任意一名角色的一件装备",
	["suyuan"] = "溯源",
	[":suyuan"] = "在你参与的伤害事件结算前，你可以更改伤害来源。",
	["#SuyuanChange"] = "%from 将本次伤害来源更改为 %to",
	["#BeetleChange"] = "%from 将本次伤害目标更改为 %to",
	["baomu"] = "保姆",
	[":baomu"] = "主公技，当一名其他少势力角色处于濒死状态时，你可以弃置一张黑桃手牌，令其回复1点体力。",
	["@baomu"] = "你可以弃掉一张黑桃牌，为 %src 回复一点体力",

	["miyanoagemi"] = "宫野明美",
	["shanliang"] = "善良",
	[":shanliang"] = "距离2以内的角色受到伤害时，你可以失去一点体力，防止该伤害，然后摸X张牌，X为该角色当前体力值。",
	["qingshang"] = "情殇",
	[":qingshang"] = "锁定技，回合外，若你的体力为1，任何有来源的伤害对你无效。",
	["#QSProtect"] = "%to 的锁定技【%arg】被触发，%from 对 %to 造成的伤害无效",

	["kobayashisumiko"] = "小林澄子",
	["yuanding"] = "园丁",
	[":yuanding"] = "出牌阶段，你可以亮出一张手牌并选择一名有手牌的其他角色，该角色须交给你一张手牌，然后获得你亮出的手牌。对每名其他角色限一次。",
	["@yuandingask"] = "%src 发动了【园丁】，你可以用一张手牌替换亮出的园丁牌",
	["qiniao"] = "栖鸟",
	[":qiniao"] = "弃牌阶段结束时，若你于此阶段弃置的手牌数小于2，你可以令一名角色跳过其下回合的判定阶段。",
	["@bird"] = "鸟",

	["aoyamagoushou"] = "青山刚昌",
	["long"] = "龙颿",
	[":long"] = "每当你对一名角色造成一次伤害时，可以进行一次判定，若判定结果点数为：合数，你摸一张牌并防止此伤害；质数，该角色摸两张牌且此伤害+1；既不是质数也不是合数，此伤害+2.\
★关于质数和合数的概念请查阅四年级小学数学课本。",

	["uzumaki"] = "漩涡鸣人",
	["haruno"] = "春野樱",

-- last words
	["~kudoushinichi"] = "不……",
	["~hattoriheiji"] = "没想到，真的没想到……",
	["~mourikogorou"] = "啊……哦……",
	["~edogawaconan"] = "兰……我是新……",
	["~haibaraai"] = "工藤……为我报仇……",
	["~yoshidaayumi"] = "有没有搞错，连小朋友都打……555……",
	["~mouriran"] = "新一，你在哪里啊……新一……",
	["~kyougokumakoto"] = "我居然会输？",
	["~touyamakazuha"] = "平次……我喜欢你……",
	["~kaitoukid"] = "我死了……嘻嘻，开玩笑的啦",
	["~sharon"] = "纵然容貌千变，终难逃一劫",
	["~megurejyuuzou"] = "小绿，等我……",
	["~matsumotokiyonaka"] = "赌上东京警视厅的尊严！",
	["~shiratorininzaburou"] = "生亦何欢，死亦何苦……",
	["~kurobakaitou"] = "可恶，竟然输在这里……",
	["~nakamoriaoko"] = "快斗，你就是……基德吧……",
	["~gin"] = "下次一定杀了你！",
	["~vodka"] = "大哥，我誓死追随您！",
	["~akaishuichi"] = "银色子弹，只要一发就够了……",
	["~agasahiroshi"] = "哀酱，我……",
	["~kobayashisumiko"] = "怎么会这样！",
	["~yamamuramisae"] = "老而不死是为贼",
	["~aoyamagoushou"] = "我是作者，开玩笑，我怎么可能死？",
}

