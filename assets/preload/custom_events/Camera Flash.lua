function onEvent(n,v1,v2)
	if n == 'Camera Flash' then
	   makeLuaSprite('flash','', 0, 0);
        makeGraphic('flash',100000,10000,'000000')
	      addLuaSprite('flash', true);
	      setProperty('flash.scale.x',2)
	      setProperty('flash.scale.y',2)
	      setLuaSpriteScrollFactor('flash',0,0)
	      setProperty('flash.alpha',0)
		setProperty('flash.alpha',1)
		doTweenAlpha('flTw','flash',0,v1,'linear')
	end
end