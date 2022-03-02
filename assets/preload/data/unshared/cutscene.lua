local allowCountdown = false
local cutsceneEnded = false


--OPENING CUTSCENE
function onStartCountdown()
    if not lowQuality then
        if not allowCountdown and isStoryMode and not seenCutscene then --Block the first countdown
            startVideo('warning');
            allowCountdown = true;
            return Function_Stop;
        end
        
    end
    return Function_Continue;
end

function onEndSong()
    if not lowQuality then
        if isStoryMode and not cutsceneEnded then
                --if score > number then
                    startVideo('end');
                    cutsceneEnded = true;
                    return Function_Stop --to stop the song from ending for playing a cutscene or something.
                --end
            
        end
    end   
        return Function_Continue;
end


--invisible note strums
function onUpdate(elpased)
    for i=0, getProperty('opponentStrums.length')-1 do
            setPropertyFromGroup('opponentStrums',i,'visible',false)
            setPropertyFromGroup('opponentStrums',i,'y',130)
            setPropertyFromGroup('opponentStrums',i,'x',-9999)
   end
end