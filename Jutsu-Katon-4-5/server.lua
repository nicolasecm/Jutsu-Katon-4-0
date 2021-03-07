local tiempo = 3500

function datakatonmasuno (sourcePlayer)
local Katondata = tonumber ( getElementData( sourcePlayer,"KatonData" ) ) or 0
if Katondata == 1 then
outputChatBox("Ya tiene el Katon goukakyuu no jutsu N1", sourcePlayer, 228, 59, 3, true)
else
setElementData(sourcePlayer,"KatonData", Katondata + 1)
end
end

addCommandHandler("katonmasuno", datakatonmasuno)

function datakatonmenosuno (sourcePlayer)
local Katondata = tonumber ( getElementData( sourcePlayer,"KatonData" ) ) or 0
if Katondata == 1 then
outputChatBox("Ya tiene el Katon goukakyuu no jutsu N1", sourcePlayer, 228, 59, 3, true)
else
setElementData(sourcePlayer,"KatonData", Katondata - 1)
end
end

addCommandHandler("katonmenosuno", datakatonmenosuno)

function verdatakatonproteccion(sourcePlayer)
local Katondata = tonumber ( getElementData ( sourcePlayer,"KatonData" ) ) or 0
outputChatBox("".. Katondata .."", sourcePlayer, 228, 59, 3, true)
end

addCommandHandler("verdatakaton", verdatakatonproteccion)
 
addCommandHandler("katonn1",function( sourcePlayer )
if isPedInVehicle(sourcePlayer) then outputChatBox("Estas en un vehiculo no puedes usar jutsus.",sourcePlayer,151,97,2,false) return end
if isObjectInACLGroup("user." .. getAccountName(getPlayerAccount(sourcePlayer)), aclGetGroup("Jutsus.fuego")) then
if getElementData(sourcePlayer, "KatonData") == 1 then
if (getTickCount ( ) - tiempo > 5000) then
if exports["Chacrka_system"]:ischakraSuficientePara(sourcePlayer,35) then
exports["Chacrka_system"]:Diminuirchakra(sourcePlayer,35)
triggerClientEvent (sourcePlayer, "CreateTextoKaton", sourcePlayer)
triggerClientEvent (sourcePlayer, "SonidoKaton", sourcePlayer)
triggerClientEvent (sourcePlayer, "FuegoKaton", sourcePlayer)
tiempo = getTickCount ( )
outputChatBox ( "Katon goukakyuu no jutsu N1", sourcePlayer, 228, 59, 3, false )
local x, y, z = getElementPosition ( sourcePlayer )
setPedAnimation( sourcePlayer , "freeweights", "gym_free_pickup", -1, true, false, false )
 setTimer (
        function ( )
			setPedAnimation(sourcePlayer,"BAR","dnk_stndM_loop",-1,false,false,false,false)
        end
        ,1500, 1
    )
	
 setTimer (
        function ( )
		local mog2 = createExplosion ( x + 8, y, z, 11 ) 
		local mog3 = createExplosion ( x + 10, y, z, 11 ) 
        end
        ,3500, 1
    )
else
outputChatBox("No tiene chakra suficiente!",sourcePlayer,228, 59, 3,false)
end
else
outputChatBox("Debes esperar 5 segundos para poder utilizar este jutsu!",sourcePlayer,255,0,0,false)
end
else
outputChatBox ("No has desbloqueado el Katon goukakyuu no jutsu N1.",sourcePlayer,228, 59, 3,true )
end
else
outputChatBox("No puedes utilizar el elemento katon!",sourcePlayer,228, 59, 3,false)
end
end)

