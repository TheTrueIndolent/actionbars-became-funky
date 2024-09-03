-- Show Winged Dragons --
function abfShowWingedDragons(self1, self2, parent)
	local abfHorizontal = parent:DoesSettingValueEqual(Enum.EditModeActionBarSetting.Orientation, Enum.ActionBarOrientation.Horizontal)
	local abfVertical = parent:DoesSettingValueEqual(Enum.EditModeActionBarSetting.Orientation, Enum.ActionBarOrientation.Vertical)
	if abfHorizontal then
		if parent:GetSettingValue(Enum.EditModeActionBarSetting.NumRows) == 1 then
			self1:Show()
			self2:Show()
			self1:SetSize(99, 81)
			self2:SetSize(99, 81)
		elseif parent:GetSettingValue(Enum.EditModeActionBarSetting.NumRows) == 2 then
			self1:Show()
			self2:Show()
			self1:SetSize(152, 125)
			self2:SetSize(152, 125)
		else
			self1:Hide()
			self2:Hide()
		end
	elseif abfVertical then
		self1:Hide()
		self2:Hide()
	end
end
-- Show Dragons --
function abfShowDragons(self1, self2, parent)
	local abfHorizontal = parent:DoesSettingValueEqual(Enum.EditModeActionBarSetting.Orientation, Enum.ActionBarOrientation.Horizontal)
	local abfVertical = parent:DoesSettingValueEqual(Enum.EditModeActionBarSetting.Orientation, Enum.ActionBarOrientation.Vertical)
	if abfHorizontal then
		if parent:GetSettingValue(Enum.EditModeActionBarSetting.NumRows) == 1 then
			self1:Show()
			self2:Show()
			self1:SetSize(80, 79)
			self2:SetSize(80, 79)
		elseif parent:GetSettingValue(Enum.EditModeActionBarSetting.NumRows) == 2 then
			self1:Show()
			self2:Show()
			self1:SetSize(145, 143)
			self2:SetSize(145, 143)
		else
			self1:Hide()
			self2:Hide()
		end
	elseif abfVertical then
		self1:Hide()
		self2:Hide()
	end
end
-- showing the saved art --
function abfSavedArtEdge(bar, self1, vbar)
	_G[bar.."Button1GryphonLeft"]:Hide()
	_G[bar.."Button1GryphonRight"]:Hide()
	_G[bar.."Button1WyvernLeft"]:Hide()
	_G[bar.."Button1WyvernRight"]:Hide()
	_G[bar.."Button1WingedDragonLeft"]:Hide()
	_G[bar.."Button1WingedDragonRight"]:Hide()
	_G[bar.."Button1DragonLeft"]:Hide()
	_G[bar.."Button1DragonRight"]:Hide()
	if ABFactionBars[vbar]["Edge"]["Art"] ~= "None" and ABFactionBars[vbar]["Edge"]["Art"] ~= "WingedDragon" and ABFactionBars[vbar]["Edge"]["Art"] ~= "Dragon" then
		_G[bar.."Button1"..ABFactionBars[vbar]["Edge"]["Art"].."Left"]:Show()
		_G[bar.."Button1"..ABFactionBars[vbar]["Edge"]["Art"].."Right"]:Show()
	elseif ABFactionBars[vbar]["Edge"]["Art"] == "WingedDragon" then
		abfShowWingedDragons(_G[bar.."Button1WingedDragonLeft"], _G[bar.."Button1WingedDragonRight"], self1)
		self1:HookScript("OnSizeChanged", function (self1) abfShowWingedDragons(_G[bar.."Button1WingedDragonLeft"], _G[bar.."Button1WingedDragonRight"], self1) end)
	elseif ABFactionBars[vbar]["Edge"]["Art"] == "Dragon" then
		abfShowDragons(_G[bar.."Button1DragonLeft"], _G[bar.."Button1DragonRight"], self1)
		self1:HookScript("OnSizeChanged", function (self1) abfShowDragons(_G[bar.."Button1DragonLeft"], _G[bar.."Button1DragonRight"], self1) end)
	end
end
-- showing the saved color --
function abfSavedColorEdge(bar, vbar)
	if ABFactionBars[vbar]["Edge"]["ArtColorOptions"] == "Default Color" then
		_G[bar.."Button1GryphonLeft"]:SetDesaturated(false)
		_G[bar.."Button1GryphonRight"]:SetDesaturated(false)
		_G[bar.."Button1WyvernLeft"]:SetDesaturated(false)
		_G[bar.."Button1WyvernRight"]:SetDesaturated(false)
		_G[bar.."Button1WingedDragonLeft"]:SetDesaturated(false)
		_G[bar.."Button1WingedDragonRight"]:SetDesaturated(false)
		_G[bar.."Button1DragonLeft"]:SetDesaturated(false)
		_G[bar.."Button1DragonRight"]:SetDesaturated(false)
	else
		_G[bar.."Button1GryphonLeft"]:SetDesaturated(true)
		_G[bar.."Button1GryphonRight"]:SetDesaturated(true)
		_G[bar.."Button1WyvernLeft"]:SetDesaturated(true)
		_G[bar.."Button1WyvernRight"]:SetDesaturated(true)
		_G[bar.."Button1WingedDragonLeft"]:SetDesaturated(true)
		_G[bar.."Button1WingedDragonRight"]:SetDesaturated(true)
		_G[bar.."Button1DragonLeft"]:SetDesaturated(true)
		_G[bar.."Button1DragonRight"]:SetDesaturated(true)
	end
	_G[bar.."Button1GryphonLeft"]:SetVertexColor(abfGetLocalColor(ABFactionBars[vbar]["Edge"]["ArtColor"]))
	_G[bar.."Button1GryphonRight"]:SetVertexColor(abfGetLocalColor(ABFactionBars[vbar]["Edge"]["ArtColor"]))
	_G[bar.."Button1WyvernLeft"]:SetVertexColor(abfGetLocalColor(ABFactionBars[vbar]["Edge"]["ArtColor"]))
	_G[bar.."Button1WyvernRight"]:SetVertexColor(abfGetLocalColor(ABFactionBars[vbar]["Edge"]["ArtColor"]))
	_G[bar.."Button1WingedDragonLeft"]:SetVertexColor(abfGetLocalColor(ABFactionBars[vbar]["Edge"]["ArtColor"]))
	_G[bar.."Button1WingedDragonRight"]:SetVertexColor(abfGetLocalColor(ABFactionBars[vbar]["Edge"]["ArtColor"]))
	_G[bar.."Button1DragonLeft"]:SetVertexColor(abfGetLocalColor(ABFactionBars[vbar]["Edge"]["ArtColor"]))
	_G[bar.."Button1DragonRight"]:SetVertexColor(abfGetLocalColor(ABFactionBars[vbar]["Edge"]["ArtColor"]))
end
