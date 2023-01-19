--created with Super_Hugo's Stage Editor v1.6.3

function onCreate()

	makeLuaSprite('obj1', 'wallandfloor', -2001, -873)
	setObjectOrder('obj1', 0)
	scaleObject('obj1', 1.5, 1.5)
	addLuaSprite('obj1', true)
	
	makeLuaSprite('obj2', 'bluebox', -2026, 242)
	setObjectOrder('obj2', 1)
	scaleObject('obj2', 1.5, 1.5)
	addLuaSprite('obj2', true)
	
	makeLuaSprite('obj3', 'redpanel', -1606, -28)
	setObjectOrder('obj3', 1)
	scaleObject('obj3', 1.5, 1.5)
	addLuaSprite('obj3', true)
	
	makeLuaSprite('obj4', 'shadowedbox', -2508, 450)
	setObjectOrder('obj4', 10)
	scaleObject('obj4', 2, 2)
	setScrollFactor('obj4', 1.2, 1.2)
	addLuaSprite('obj4', true)
	
	makeLuaSprite('obj7', 'shadowedbox2', 1126, 144)
	setObjectOrder('obj7', 10)
	scaleObject('obj7', 2, 2)
	setScrollFactor('obj7', 1.5, 1.5)
	addLuaSprite('obj7', true)
	
	makeLuaSprite('obj8', 'roofwirea', -2377, -970)
	setObjectOrder('obj8', 10)
	scaleObject('obj8', 1.7, 1.7)
	setScrollFactor('obj8', 1.1, 1.1)
	addLuaSprite('obj8', true)
	
end