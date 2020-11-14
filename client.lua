function showMarker(thePlayer,commandName)
	if(thePlayer) then
		local x,y,z = getElementPosition(getLocalPlayer())
		local theMarker = createMarker(x+4,y+4,z-1, "cylinder", 1)
		if(theMarker) then 
			outputConsole("Marker created successfully",thePlayer)

		else
			outputCondole("Failed to create marker",thePlayer)
		end
	end
end 

addCommandHandler("createmarker", showMarker)
