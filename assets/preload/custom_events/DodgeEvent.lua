
Dodged = false;
canDodge = false;
DodgeTime = 0;

function onCreate()
    precacheImage('spacebar_icon');
end

function onEvent(name, value1, value2)
if name == "DodgeEvent" then

    DodgeTime = (value1);
	--debugPrint(DodgeTime);

	makeAnimatedLuaSprite('spacebar_icon', 'spacebar_icon', 400, 200);
    luaSpriteAddAnimationByPrefix('spacebar_icon', 'Spacetododge', 'Spacetododge', 25, true);
	luaSpritePlayAnimation('static', 'static');
	setObjectCamera('spacebar_icon', 'other');
	scaleLuaSprite('spacebar_icon', 0.70, 0.70); 
    addLuaSprite('spacebar_icon', true); 
	playSound('attack', 3.0);
	
	canDodge = true;
	runTimer('Died', DodgeTime);
	
	end
end

function onUpdate()
   if canDodge == true and keyJustPressed('space') then
   Dodged = true;
   --playSound('attack', 2.0);
   removeLuaSprite('spacebar_icon')
	setProperty('health', 1.5);
   canDodge = false;
   end
end

function onTimerCompleted(tag, loops, loopsLeft)
   if tag == 'Died' and Dodged == false then
   setProperty('health', 0);
   
   elseif tag == 'Died' and Dodged == true then
   Dodged = false;
   
   end
end