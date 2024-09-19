-- functions for loading the saved variables --
-- art --
function abfSavedArtTop(bar, vbar)
	_G[bar.."Button1JailersTower"]:Hide()
	_G[bar.."Button1HornsLeft"]:Hide()
	_G[bar.."Button1HornsRight"]:Hide()
	_G[bar.."Button1BossHorns"]:Hide()
	if ABFactionBars[vbar]["Top"]["Art"] ~= "None" and ABFactionBars[vbar]["Top"]["Art"] ~= "Horns" then
		_G[bar.."Button1"..ABFactionBars[vbar]["Top"]["Art"]]:Show()
	elseif ABFactionBars[vbar]["Top"]["Art"] == "Horns" then
		_G[bar.."Button1"..ABFactionBars[vbar]["Top"]["Art"].."Left"]:Show()
		_G[bar.."Button1"..ABFactionBars[vbar]["Top"]["Art"].."Right"]:Show()
	end
end
-- color --
function abfSavedColorTop(bar, vbar)
	if ABFactionBars[vbar]["Top"]["ArtColorOptions"] == "Default Color" then
		_G[bar.."Button1JailersTower"]:SetDesaturated(false)
		_G[bar.."Button1HornsLeft"]:SetDesaturated(false)
		_G[bar.."Button1HornsRight"]:SetDesaturated(false)
		_G[bar.."Button1BossHorns"]:SetDesaturated(false)
	else
		_G[bar.."Button1JailersTower"]:SetDesaturated(true)
		_G[bar.."Button1HornsLeft"]:SetDesaturated(true)
		_G[bar.."Button1HornsRight"]:SetDesaturated(true)
		_G[bar.."Button1BossHorns"]:SetDesaturated(true)
	end
	_G[bar.."Button1JailersTower"]:SetVertexColor(abfGetLocalColor(ABFactionBars[vbar]["Top"]["ArtColor"]))
	_G[bar.."Button1HornsLeft"]:SetVertexColor(abfGetLocalColor(ABFactionBars[vbar]["Top"]["ArtColor"]))
	_G[bar.."Button1HornsRight"]:SetVertexColor(abfGetLocalColor(ABFactionBars[vbar]["Top"]["ArtColor"]))
	_G[bar.."Button1BossHorns"]:SetVertexColor(abfGetLocalColor(ABFactionBars[vbar]["Top"]["ArtColor"]))
end
