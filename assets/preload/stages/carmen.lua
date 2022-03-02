function onCreate()
--Precache
	precacheImage('bg_carmen');
	precacheImage('blue');
	precacheImage('vignette');
	precacheImage('static');
	precacheImage('jumpscare');
	precacheImage('text');
	addCharacterToList('carmen1','dad');
	addCharacterToList('carmen2','dad');

--background
	makeLuaSprite('carmenroom', 'bg_carmen', 0, -500);
	setScrollFactor('carmenroom', 0.9, 0.9);
	scaleObject('carmenroom', 1.1, 1.1);

--static
	makeAnimatedLuaSprite('static', 'static', 'static', -650, -400);
    addAnimationByPrefix('static','static','static',15,true);
	objectPlayAnimation('static', 'static');
	setScrollFactor('static', 0.9, 0.9);
	scaleObject('static', 1.3, 1.3);
	setBlendMode('static','subtract');
	setProperty('static.alpha',1)

--vignette
    makeLuaSprite('spoopy','vignette');
    setObjectCamera('spoopy' , 'camother');
    setProperty('spoopy.alpha',0.8)

--blue thing
    makeLuaSprite('blue','blue',-650,-800);
    setBlendMode('blue','multiply');
    scaleObject('blue',10,10);
    setProperty('blue.alpha',0);

--text
    makeLuaSprite('text','text');
    setObjectCamera('text','camother');



    addLuaSprite('spoopy',true)
	addLuaSprite('carmenroom', false);
    addLuaSprite('blue',false);
    addLuaSprite('static',true);
    addLuaSprite('text',true);

end

function onUpdate()
    if curBeat > 336 then
        doTweenAlpha('filterAlphal', 'blue', 0.8, 0.1, 'sineinout');
    else
	if curStep > 320 then
		setBlendMode('dad','layer');
		setProperty('static.alpha',0.2);
	else
		setBlendMode('dad','add');
	if curStep == 320 then
		setBlendMode('static','multiply');
end
end
end
end

function onBeatHit()
	if curBeat == 20 then
		doTweenAlpha('byebyetext','text',0,1,'sineinout');
	else
	end
	if not lowQuality then
		if curBeat == 208 then
            doTweenColor('darken', 'carmenroom', '000000', 20, 'quadIn');
        end
        if curBeat == 332 then
            doTweenColor('normal', 'carmenroom', 'FFFFFF', 2, 'quadIn');
    end
end
end

