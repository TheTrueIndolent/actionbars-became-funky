-- Colors --
abfMainColor = CreateColorFromRGBAHexString("F0E68CFF")
abfHighColor = CreateColorFromRGBAHexString("FF8000FF")
abfNoMainColor = CreateColorFromRGBAHexString("F0E68C00")
abfNoHighColor = CreateColorFromRGBAHexString("FF800000")
-- function for showing the menu --
function abfShowMenu()
	if not InCombatLockdown() then
		if not abfOptions00:IsShown() then
			abfOptions00:Show()
		else
			abfOptions00:Hide()
		end
	else
		local abfTime = GameTime_GetTime(false)
		DEFAULT_CHAT_FRAME:AddMessage(abfTime.." |T"..C_AddOns.GetAddOnMetadata("ABF", "IconTexture")..":16:16|t ["..abfMainColor:WrapTextInColorCode(C_AddOns.GetAddOnMetadata("ABF", "Title")).."] While you are in combat, you can't do this!")
	end
end
RegisterNewSlashCommand(abfShowMenu, "abf", "actionbarbecamefunky")
-- Mini Map Button Functions --
AddonCompartmentFrame:RegisterAddon({
	text = abfMainColor:WrapTextInColorCode(C_AddOns.GetAddOnMetadata("ABF", "Title")),
	icon = C_AddOns.GetAddOnMetadata("ABF", "IconTexture"),
	notCheckable = true,
	func = function(button, menuInputData, menu)
		local buttonName = menuInputData.buttonName
		if buttonName == "LeftButton" then
			abfShowMenu()
		end
	end,
	funcOnEnter = function(button)
		MenuUtil.ShowTooltip(button, function(tooltip)
			tooltip:SetText("|T"..C_AddOns.GetAddOnMetadata("ABF", "IconTexture")..":16:16|t "..abfMainColor:WrapTextInColorCode(C_AddOns.GetAddOnMetadata("ABF", "Title")).."|nLeft Click: "..abfMainColor:WrapTextInColorCode("Open the main panel of settings!"))
		end)
	end,
	funcOnLeave = function(button)
		MenuUtil.HideTooltip(button)
	end,
})
-- functions for the buttons and popouts --
-- on enter --
function abfEnteringMenus(self)
	GameTooltip_ClearStatusBars(GameTooltip)
	GameTooltip:SetOwner(self, "ANCHOR_NONE")
	GameTooltip:ClearAllPoints()
	GameTooltip:SetPoint("RIGHT", self, "LEFT", 0, 0)
end
-- on leave --
function abfLeavingMenus()
	GameTooltip:Hide()
end
-- click on Pop Out --
function abfClickPopOut(var1, var2)
	var1:SetScript("OnClick", function(self, button, down)
		if button == "LeftButton" and down == false then
			if not var2:IsShown() then
				var2:Show()
				PlaySound(855, "Master")
			else
				var2:Hide()
			end
		end
	end)
end
-- function for local colors --
function abfGetLocalColor(self1)
	return self1.r, self1.g, self1.b, self1.a
end
-- for this add on only--
-- Mouse Wheel on Sliders --
function abfMouseWheelSlider(self, delta)
	if delta == 1 then
		PlaySound(858, "Master")
		self:SetValue(self:GetValue() + 1)
	elseif delta == -1 then
		PlaySound(858, "Master")
		self:SetValue(self:GetValue() - 1)
	end
end
-- creating the color picker --
function abfShowColorPicker(text, bar, text1, rule, text2)
	local oldR = ABFactionBars[text][text1][text2]["r"]
	local oldG = ABFactionBars[text][text1][text2]["g"]
	local oldB = ABFactionBars[text][text1][text2]["b"]
	local oldA = ABFactionBars[text][text1][text2]["a"]
	local function OnColorChanged()
		local newR, newG, newB = ColorPickerFrame:GetColorRGB()
		local newA = ColorPickerFrame:GetColorAlpha()
		ABFactionBars[text][text1][text2] = CreateColor(newR, newG, newB, newA)
		rule(text, bar)
	end
	local function OnCancel()
		ABFactionBars[text][text1][text2] = CreateColor(oldR, oldG, oldB, oldA)
		rule(text, bar)
	end
	local options = {
		swatchFunc = OnColorChanged,
		opacityFunc = OnColorChanged,
		cancelFunc = OnCancel,
		hasOpacity = true,
		opacity = oldA,
		r = oldR,
		g = oldG,
		b = oldB,
	}
	ColorPickerFrame:SetupColorPickerAndShow(options)
end
-- creating the color picker for CD, Border, Normal Texture --
function abfShowColorPickerCD(text, bar, text1, rule)
	local oldR = ABFactionBars[text][text1]["r"]
	local oldG = ABFactionBars[text][text1]["g"]
	local oldB = ABFactionBars[text][text1]["b"]
	local oldA = ABFactionBars[text][text1]["a"]
	local function OnColorChanged()
		local newR, newG, newB = ColorPickerFrame:GetColorRGB()
		local newA = ColorPickerFrame:GetColorAlpha()
		ABFactionBars[text][text1] = CreateColor(newR, newG, newB, newA)
		rule(text, bar)
	end
	local function OnCancel()
		ABFactionBars[text][text1] = CreateColor(oldR, oldG, oldB, oldA)
		rule(text, bar)
	end
	local options = {
		swatchFunc = OnColorChanged,
		opacityFunc = OnColorChanged,
		cancelFunc = OnCancel,
		hasOpacity = true,
		opacity = oldA,
		r = oldR,
		g = oldG,
		b = oldB,
	}
	ColorPickerFrame:SetupColorPickerAndShow(options)
end
