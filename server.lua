
local isVechicleSpawned = false

local jobMarker = createMarker(-1574.4,1105.9,7.5)

local vehicleSpotCub = createColCuboid(-1580,1110,7.5,10,10,10)

local deliveryVehID = 414

addEventHandler("onMarkerHit", resourceRoot, 

function(hitElement, mDim)
	outputChatBox("1") 
	if(mDim) then
		outputChatBox("2")
		if(source == jobMarker) then
			outputChatBox("3")
			if(getElementType(hitElement) == "player") then
				outputChatBox("4")
				if not (getElementData(hitElement, "jobVehicle")) then
					outputChatBox("5")
					local vehicleInSpot = getElementsWithinColShape(vehicleSpotCub, "vehicle")
					if not (#vehicleInSpot > 0 and isVechicleSpawned == false) then
						--outputChatBox("6")
						outputChatBox("Jarmu letrehozva")
						setElementData(hitElement, "jobVehicle", jobVechicle)
						local jobVehicle = createVehicle(414, -1580, 1110, 7.5)
						isVechicleSpawned = true
					end 
				end
			end
		end
	end
end
);
