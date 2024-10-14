-- functions for loading the saved variables --
-- color --
function abfSavedColorNormalTexture(text, bar)
	if bar == MainMenuBar then bar = "Action"
	elseif bar == MultiBarBottomLeft then bar = "MultiBarBottomLeft"
	elseif bar == MultiBarBottomRight then bar = "MultiBarBottomRight"
	elseif bar == MultiBarRight then bar = "MultiBarRight"
	elseif bar == MultiBarLeft then bar = "MultiBarLeft"
	elseif bar == MultiBar5 then bar = "MultiBar5"
	elseif bar == MultiBar6 then bar = "MultiBar6"
	elseif bar == MultiBar7 then bar = "MultiBar7"
	end
	for i = 1, 12, 1 do
		if ABFactionBars[text]["NormalTextureColorMode"] == "One Color" then
			_G[bar.."Button"..i.."NormalTexture"]:SetDesaturation(1)
			_G[bar.."Button"..i.."NormalTexture"]:SetVertexColor(abfGetLocalColor(ABFactionBars[text]["NormalTextureColor"]))
		elseif ABFactionBars[text]["NormalTextureColorMode"] == "Gradient Color" then
			_G[bar.."Button"..i.."NormalTexture"]:SetDesaturation(1)
			local firstColor = CreateColor(abfGetLocalColor(ABFactionBars[text]["NormalTextureGradient1"]))
			local secondColor = CreateColor(abfGetLocalColor(ABFactionBars[text]["NormalTextureGradient2"]))
			_G[bar.."Button"..i.."NormalTexture"]:SetGradient(ABFactionBars[text]["NormalTextureGradientOrientation"], firstColor, secondColor)
		end
	end
end
