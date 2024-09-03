-- functions for loading the saved variables --
-- art --
function abfSavedArtBottom(bar, vbar)
	_G[bar.."Button1BottomLine1"]:Hide()
	_G[bar.."Button1SoftCloud"]:Hide()
	if ABFactionBars[vbar]["Bottom"]["Art"] ~= "None" then
		_G[bar.."Button1"..ABFactionBars[vbar]["Bottom"]["Art"]]:Show()
	end
end
-- color --
function abfSavedColorBottom(bar, vbar)
	if ABFactionBars[vbar]["Bottom"]["Color"] == "Default Color" then
		_G[bar.."Button1BottomLine1"]:SetDesaturated(false)
		_G[bar.."Button1SoftCloud"]:SetDesaturated(false)
	else
		_G[bar.."Button1BottomLine1"]:SetDesaturated(true)
		_G[bar.."Button1SoftCloud"]:SetDesaturated(true)
	end
	_G[bar.."Button1BottomLine1"]:SetVertexColor(abfGetLocalColor(ABFactionBars[vbar]["Bottom"]["ArtColor"]))
	_G[bar.."Button1SoftCloud"]:SetVertexColor(abfGetLocalColor(ABFactionBars[vbar]["Bottom"]["ArtColor"]))
end
