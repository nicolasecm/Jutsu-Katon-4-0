function burn()
setTimer (
        function ( )
        local x, y, z = getElementPosition(getLocalPlayer())
		fuego1 = createFire( x + 4, y , z, 0.1)
		fuego2 = createFire( x + 4.5, y , z, 0.1)
		fuego3 = createFire( x + 5, y , z, 0.1)
		fuego5 = createFire( x + 6, y + 1, z, 1.0)
		fuego6 = createFire( x + 6.5, y + 2, z, 1.0)
		fuego7 = createFire( x + 6.5, y + 3, z, 1.0)
		fuego8 = createFire( x + 6.5, y + 4, z, 1.0)
		fuego9 = createFire( x + 6.5, y - 1, z, 1.0)
        end
        ,3500, 1
    )
end
addEvent ("FuegoKaton", true)
addEventHandler ("FuegoKaton", root, burn )

function SonidoEdotensei ()
    local sound = playSound("Katon.mp3",false)
    setSoundVolume(sound, 0.9)
end
addEvent ("SonidoKaton", true)
addEventHandler ("SonidoKaton", root, SonidoEdotensei)

function TextoKaton(p)
		addEventHandler ("onClientRender", getRootElement(), Dxkaton1)
	    setTimer(function() removeEventHandler("onClientRender",getRootElement(),Dxkaton1) end,8000,1)
end
addEvent ("CreateTextoKaton", true)
addEventHandler ("CreateTextoKaton", root, TextoKaton)

local dotonColor = tocolor(228, 59, 3, 255)

function Dxkaton1 ()
		dxDrawText("!Katon goukakyuu no jutsu N1¡", 212, 611, 820, 646, dotonColor, 0.90, "pricedown", "center", "center", false, false, true, false, false)
end




