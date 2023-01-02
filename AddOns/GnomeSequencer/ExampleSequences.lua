local _, Sequences = ... -- Don't touch this

----
-- Rename this file to Sequences.lua before you get started, it uses a different file name so as not to overwrite your existing file with a future update.
-- Every entry in the Sequences table defines a single sequence of macros which behave similarly to /castsequence.
-- Sequence names must be unique and contain no more than 16 characters.
-- To use a macro sequence, create a blank macro in-game with the same name you picked for the sequence here and it will overwrite it.
----

----
-- Here's a large demonstration sequence documenting the format:
Sequences["GnomeExample1"] = {
	-- StepFunction optionally defines how the step is incremented when pressing the button.
	-- This example increments the step in the following order: 1 12 123 1234 etc. until it reaches the end and starts over
	-- DO NOT DEFINE A STEP FUNCTION UNLESS YOU THINK YOU KNOW WHAT YOU'RE DOING
	StepFunction = [[
		limit = limit or 1
		if step == limit then
			limit = limit % #macros + 1
			step = 1
		else
			step = step % #macros + 1
		end
	]],
	
	-- PreMacro is optional macro text that you want executed before every single button press.
	-- This is if you want to add something like /startattack or /stopcasting before all of the macros in the sequence.
	PreMacro = [[
/run print("-- PreMacro Script --")
/startattack	
	]],
	
	-- PostMacro is optional macro text that you want executed after every single button press.
	-- I don't know what you would need this for, but it's here anyway.
	PostMacro = [[
/run print("-- PostMacro Script --")
	]],
	
	-- Macro 1
	[[
/run print("Executing macro 1!")
/cast SpellName1
	]],
	
	-- Macro 2
	[[
/run print("Executing macro 2!")
/cast SpellName2
	]],
	
	-- Macro 3
	[[
/run print("Executing macro 3!")
/cast SpellName3
	]],
}

----
-- Here is a short example which is what most sequences will look like
Sequences["GnomeExample2"] = {	
	-- Macro 1
	[[
/run print("Executing macro 1!")
/cast SpellName1
	]],
	
	-- Macro 2
	[[
/run print("Executing macro 2!")
/cast SpellName2
	]],
	
	-- Macro 3
	[[
/run print("Executing macro 3!")
/cast SpellName3
	]],
}

----------------------------------------------------------------骑士----------------------------------------------------------------
Sequences["3圣印输出"] = {   
	'/cast 驱邪术',
	'/cast [mod:alt]正义之锤;十字军打击',
	'/cast [mod:alt]神圣风暴;圣殿骑士的裁决',
	'/cast 愤怒之锤',
	'/cast [mod:alt]神圣风暴;圣殿骑士的裁决',
	--'/cast [stance:4]审判',
 -- 宏 圣印舞	
[[
/castsequence [stance:1] reset=999 审判,正义圣印
/castsequence [stance:2] reset=999 审判,公正圣印
/castsequence [stance:3] reset=999 审判,真理圣印
/cast [stance:4]审判
]],
} 

Sequences["2圣印输出"] = {   
	'/cast 驱邪术',
	'/cast [mod:alt]正义之锤;十字军打击',
	'/cast [mod:alt]神圣风暴;圣殿骑士的裁决',
	'/cast 愤怒之锤',
	'/cast [mod:alt]神圣风暴;圣殿骑士的裁决',
	--'/cast [stance:4]审判',
 -- 宏 圣印舞	
[[
/castsequence [stance:1] reset=999 审判,正义圣印
/castsequence [stance:2] reset=999 审判,真理圣印
/cast [stance:3][stance:4]审判
]],
} 

Sequences["最终审判输出"] = {   
	'/cast 驱邪术',
	'/cast [mod:alt]正义之锤;十字军打击',
	'/cast [mod:alt]神圣风暴;最终审判',
	'/cast 愤怒之锤',
	'/cast [mod:alt]神圣风暴;最终审判',
	'/cast 审判',
} 

