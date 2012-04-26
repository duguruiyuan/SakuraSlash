-- translation for ManeuveringPackage

local t = {
	["black_dragon"] = "青龙篇",

	["fire_slash"] = "火杀",
	[":fire_slash"] = "基本牌<br />出牌时机：出牌阶段<br />使用目标：除你外，你攻击范围内的一名角色<br />作用效果：【火杀】对目标角色造成1点火属性伤害",

	["thunder_slash"] = "雷杀",
	[":thunder_slash"] = "基本牌<br />出牌时机：出牌阶段<br />使用目标：除你外，你攻击范围内的一名角色<br />作用效果：【雷杀】对目标角色造成1点雷属性伤害",

	["analeptic"] = "酒",
	[":analeptic"] = "基本牌<br />出牌时机：1、出牌阶段；2、当自己进入濒死阶段时<br />使用目标：你<br />作用效果：1、令自己的下一张使用的【杀】造成的伤害+1（每回合限使用1次）；2、回复1点体力",
	["#Drank"] = "%from 喝了【%arg】，下一张【杀】将具有伤害 +1 的效果",
	["#UnsetDrank"] = "%from 杀的结算完毕，【酒】的效果消失",
	["#UnsetDrankEndOfTurn"] = "%from 的回合结束，【酒】的效果消失",

	["fan"] = "燃烧瓶",
	[":fan"] = "装备牌·武器牌<br />攻击范围：４<br />武器特效：你可以将你的任一普通杀当作具火焰伤害的杀来使用",
	["fan:yes"] = "你可将此普通【杀】当具火焰伤害的【杀】使用或打出",

	["guding_blade"] = "M3霰弹枪",
	[":guding_blade"] = "装备牌·武器牌<br />攻击范围：２<br />武器特效：<b>锁定技</b>，当你使用【杀】对目标角色造成伤害时，若其没有手牌，此伤害+1",
	["#GudingBladeEffect"] = "%from 装备的M3生效，无手牌对象 %to 的伤害从 %arg 增加到 %arg2",

	["vine"] = "防弹衣",
	[":vine"] = "装备牌·防具牌<br />防具效果：<b>锁定技</b>，【倾巢出动】、【枪林弹雨】和普通【杀】对你无效。当你受到火焰伤害时，此伤害+1",
	["#VineDamage"] = "%from 装备【防弹衣】的效果被触发，由 %arg 点火焰伤害增加到 %arg2 点火焰伤害",

	["silver_lion"] = "魔术帽",
	[":silver_lion"] = "装备牌·防具牌<br />防具效果：<b>锁定技</b>，当你受到伤害时，若该伤害多于1点，则防止多余的伤害；当你失去装备区里的【魔术帽】时，你回复1点体力",
	["#SilverLion"] = "%from 的防具【%arg2】防止了 %arg 点伤害，减至1点",

	["fire_attack"] = "纵火",
	[":fire_attack"] = "锦囊牌<br />出牌时机：出牌阶段。<br />使用目标：一名有手牌的角色。<br />作用效果：目标角色展示一张手牌，然后若你弃置一张与所展示牌相同花色的手牌，则【纵火】对其造成1点火焰伤害",
	["fire-attack-card"] = "您可以弃置一张与%dest所展示卡牌相同花色(%arg)的牌对%dest产生一点火焰伤害",
	["@fire-attack"] = "%src 展示的牌的花色为 %arg，请弃置与其相同花色的牌",

	["iron_chain"] = "捏造",
	[":iron_chain"] = "锦囊牌<br />出牌时机：出牌阶段。<br />作用效果：1、选择1至2个角色，分别横置或重置其武将牌，处于“连环状态”；2、将此牌置入弃牌堆，然后摸一张牌",

	["supply_shortage"] = "佛跳墙",
	[":supply_shortage"] = "锦囊牌·延时锦囊<br />出牌时机：出牌阶段。<br />使用目标：距离为1的一名其他角色。<br />作用效果：将【佛跳墙】放置于该角色的判定区里，目标角色回合判定阶段，进行判定；若判定结果不为梅花，跳过其摸牌阶段，将【佛跳墙】置入弃牌堆",

	["jaguarE"] = "捷豹E-type",
	[":jaguarE"] = "装备牌·车[进攻]<br />你计算与其他角色的距离时，始终-1<br/>\
◆？？专用技：？？",
	["citroBX"] = "雪铁龙BX19",
	[":citroBX"] = "装备牌·车[防守]<br />其他角色计算与你的距离时，始终+1<br/>\
◆？？专用技：？？",

--
	["thunder_bird"] = "朱雀篇",

	["wind_jink"] = "风闪",
	[":wind_jink"] = "基本牌<br />出牌时机：以你为目标的【杀】开始结算时<br />使用目标：以你为目标的【杀】<br />作用效果：抵消目标【杀】的效果，若该【杀】为属性【杀】，则获得之",

	["soil_jink"] = "土闪",
	[":soil_jink"] = "基本牌<br />出牌时机：以你为目标的【杀】开始结算时<br />使用目标：以你为目标的【杀】<br />作用效果：抵消目标【杀】的效果，若该【杀】为属性【杀】，则视为触发连环",

	["juice_peach"] = "水桃",
	[":juice_peach"] = "基本牌<br />出牌时机：1、出牌阶段；2、有角色处于濒死状态时<br/>使用目标：1、任意一名已受伤角色；2、处于濒死状态的一名角色<br/>作用效果：目标角色回复1点体力<br/>★触发连环后的效果：被连环的角色依次解除连环状态并回复1点体力",
	["#IronChainRecover"] = "%from 处于铁索连环状态，将受到铁索的传导回复",

	["inspiration"] = "励志故事",
	[":inspiration"] = "锦囊牌<br />出牌时机：出牌阶段。<br />使用目标：所有角色。<br />作用效果：按行动顺序，每名角色摸X张牌，X为目标角色已损失的体力值，最少为1",

	["sacrifice"] = "舍己为人",
	[":sacrifice"] = "锦囊牌<br />出牌时机：出牌阶段。<br />使用目标：任意一名已受伤的角色。<br />作用效果：你失去1点体力，目标角色回复1点体力",

	["potential"] = "连击",
	[":potential"] = "锦囊牌<br />出牌时机：出牌阶段。<br />使用目标：你。<br />作用效果：本回合结束后，开始一个额外的回合，每回合限使用一次",

	["red_alert"] = "袭击警报",
	[":red_alert"] = "锦囊牌<br />出牌时机：出牌阶段。<br />使用目标：除你以外的所有角色。<br />作用效果：按行动顺序结算，除非目标角色打出一张锦囊，否则该角色失去1点体力",
	["redalert-trick"] = "%src 使用了【袭击警报】，请打出一张锦囊来响应",

	["turnover"] = "偷袭",
	[":turnover"] = "锦囊牌<br />出牌时机：出牌阶段。<br />使用目标：攻击范围内的一名角色<br />作用效果：除非目标角色打出1张【杀】，否则须将自己的武将牌翻面",
	["turnover-slash"] = "%src 对你使用了【偷袭】，请打出一张【杀】来响应",

	["wolf"] = "空手白狼",
	[":wolf"] = "锦囊牌<br />出牌时机：出牌阶段。<br />使用目标：你。<br />作用效果：分别从其他角色的区域内随机获得一张牌，若获得的牌大于三张，流失1点体力",

	["locust"] = "虫灾",
	[":locust"] = "锦囊牌·延时锦囊<br />出牌时机：出牌阶段。<br />使用目标：按行动顺序，你的下一名有效角色。<br />将【虫灾】横置于目标的判定区里，目标角色回合判定阶段，进行判定：若判定结果不为JQ，目标角色必须立即弃一张牌(无法弃牌失去一点体力)，然后将【虫灾】移动到下一名角色的判定区里。若判定牌为JQ，目标必须进行2选1：将【虫灾】弃置或继续移动",
	["locust:move"] = "让虫灾来得更疯狂吧！",
	["locust:throw"] = "够了……",
	
	["yx_sword"] = "妖刀村正",
	[":yx_sword"] = "装备牌·武器牌<br />攻击范围：３<br />武器特效：当你的【杀】造成伤害时，可以指定攻击范围内的一名其他角色为伤害来源。",

	["bat"] = "网球拍",
	[":bat"] = "装备牌·武器牌<br />攻击范围：３<br />武器特效：<b>锁定技</b>，当你的【杀】被闪避时，获得那张【闪】。",

	["railgun"] = "超电磁炮",
	[":railgun"] = "装备牌·武器牌<br />攻击范围：５<br />武器特效：<b>锁定技</b>，你的普通杀均视为具雷电伤害的杀；当你的【杀】造成伤害时，弃置目标角色的武器和防具。",

	["injector"] = "注射器",
	[":injector"] = "装备牌·武器牌<br />攻击范围：１<br />武器特效：出牌阶段，你可以流失一点体力上限，视为对任一角色使用了一张【决斗】。",

	["tantei"] = "侦探徽章", -- 3枚
	[":tantei"] = "装备牌·防具牌<br />防具效果：当你需要打出一张【杀】或【闪】时，可请求另一名装备侦探徽章的角色帮你出【杀】或【闪】（视为由你打出）；<b>锁定技</b>，距离为1以内的角色每受到一点伤害，你摸一张牌",
	["@tantei"] = "%src 请求你帮忙打出一张【%dest】",

	["bow"] = "蝴蝶结",
	[":bow"] = "装备牌·防具牌<br />防具效果：当你体力值发生变化时，可随机摸X张牌，X∈[1,3]",

-- ana
	["ana_gin"] = "琴酒",
	["ana_vodka"] = "伏特加酒",
	["ana_vermouth"] = "苦艾酒",
	["ana_sherry"] = "雪莉酒",
	["ana_chianti"] = "勤地酒",
	["ana_korn"] = "科恩酒",
}

local anal = {"ana_gin", "ana_vodka", "ana_vermouth", "ana_sherry", "ana_chianti", "ana_korn"}

for _, ana in ipairs(anal) do
	t[":" .. ana] = t[":analeptic"]
end

return t
