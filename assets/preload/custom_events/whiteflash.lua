zoomLastFor = -1;
cameraZoomPosX = 0;
cameraZoomPosY = 0;
function onEvent(name, value1, value2)
	if name == 'Wacky Zoom' then
		zoomLastFor = 0.5;
		cameraSetTarget('boyfriend');
		cameraZoomPosX = getProperty('camFollow.x') + 40;
		cameraZoomPosY = getProperty('camFollow.y') + 40;
		setProperty('camFollowPos.x', getProperty('camFollowPos.x') + 30);
		setProperty('camFollowPos.y', getProperty('camFollowPos.y') + 35);
		doTweenZoom('wackyZoomCamTween', 'camGame', 0.825, 0.15, 'linear');
		setProperty('camZooming', false);
		setProperty('cameraSpeed', 4.5);
	end
end

function onUpdate(elapsed)
	if zoomLastFor == -1 then
		return;
	end

	set