Sequences["防骑拉怪"] = {   
	--'/cast 驱邪术',
	'/cast [mod:alt]正义之锤;十字军打击',
	'/cast 神圣愤怒',
	'/cast 愤怒之锤',
-- 宏 1
[[
/castsequence reset=5/combat 圣洁护盾,审判
]],
}

Sequences["基础循环输出"] = { 
	'/cast 驱邪术',
	'/cast 愤怒之锤',
	'/cast 十字军打击',
	'/cast 愤怒之锤',
	'/cast 审判',
} 


----------------------------------------------------------------萨满----------------------------------------------------------------
Sequences["增强输出"] = {   
	'/cast 风暴打击',
	'/cast 熔岩猛击',
-- 宏 1
[[
/castsequence reset=12/combat 元素释放,烈焰震击,冰霜震击,冰霜震击,元素释放,冰霜震击,冰霜震击,冰霜震击
]],
}

Sequences["元素输出"] = { 
[[
/castsequence reset=12/combat 烈焰震击,闪电箭,闪电箭,大地震击,闪电箭,闪电箭,大地震击,闪电箭,闪电箭,大地震击,闪电箭,闪电箭
]],  
	'/cast 熔岩爆裂',
	'/cast 元素冲击',
	'/cast 熔岩爆裂',
	'/cast 熔岩爆裂',
	'/cast 元素冲击',
-- 宏 1

}
----------------------------------------------------------------战士----------------------------------------------------------------
Sequences["狂暴输出"] = {   
	'/cast 风暴之锤',
	'/cast 嗜血',
	'/cast 怒击',
	'/cast 狂风打击',
	'/cast 斩杀',
}

Sequences["防战拉怪"] = {  
	'/cast 盾牌冲锋',
	'/cast 复仇',
	'/cast 盾牌猛击',
	'/cast 毁灭打击',
	'/cast 复仇',
	'/cast 盾牌猛击',
	'/cast 乘胜追击',
	'/cast 雷霆一击',
}

Sequences["角斗士"] = {  
	'/cast 盾牌冲锋',
	'/cast 复仇',
	'/cast 盾牌猛击',
	'/cast 毁灭打击',
	'/cast 复仇',
	'/cast 盾牌猛击',
	'/cast 乘胜追击',
	'/cast 雷霆一击',
}

Sequences["武器输出"] = {   
	'/cast 巨人打击',
	'/cast 致死打击',
	'/cast 风暴之锤',
	'/cast 乘胜追击',
	'/cast 斩杀',
}


----------------------------------------------------------------猎人----------------------------------------------------------------
Sequences["射击"] = {  
[[
/cast [@focus,player][@pet]误导
/startattack
/use [combat]13 
/use [combat]14
]], 
	'/cast [nochanneling:弹幕射击] 奇美拉射击',
	'/cast [nochanneling:弹幕射击] 瞄准射击',
	'/cast [nochanneling:弹幕射击] 夺命黑鸦',
	'/cast [nochanneling:弹幕射击] 稳固射击',
	'/cast [nochanneling:弹幕射击] 奇美拉射击',
	'/cast [nochanneling:弹幕射击] 夺命射击',
	--'/cast [nochanneling:弹幕射击] 弹幕射击',
}

Sequences["生存"] = { 
[[
/cast [@focus,player][@pet]误导
/startattack
/use [combat]13 
/use [combat]14
]],
	'/cast 爆炸射击',
	'/cast 黑箭',
	'/cast 夺命黑鸦',
	'/cast 飞刃',
	'/cast 爆炸射击',
	'/cast 奥术射击',
	'/cast 眼镜蛇射击',
}

Sequences["兽王单体"] = { 
[[
/cast [@focus,player][@pet]误导
/startattack
/use [combat]13 
/use [combat]14
]],
'/cast [nochanneling:弹幕射击]夺命射击', 
'/cast [nochanneling:弹幕射击]狂野怒火', 
'/cast [nochanneling:弹幕射击]凶暴野兽',
--'/cast [nochanneling:弹幕射击]弹幕射击', 
'/cast [nochanneling:弹幕射击]夺命黑鸦',
'/cast [nochanneling:弹幕射击]飞刃',
[[
/castsequence [nochanneling:弹幕射击] reset=6 杀戮命令,眼镜蛇射击,眼镜蛇射击,奥术射击
]],
}

