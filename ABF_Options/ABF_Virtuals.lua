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