Sequences["兽王群体"] = { 
[[
/cast [@focus,player][@pet]误导
/startattack
/use [combat]13 
/use [combat]14
]],
'/cast [nochanneling:弹幕射击]夺命射击',
'/cast [nochanneling:弹幕射击]狂野怒火', 
'/cast [nochanneling:弹幕射击]凶暴野兽', 
--'/cast [nochanneling:弹幕射击]弹幕射击',
'/cast [nochanneling:弹幕射击]夺命黑鸦',
[[
/castsequence [nochanneling:弹幕射击] reset=4 多重射击,眼镜蛇射击,眼镜蛇射击
]],
}
 
 ----------------------------------------------------------------小德----------------------------------------------------------------
 Sequences["熊拉怪"] = {   
   -- Macro 1 
   '/cast 粉碎',
   '/cast 塞纳里奥结界',
   '/cast [mod:alt]痛击;裂伤', 
   '/cast 割伤',
   
   -- Macro 2 
   [[ 
/castsequence reset=3/combat 痛击,割伤,割伤,割伤,割伤,割伤,割伤,割伤,割伤,割伤
   ]], 
   
   -- Macro 2 
   [[ 
/console autounshift 0
/castsequence 治疗之触
/console autounshift 1
   ]],
 }
 
 Sequences["豹子输出"] = {  
   '/cast [nostealth,combat]猛虎之怒',
   '/cast [nostealth,nocombat]潜行',
   -- Macro 1 
   [[ 
/castsequence [nostealth,combat] reset=10/combat 斜掠,撕碎,撕碎,撕碎,撕碎,撕碎
/cast [stealth]斜掠
   ]], 
   -- Macro 2 
   [[ 
/console autounshift 0
/castsequence [nostealth,combat]治疗之触
/console autounshift 1
   ]],
 }
 
----------------------------------------------------------------暗牧----------------------------------------------------------------
Sequences["暗牧输出"] = {   
    '/cast 暗言术：灭',
	'/cast 心灵震爆',
	'/cast 噬灵疫病',
	--'/cast 摧心魔',
	'/cast 心灵尖刺',
 }
 
 
 Sequences["dot输出"] = {  
	'/cast 暗言术：灭',
	'/cast 心灵震爆',
	'/cast 噬灵疫病',
	'/cast 摧心魔',
	'/cast [nochanneling]精神鞭笞',
 }
 
 ----------------------------------------------------------------盗贼----------------------------------------------------------------
 Sequences["刺杀"] = {   
	'/cast [nostealth]斩击',
	'/cast [stealth]伏击',
	'/cast [nostealth]宿敌',
	-- Macro 1 
   [[ 
/castsequence reset=5/combat [nostealth]毁伤,毁伤,割裂,毁伤,毁伤,毒伤,毁伤,毁伤,毒伤
   ]], 
 }

  Sequences["刺杀无终结"] = {   
	'/cast [nostealth]斩击',
	'/cast [stealth]伏击',
	'/cast [nostealth]宿敌',
	'/cast [nostealth]毁伤',
 }

  ----------------------------------------------------------------术士，不要用呢，待更新----------------------------------------------------------------
   Sequences["毁灭输出"] = {   
	'/cast 燃烧',
	'/cast 暗影灼烧',
	-- Macro 1 
   [[ 
/castsequence reset=5/combat 献祭,烧尽,烧尽,烧尽,烧尽,烧尽,烧尽
   ]], 
 }
 
   ----------------------------------------------------------------法师，不要用呢，待更新----------------------------------------------------------------
   Sequences["冰法"] = {   
	-- Macro 1
   [[ 
/castsequence reset=5/combat 献祭,烧尽,烧尽,烧尽,烧尽,烧尽,烧尽
   ]], 
 }