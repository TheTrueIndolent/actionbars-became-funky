-- taking of the box --
abfOptions5Box1.TitleTxt:SetText("Slot Art & Art Color")
-- takeing care the rest boxes --
for i = 2, 4, 1 do
	_G["abfOptions5Box"..i]:SetPoint("TOP", _G["abfOptions5Box"..i-1], "BOTTOM", 0, 0)
end
abfOptions5Box2.TitleTxt:SetText("Edge Art & Art Color|nEdge Animation & Animation Color")
abfOptions5Box3.TitleTxt:SetText("Top Art & Art Color|nTop Animation & Animation Color")
abfOptions5Box4.TitleTxt:SetText("Bottom Art & Art Color")
-- creating the color picker --
local function ShowColorPicker(text, com)
	local function OnColorChanged()
		local newR, newG, newB = ColorPickerFrame:GetColorRGB()
		local newA = ColorPickerFrame:GetColorAlpha()
		ABFactionBars["Bar5"][text]["ArtColor"] = CreateColor(newR, newG, newB, newA)
		com("MultiBarLeft", "Bar5")
	end
	local function OnCancel()
		ABFactionBars["Bar5"][text]["ArtColor"] = CreateColor(1, 1, 1, 1)
		com("MultiBarLeft", "Bar5")
	end
	local options = {
		swatchFunc = OnColorChanged,
		opacityFunc = OnColorChanged,
		cancelFunc = OnCancel,
		hasOpacity = true,
		opacity = ABFactionBars["Bar5"][text]["ArtColor"]["a"],
		r = ABFactionBars["Bar5"][text]["ArtColor"]["r"],
		g = ABFactionBars["Bar5"][text]["ArtColor"]["g"],
		b = ABFactionBars["Bar5"][text]["ArtColor"]["b"],
	}
	ColorPickerFrame:SetupColorPickerAndShow(options)
end
-- creating the color picker for Animation --
local function ShowColorPickerForAnimation(text, com)
	local function OnColorChanged()
		local newR, newG, newB = ColorPickerFrame:GetColorRGB()
		local newA = ColorPickerFrame:GetColorAlpha()
		ABFactionBars["Bar5"][text]["AnimationColor"] = CreateColor(newR, newG, newB, newA)
		com("Bar5")
	end
	local function OnCancel()
		ABFactionBars["Bar5"][text]["AnimationColor"] = CreateColor(1, 1, 1, 1)
		com("Bar5")
	end
	local options = {
		swatchFunc = OnColorChanged,
		opacityFunc = OnColorChanged,
		cancelFunc = OnCancel,
		hasOpacity = true,
		opacity = ABFactionBars["Bar5"][text]["AnimationColor"]["a"],
		r = ABFactionBars["Bar5"][text]["AnimationColor"]["r"],
		g = ABFactionBars["Bar5"][text]["AnimationColor"]["g"],
		b = ABFactionBars["Bar5"][text]["AnimationColor"]["b"],
	}
	ColorPickerFrame:SetupColorPickerAndShow(options)
end
-- Checking the Saved Variables --
local function CheckSavedVariables()
-- Box 1, Pop out 1 --
	abfOptions5Box1PopOut1.Text:SetText(ABFactionBars["Bar5"]["Slot"]["Art"])
-- Box 1, Pop out 2 --
	abfOptions5Box1PopOut2.Text:SetText(ABFactionBars["Bar5"]["Slot"]["ArtColorOptions"])
-- Box 2, Pop out 1 --
	abfOptions5Box2PopOut1.Text:SetText(ABFactionBars["Bar5"]["Edge"]["Art"])
-- Box 2, Pop out 2 --
	abfOptions5Box2PopOut2.Text:SetText(ABFactionBars["Bar5"]["Edge"]["ArtColorOptions"])
-- Box 2, Pop out 3 --
	abfOptions5Box2PopOut3.Text:SetText(ABFactionBars["Bar5"]["Edge"]["Animation"])
-- Box 2, Pop out 4 --
	abfOptions5Box2PopOut4.Text:SetText(ABFactionBars["Bar5"]["Edge"]["AnimationColorOptions"])
-- Box 3, Pop out 1 --
	abfOptions5Box3PopOut1.Text:SetText(ABFactionBars["Bar5"]["Top"]["Art"])
-- Box 3, Pop out 2 --
	abfOptions5Box3PopOut2.Text:SetText(ABFactionBars["Bar5"]["Top"]["ArtColorOptions"])
-- Box 3, Pop out 3 --
	abfOptions5Box3PopOut3.Text:SetText(ABFactionBars["Bar5"]["Top"]["Animation"])
-- Box 3, Pop out 4 --
	abfOptions5Box3PopOut4.Text:SetText(ABFactionBars["Bar5"]["Top"]["AnimationColorOptions"])
-- Box 4, Pop out 1 --
	abfOptions5Box4PopOut1.Text:SetText(ABFactionBars["Bar5"]["Bottom"]["Art"])
-- Box 4, Pop out 2 --
	abfOptions5Box4PopOut2.Text:SetText(ABFactionBars["Bar5"]["Bottom"]["ArtColorOptions"])
end
-- Box 1 Slot Art --
-- pop out 1 Slot Art Choice --
-- enter --
abfOptions5Box1PopOut1:SetScript("OnEnter", function(self)
	abfEnteringMenus(self)
	GameTooltip:SetText("|T"..C_AddOns.GetAddOnMetadata("ABF", "IconTexture")..":16|t"..abfMainColor:WrapTextInColorCode(C_AddOns.GetAddOnMetadata("ABF", "Title")).."|nChoose the Slot Art for|nthe Action Bar 5") 
end)
-- leave --
abfOptions5Box1PopOut1:SetScript("OnLeave", abfLeavingMenus)
-- drop down --
abfClickPopOut(abfOptions5Box1PopOut1, abfOptions5Box1PopOut1Choice0)
-- sort & naming & clicking --
abfOptions5Box1PopOut1Choice0.Text:SetText("None")
abfOptions5Box1PopOut1Choice0:HookScript("OnClick", function(self, button, down)
	if button == "LeftButton" and down == false then
		ABFactionBars["Bar5"]["Slot"]["Art"] = self.Text:GetText()
		abfOptions5Box1PopOut1.Text:SetText(self:GetText())
		abfOptions5Box1PopOut1Choice0:Hide()
		abfSavedArtSlot("MultiBarLeft", "Bar5")
	end
end)
for i = 1, 6, 1 do
	_G["abfOptions5Box1PopOut1Choice"..i]:SetParent(abfOptions5Box1PopOut1Choice0)
	_G["abfOptions5Box1PopOut1Choice"..i]:SetPoint("TOP", _G["abfOptions5Box1PopOut1Choice"..i-1], "BOTTOM", 0, 0)
	_G["abfOptions5Box1PopOut1Choice"..i]:HookScript("OnClick", function(self, button, down)
		if button == "LeftButton" and down == false then
			ABFactionBars["Bar5"]["Slot"]["Art"] = self.Text:GetText()
			abfOptions5Box1PopOut1.Text:SetText(self:GetText())
			abfOptions5Box1PopOut1Choice0:Hide()
			abfSavedArtSlot("MultiBarLeft", "Bar5")
		end
	end)
-- on leave --
	_G["abfOptions5Box1PopOut1Choice"..i]:HookScript("OnLeave", function(self) abfOptions5Box1PopOut1.Example:Hide() end)
end
-- entering the pop out buttons --
-- choice 1 --
abfOptions5Box1PopOut1Choice1:SetScript("OnEnter", function(self)
	abfOptions5Box1PopOut1.Example:SetAtlas("UI-HUD-ActionBar-IconFrame-Slot", false)
	abfOptions5Box1PopOut1.Example:Show()
end)
-- choice 2 --
abfOptions5Box1PopOut1Choice2:SetScript("OnEnter", function(self)
	abfOptions5Box1PopOut1.Example:SetAtlas("socket-prismatic-background", false)
	abfOptions5Box1PopOut1.Example:Show()
end)
-- choice 3 --
abfOptions5Box1PopOut1Choice3:SetScript("OnEnter", function(self)
	abfOptions5Box1PopOut1.Example:SetAtlas("CovenantSanctum-Text-Border-Nightfae", false)
	abfOptions5Box1PopOut1.Example:Show()
end)
-- choice 4 --
abfOptions5Box1PopOut1Choice4:SetScript("OnEnter", function(self)
	abfOptions5Box1PopOut1.Example:SetAtlas("CovenantSanctum-Text-Border-Kyrian", false)
	abfOptions5Box1PopOut1.Example:Show()
end)
-- choice 5 --
abfOptions5Box1PopOut1Choice5:SetScript("OnEnter", function(self)
	abfOptions5Box1PopOut1.Example:SetAtlas("CovenantSanctum-Text-Border-Necrolord", false)
	abfOptions5Box1PopOut1.Example:Show()
end)
-- choice 6 --
abfOptions5Box1PopOut1Choice6:SetScript("OnEnter", function(self)
	abfOptions5Box1PopOut1.Example:SetAtlas("CovenantSanctum-Text-Border-Venthyr", false)
	abfOptions5Box1PopOut1.Example:Show()
end)
-- pop out 2 Slot Art Color --
-- enter --
abfOptions5Box1PopOut2:SetScript("OnEnter", function(self)
	abfEnteringMenus(self)
	GameTooltip:SetText("|T"..C_AddOns.GetAddOnMetadata("ABF", "IconTexture")..":16|t"..abfMainColor:WrapTextInColorCode(C_AddOns.GetAddOnMetadata("ABF", "Title")).."|nChoose the color for|nthe Slot Art") 
end)
-- leave --
abfOptions5Box1PopOut2:SetScript("OnLeave", abfLeavingMenus)
-- drop down --
abfClickPopOut(abfOptions5Box1PopOut2, abfOptions5Box1PopOut2Choice0)
-- on click choice 0 --
abfOptions5Box1PopOut2Choice0.Text:SetText("Default Color")
abfOptions5Box1PopOut2Choice0:HookScript("OnClick", function(self, button, down)
	if button == "LeftButton" and down == false then
		ABFactionBars["Bar5"]["Slot"]["ArtColor"] = {r = 1, g = 1, b = 1, a = 1,}
		ABFactionBars["Bar5"]["Slot"]["ArtColorOptions"] = self:GetText()
		abfOptions5Box1PopOut2.Text:SetText(self:GetText())
		abfOptions5Box1PopOut2Choice0:Hide()
		abfSavedColorSlot("MultiBarLeft", "Bar5")
	end
end)
-- on click choice 1 --
abfOptions5Box1PopOut2Choice1:SetParent(abfOptions5Box1PopOut2Choice0)
abfOptions5Box1PopOut2Choice1:SetPoint("TOP", abfOptions5Box1PopOut2Choice0, "BOTTOM", 0, 0)
abfOptions5Box1PopOut2Choice1.Text:SetText("Custom Color")
abfOptions5Box1PopOut2Choice1:HookScript("OnClick", function(self, button, down)
	if button == "LeftButton" and down == false then
		ShowColorPicker("Slot", abfSavedColorSlot)
		ABFactionBars["Bar5"]["Slot"]["ArtColorOptions"] = self:GetText()
		abfOptions5Box1PopOut2.Text:SetText(self:GetText())
		abfOptions5Box1PopOut2Choice0:Hide()
	end
end)
-- Box 2 Edge Art --
-- pop out 1 Edge Art Choice --
-- enter --
abfOptions5Box2PopOut1:SetScript("OnEnter", function(self)
	abfEnteringMenus(self)
	GameTooltip:SetText("|T"..C_AddOns.GetAddOnMetadata("ABF", "IconTexture")..":16|t"..abfMainColor:WrapTextInColorCode(C_AddOns.GetAddOnMetadata("ABF", "Title")).."|nChoose the Edge Art for|nthe Action Bar 5") 
end)
-- leave --
abfOptions5Box2PopOut1:SetScript("OnLeave", abfLeavingMenus)
-- drop down --
abfClickPopOut(abfOptions5Box2PopOut1, abfOptions5Box2PopOut1Choice0)
-- sort & naming & clicking --
abfOptions5Box2PopOut1Choice0.Text:SetText("None")
abfOptions5Box2PopOut1Choice0:HookScript("OnClick", function(self, button, down)
	if button == "LeftButton" and down == false then
		ABFactionBars["Bar5"]["Edge"]["Art"] = self.Text:GetText()
		abfOptions5Box2PopOut1.Text:SetText(self:GetText())
		abfOptions5Box2PopOut1Choice0:Hide()
		abfSavedArtEdge("MultiBarLeft", MultiBarLeft, "Bar5")
	end
end)
for i = 1, 4, 1 do
	_G["abfOptions5Box2PopOut1Choice"..i]:SetParent(abfOptions5Box2PopOut1Choice0)
	_G["abfOptions5Box2PopOut1Choice"..i]:SetPoint("TOP", _G["abfOptions5Box2PopOut1Choice"..i-1], "BOTTOM", 0, 0)
	_G["abfOptions5Box2PopOut1Choice"..i]:HookScript("OnClick", function(self, button, down)
		if button == "LeftButton" and down == false then
			ABFactionBars["Bar5"]["Edge"]["Art"] = self.Text:GetText()
			abfOptions5Box2PopOut1.Text:SetText(self:GetText())
			abfOptions5Box2PopOut1Choice0:Hide()
			abfSavedArtEdge("MultiBarLeft", MultiBarLeft, "Bar5")
		end
	end)
-- on leave --
	_G["abfOptions5Box2PopOut1Choice"..i]:HookScript("OnLeave", function(self) abfOptions5Box2PopOut1.Example:Hide() end)
end
-- entering the pop out buttons --
-- choice 1 --
abfOptions5Box2PopOut1Choice1:SetScript("OnEnter", function(self)
	abfOptions5Box2PopOut1.Example:SetAtlas("UI-HUD-ActionBar-Gryphon-Right", false)
	abfOptions5Box2PopOut1.Example:Show()
end)
-- choice 2 --
abfOptions5Box2PopOut1Choice2:SetScript("OnEnter", function(self)
	abfOptions5Box2PopOut1.Example:SetAtlas("UI-HUD-ActionBar-Wyvern-Right", false)
	abfOptions5Box2PopOut1.Example:Show()
end)
-- choice 3 --
abfOptions5Box2PopOut1Choice3:SetScript("OnEnter", function(self)
	abfOptions5Box2PopOut1.Example:SetAtlas("UI-HUD-UnitFrame-Target-PortraitOn-Boss-Gold-Winged", false)
	abfOptions5Box2PopOut1.Example:Show()
end)
-- choice 4 --
abfOptions5Box2PopOut1Choice4:SetScript("OnEnter", function(self)
	abfOptions5Box2PopOut1.Example:SetAtlas("UI-HUD-UnitFrame-Target-PortraitOn-Boss-Gold", false)
	abfOptions5Box2PopOut1.Example:Show()
end)
-- pop out 2 Edge Art Color --
-- enter --
abfOptions5Box2PopOut2:SetScript("OnEnter", function(self)
	abfEnteringMenus(self)
	GameTooltip:SetText("|T"..C_AddOns.GetAddOnMetadata("ABF", "IconTexture")..":16|t"..abfMainColor:WrapTextInColorCode(C_AddOns.GetAddOnMetadata("ABF", "Title")).."|nChoose the color for|nthe Edge Art") 
end)
-- leave --
abfOptions5Box2PopOut2:SetScript("OnLeave", abfLeavingMenus)
-- drop down --
abfClickPopOut(abfOptions5Box2PopOut2, abfOptions5Box2PopOut2Choice0)
-- on click choice 0 --
abfOptions5Box2PopOut2Choice0.Text:SetText("Default Color")
abfOptions5Box2PopOut2Choice0:HookScript("OnClick", function(self, button, down)
	if button == "LeftButton" and down == false then
		ABFactionBars["Bar5"]["Edge"]["ArtColor"] = {r = 1, g = 1, b = 1, a = 1,}
		ABFactionBars["Bar5"]["Edge"]["ArtColorOptions"] = self:GetText()
		abfOptions5Box2PopOut2.Text:SetText(self:GetText())
		abfOptions5Box2PopOut2Choice0:Hide()
		abfSavedColorEdge("MultiBarLeft", "Bar5")
	end
end)
-- on click choice 1 --
abfOptions5Box2PopOut2Choice1:SetParent(abfOptions5Box2PopOut2Choice0)
abfOptions5Box2PopOut2Choice1:SetPoint("TOP", abfOptions5Box2PopOut2Choice0, "BOTTOM", 0, 0)
abfOptions5Box2PopOut2Choice1.Text:SetText("Custom Color")
abfOptions5Box2PopOut2Choice1:HookScript("OnClick", function(self, button, down)
	if button == "LeftButton" and down == false then
		ShowColorPicker("Edge", abfSavedColorEdge)
		ABFactionBars["Bar5"]["Edge"]["ArtColorOptions"] = self:GetText()
		abfOptions5Box2PopOut2.Text:SetText(self:GetText())
		abfOptions5Box2PopOut2Choice0:Hide()
	end
end)
-- pop out 3 Edge Art Animation --
-- enter --
abfOptions5Box2PopOut3:SetScript("OnEnter", function(self)
	abfEnteringMenus(self)
	GameTooltip:SetText("|T"..C_AddOns.GetAddOnMetadata("ABF", "IconTexture")..":16|t"..abfMainColor:WrapTextInColorCode(C_AddOns.GetAddOnMetadata("ABF", "Title")).."|nChoose an animation.|nNote: For the option Gryphon/Wyvern.|nPlease choose Gryphon or Wyvern at Edge Art.|nMore will come soon!")
end)
-- leave --
abfOptions5Box2PopOut3:SetScript("OnLeave", abfLeavingMenus)
-- drop down --
abfClickPopOut(abfOptions5Box2PopOut3, abfOptions5Box2PopOut3Choice0)
-- on click choice 0 --
abfOptions5Box2PopOut3Choice0.Text:SetText("None")
abfOptions5Box2PopOut3Choice0:HookScript("OnClick", function(self, button, down)
	if button == "LeftButton" and down == false then
		ABFactionBars["Bar5"]["Edge"]["Animation"] = self:GetText()
		abfOptions5Box2PopOut3.Text:SetText(self:GetText())
		abfOptions5Box2PopOut3Choice0:Hide()
		abfSavedAnimationEdgeArt("MultiBarLeft", "Bar5")
	end
end)
-- on click choice 1 --
abfOptions5Box2PopOut3Choice1:SetParent(abfOptions5Box2PopOut3Choice0)
abfOptions5Box2PopOut3Choice1:SetPoint("TOP", abfOptions5Box2PopOut3Choice0, "BOTTOM", 0, 0)
abfOptions5Box2PopOut3Choice1.Text:SetText("Gryphon/Wyvern")
abfOptions5Box2PopOut3Choice1:HookScript("OnClick", function(self, button, down)
	if button == "LeftButton" and down == false then
		ABFactionBars["Bar5"]["Edge"]["Animation"] = self:GetText()
		abfOptions5Box2PopOut3.Text:SetText(self:GetText())
		abfSavedAnimationEdgeArt("MultiBarLeft", "Bar5")
	end
end)
-- pop out 4 Edge Art Animation Color --
-- enter --
abfOptions5Box2PopOut4:SetScript("OnEnter", function(self)
	abfEnteringMenus(self)
	GameTooltip:SetText("|T"..C_AddOns.GetAddOnMetadata("ABF", "IconTexture")..":16|t"..abfMainColor:WrapTextInColorCode(C_AddOns.GetAddOnMetadata("ABF", "Title")).."|nChoose the color for|nthe Animation") 
end)
-- leave --
abfOptions5Box2PopOut4:SetScript("OnLeave", abfLeavingMenus)
-- drop down --
abfClickPopOut(abfOptions5Box2PopOut4, abfOptions5Box2PopOut4Choice0)
-- on click choice 0 --
abfOptions5Box2PopOut4Choice0.Text:SetText("Default Color")
abfOptions5Box2PopOut4Choice0:HookScript("OnClick", function(self, button, down)
	if button == "LeftButton" and down == false then
		ABFactionBars["Bar5"]["Edge"]["AnimationColor"] = {r = 1, g = 1, b = 1, a = 1,}
		ABFactionBars["Bar5"]["Edge"]["AnimationColorOptions"] = self:GetText()
		abfOptions5Box2PopOut4.Text:SetText(self:GetText())
		abfOptions5Box2PopOut4Choice0:Hide()
		abfSavedAnimationEdgeColor("Bar5")
	end
end)
-- on click choice 1 --
abfOptions5Box2PopOut4Choice1:SetParent(abfOptions5Box2PopOut4Choice0)
abfOptions5Box2PopOut4Choice1:SetPoint("TOP", abfOptions5Box2PopOut4Choice0, "BOTTOM", 0, 0)
abfOptions5Box2PopOut4Choice1.Text:SetText("Custom Color")
abfOptions5Box2PopOut4Choice1:HookScript("OnClick", function(self, button, down)
	if button == "LeftButton" and down == false then
		ShowColorPickerForAnimation("Edge", abfSavedAnimationEdgeColor)
		ABFactionBars["Bar5"]["Edge"]["AnimationColorOptions"] = self:GetText()
		abfOptions5Box2PopOut4.Text:SetText(self:GetText())
		abfOptions5Box2PopOut4Choice0:Hide()
	end
end)
-- Box 3 Top Art --
-- pop out 1 Top Art choice --
-- enter --
abfOptions5Box3PopOut1:SetScript("OnEnter", function(self)
	abfEnteringMenus(self)
	GameTooltip:SetText("|T"..C_AddOns.GetAddOnMetadata("ABF", "IconTexture")..":16|t"..abfMainColor:WrapTextInColorCode(C_AddOns.GetAddOnMetadata("ABF", "Title")).."|nChoose the Top Art for|nthe Action Bar 5") 
end)
-- leave --
abfOptions5Box3PopOut1:SetScript("OnLeave", abfLeavingMenus)
-- drop down --
abfClickPopOut(abfOptions5Box3PopOut1, abfOptions5Box3PopOut1Choice0)
-- sort & naming & clicking --
abfOptions5Box3PopOut1Choice0.Text:SetText("None")
abfOptions5Box3PopOut1Choice0:HookScript("OnClick", function(self, button, down)
	if button == "LeftButton" and down == false then
		ABFactionBars["Bar5"]["Top"]["Art"] = self.Text:GetText()
		abfOptions5Box3PopOut1.Text:SetText(self:GetText())
		abfOptions5Box3PopOut1Choice0:Hide()
		abfSavedArtTop("MultiBarLeft", "Bar5")
	end
end)
for i = 1, 2, 1 do
	_G["abfOptions5Box3PopOut1Choice"..i]:SetParent(abfOptions5Box3PopOut1Choice0)
	_G["abfOptions5Box3PopOut1Choice"..i]:SetPoint("TOP", _G["abfOptions5Box3PopOut1Choice"..i-1], "BOTTOM", 0, 0)
	_G["abfOptions5Box3PopOut1Choice"..i]:HookScript("OnClick", function(self, button, down)
		if button == "LeftButton" and down == false then
			ABFactionBars["Bar5"]["Top"]["Art"] = self.Text:GetText()
			abfOptions5Box3PopOut1.Text:SetText(self:GetText())
			abfOptions5Box3PopOut1Choice0:Hide()
			abfSavedArtTop("MultiBarLeft", "Bar5")
		end
	end)
-- on leave --
	_G["abfOptions5Box3PopOut1Choice"..i]:HookScript("OnLeave", function(self) abfOptions5Box3PopOut1.Example:Hide() abfOptions5Box3PopOut1.Example1:Hide() end)
end
-- entering the pop out buttons --
-- choice 1 --
abfOptions5Box3PopOut1Choice1:SetScript("OnEnter", function(self)
	abfOptions5Box3PopOut1.Example:SetAtlas("jailerstower-score-topper", false)
	abfOptions5Box3PopOut1.Example:ClearAllPoints()
	abfOptions5Box3PopOut1.Example:SetPoint("RIGHT", abfOptions5Box3PopOut1, "LEFT", 64, 0)
	abfOptions5Box3PopOut1.Example:SetSize(315, 48)
	abfOptions5Box3PopOut1.Example:Show()
end)
-- choice 2 --
abfOptions5Box3PopOut1Choice2:SetScript("OnEnter", function(self)
	abfOptions5Box3PopOut1.Example:SetAtlas("BossBanner-RightFillagree", false)
	abfOptions5Box3PopOut1.Example:ClearAllPoints()
	abfOptions5Box3PopOut1.Example:SetPoint("RIGHT", abfOptions5Box3PopOut1, "LEFT", 0, 16)
	abfOptions5Box3PopOut1.Example:SetSize(48, 48)
	abfOptions5Box3PopOut1.Example:Show()
	abfOptions5Box3PopOut1.Example1:SetAtlas("BossBanner-LeftFillagree", false)
	abfOptions5Box3PopOut1.Example1:Show()
end)
-- pop out 2 Top Art Color --
-- enter --
abfOptions5Box3PopOut2:SetScript("OnEnter", function(self)
	abfEnteringMenus(self)
	GameTooltip:SetText("|T"..C_AddOns.GetAddOnMetadata("ABF", "IconTexture")..":16|t"..abfMainColor:WrapTextInColorCode(C_AddOns.GetAddOnMetadata("ABF", "Title")).."|nChoose the color for|nthe Top Art") 
end)
-- leave --
abfOptions5Box3PopOut2:SetScript("OnLeave", abfLeavingMenus)
-- drop down --
abfClickPopOut(abfOptions5Box3PopOut2, abfOptions5Box3PopOut2Choice0)
-- on click choice 0 --
abfOptions5Box3PopOut2Choice0.Text:SetText("Default Color")
abfOptions5Box3PopOut2Choice0:HookScript("OnClick", function(self, button, down)
	if button == "LeftButton" and down == false then
		ABFactionBars["Bar5"]["Top"]["ArtColor"] = {r = 1, g = 1, b = 1, a = 1,}
		ABFactionBars["Bar5"]["Top"]["ArtColorOptions"] = self:GetText()
		abfOptions5Box3PopOut2.Text:SetText(self:GetText())
		abfOptions5Box3PopOut2Choice0:Hide()
		abfSavedColorTop("MultiBarLeft", "Bar5")
	end
end)
-- on click choice 1 --
abfOptions5Box3PopOut2Choice1:SetParent(abfOptions5Box3PopOut2Choice0)
abfOptions5Box3PopOut2Choice1:SetPoint("TOP", abfOptions5Box3PopOut2Choice0, "BOTTOM", 0, 0)
abfOptions5Box3PopOut2Choice1.Text:SetText("Custom Color")
abfOptions5Box3PopOut2Choice1:HookScript("OnClick", function(self, button, down)
	if button == "LeftButton" and down == false then
		ShowColorPicker("Top", abfSavedColorTop)
		ABFactionBars["Bar5"]["Top"]["ArtColorOptions"] = self:GetText()
		abfOptions5Box3PopOut2.Text:SetText(self:GetText())
		abfOptions5Box3PopOut2Choice0:Hide()
	end
end)
-- pop out 3 Top Art Animation --
-- enter --
abfOptions5Box3PopOut3:SetScript("OnEnter", function(self)
	abfEnteringMenus(self)
	GameTooltip:SetText("|T"..C_AddOns.GetAddOnMetadata("ABF", "IconTexture")..":16|t"..abfMainColor:WrapTextInColorCode(C_AddOns.GetAddOnMetadata("ABF", "Title")).."|nDo you want the animation for|nthe Top Art to be visible?|nNote: There is only one animation.|nMore will come soon!")
end)
-- leave --
abfOptions5Box3PopOut3:SetScript("OnLeave", abfLeavingMenus)
-- drop down --
abfClickPopOut(abfOptions5Box3PopOut3, abfOptions5Box3PopOut3Choice0)
-- on click choice 0 --
abfOptions5Box3PopOut3Choice0.Text:SetText("None")
abfOptions5Box3PopOut3Choice0:HookScript("OnClick", function(self, button, down)
	if button == "LeftButton" and down == false then
		ABFactionBars["Bar5"]["Top"]["Animation"] = self:GetText()
		abfOptions5Box3PopOut3.Text:SetText(self:GetText())
		abfOptions5Box3PopOut3Choice0:Hide()
		abfSavedAnimationTopArt("MultiBarLeft", "Bar5")
	end
end)
-- on click choice 1 --
abfOptions5Box3PopOut3Choice1:SetParent(abfOptions5Box3PopOut3Choice0)
abfOptions5Box3PopOut3Choice1:SetPoint("TOP", abfOptions5Box3PopOut3Choice0, "BOTTOM", 0, 0)
abfOptions5Box3PopOut3Choice1.Text:SetText("MissionLine")
abfOptions5Box3PopOut3Choice1:HookScript("OnClick", function(self, button, down)
	if button == "LeftButton" and down == false then
		ABFactionBars["Bar5"]["Top"]["Animation"] = self:GetText()
		abfOptions5Box3PopOut3.Text:SetText(self:GetText())
		abfOptions5Box3PopOut3Choice0:Hide()
		abfSavedAnimationTopArt("MultiBarLeft", "Bar5")
	end
end)
-- pop out 4 Top Art Animation Color --
-- enter --
abfOptions5Box3PopOut4:SetScript("OnEnter", function(self)
	abfEnteringMenus(self)
	GameTooltip:SetText("|T"..C_AddOns.GetAddOnMetadata("ABF", "IconTexture")..":16|t"..abfMainColor:WrapTextInColorCode(C_AddOns.GetAddOnMetadata("ABF", "Title")).."|nChoose the color for|nthe Animation") 
end)
-- leave --
abfOptions5Box3PopOut4:SetScript("OnLeave", abfLeavingMenus)
-- drop down --
abfClickPopOut(abfOptions5Box3PopOut4, abfOptions5Box3PopOut4Choice0)
-- on click choice 0 --
abfOptions5Box3PopOut4Choice0.Text:SetText("Default Color")
abfOptions5Box3PopOut4Choice0:HookScript("OnClick", function(self, button, down)
	if button == "LeftButton" and down == false then
		ABFactionBars["Bar5"]["Top"]["AnimationColor"] = {r = 1, g = 1, b = 1, a = 1,}
		ABFactionBars["Bar5"]["Top"]["AnimationColorOptions"] = self:GetText()
		abfOptions5Box3PopOut4.Text:SetText(self:GetText())
		abfOptions5Box3PopOut4Choice0:Hide()
		abfSavedAnimationTopColor("Bar5")
	end
end)
-- on click choice 1 --
abfOptions5Box3PopOut4Choice1:SetParent(abfOptions5Box3PopOut4Choice0)
abfOptions5Box3PopOut4Choice1:SetPoint("TOP", abfOptions5Box3PopOut4Choice0, "BOTTOM", 0, 0)
abfOptions5Box3PopOut4Choice1.Text:SetText("Custom Color")
abfOptions5Box3PopOut4Choice1:HookScript("OnClick", function(self, button, down)
	if button == "LeftButton" and down == false then
		ShowColorPickerForAnimation("Top", abfSavedAnimationTopColor)
		ABFactionBars["Bar5"]["Top"]["AnimationColorOptions"] = self:GetText()
		abfOptions5Box3PopOut4.Text:SetText(self:GetText())
		abfOptions5Box3PopOut4Choice0:Hide()
	end
end)
-- Box 4 Bottom Art --
-- pop out 1 Bottom Art choice --
-- enter --
abfOptions5Box4PopOut1:SetScript("OnEnter", function(self)
	abfEnteringMenus(self)
	GameTooltip:SetText("|T"..C_AddOns.GetAddOnMetadata("ABF", "IconTexture")..":16|t"..abfMainColor:WrapTextInColorCode(C_AddOns.GetAddOnMetadata("ABF", "Title")).."|nChoose the Bottom Art for|nthe Action Bar 5") 
end)
-- leave --
abfOptions5Box4PopOut1:SetScript("OnLeave", abfLeavingMenus)
-- drop down --
abfClickPopOut(abfOptions5Box4PopOut1, abfOptions5Box4PopOut1Choice0)
-- sort & naming & clicking --
abfOptions5Box4PopOut1Choice0.Text:SetText("None")
abfOptions5Box4PopOut1Choice0:HookScript("OnClick", function(self, button, down)
	if button == "LeftButton" and down == false then
		ABFactionBars["Bar5"]["Bottom"]["Art"] = self.Text:GetText()
		abfOptions5Box4PopOut1.Text:SetText(self:GetText())
		abfOptions5Box4PopOut1Choice0:Hide()
		abfSavedArtBottom("MultiBarLeft", "Bar5")
	end
end)
for i = 1, 2, 1 do
	_G["abfOptions5Box4PopOut1Choice"..i]:SetParent(abfOptions5Box4PopOut1Choice0)
	_G["abfOptions5Box4PopOut1Choice"..i]:SetPoint("TOP", _G["abfOptions5Box4PopOut1Choice"..i-1], "BOTTOM", 0, 0)
	_G["abfOptions5Box4PopOut1Choice"..i]:HookScript("OnClick", function(self, button, down)
		if button == "LeftButton" and down == false then
			ABFactionBars["Bar5"]["Bottom"]["Art"] = self.Text:GetText()
			abfOptions5Box4PopOut1.Text:SetText(self:GetText())
			abfOptions5Box4PopOut1Choice0:Hide()
			abfSavedArtBottom("MultiBarLeft", "Bar5")
		end
	end)
-- on leave --
	_G["abfOptions5Box4PopOut1Choice"..i]:HookScript("OnLeave", function(self) abfOptions5Box4PopOut1.Example:Hide() end)
end
-- entering the pop out buttons --
-- choice 1 --
abfOptions5Box4PopOut1Choice1:SetScript("OnEnter", function(self)
	abfOptions5Box4PopOut1.Example:SetAtlas("UI-Achievement-Border-7", false)
	abfOptions5Box4PopOut1.Example:Show()
end)
-- choice 2 --
abfOptions5Box4PopOut1Choice2:SetScript("OnEnter", function(self)
	abfOptions5Box4PopOut1.Example:SetAtlas("AftLevelup-SoftCloud", false)
	abfOptions5Box4PopOut1.Example:Show()
end)
-- pop out 2 Bottom Art Color --
-- enter --
abfOptions5Box4PopOut2:SetScript("OnEnter", function(self)
	abfEnteringMenus(self)
	GameTooltip:SetText("|T"..C_AddOns.GetAddOnMetadata("ABF", "IconTexture")..":16|t"..abfMainColor:WrapTextInColorCode(C_AddOns.GetAddOnMetadata("ABF", "Title")).."|nChoose the color for|nthe Bottom Art") 
end)
-- leave --
abfOptions5Box4PopOut2:SetScript("OnLeave", abfLeavingMenus)
-- drop down --
abfClickPopOut(abfOptions5Box4PopOut2, abfOptions5Box4PopOut2Choice0)
-- on click choice 0 --
abfOptions5Box4PopOut2Choice0.Text:SetText("Default Color")
abfOptions5Box4PopOut2Choice0:HookScript("OnClick", function(self, button, down)
	if button == "LeftButton" and down == false then
		ABFactionBars["Bar5"]["Bottom"]["ArtColor"] = {r = 1, g = 1, b = 1, a = 1,}
		ABFactionBars["Bar5"]["Bottom"]["ArtColorOptions"] = self:GetText()
		abfOptions5Box4PopOut2.Text:SetText(self:GetText())
		abfOptions5Box4PopOut2Choice0:Hide()
		abfSavedColorBottom("MultiBarLeft", "Bar5")
	end
end)
-- on click choice 1 --
abfOptions5Box4PopOut2Choice1:SetParent(abfOptions5Box4PopOut2Choice0)
abfOptions5Box4PopOut2Choice1:SetPoint("TOP", abfOptions5Box4PopOut2Choice0, "BOTTOM", 0, 0)
abfOptions5Box4PopOut2Choice1.Text:SetText("Custom Color")
abfOptions5Box4PopOut2Choice1:HookScript("OnClick", function(self, button, down)
	if button == "LeftButton" and down == false then
		ShowColorPicker("Bottom", abfSavedColorBottom)
		ABFactionBars["Bar5"]["Bottom"]["ArtColorOptions"] = self:GetText()
		abfOptions5Box4PopOut2.Text:SetText(self:GetText())
		abfOptions5Box4PopOut2Choice0:Hide()
	end
end)
-- Showing the panel --
abfOptions5:HookScript("OnShow", function(self)
	CheckSavedVariables()
	if abfOptions1:IsShown() then abfOptions1:Hide() end
	if abfOptions2:IsShown() then abfOptions2:Hide() end
	if abfOptions3:IsShown() then abfOptions3:Hide() end
	if abfOptions4:IsShown() then abfOptions4:Hide() end
	if abfOptions6:IsShown() then abfOptions6:Hide() end
	if abfOptions7:IsShown() then abfOptions7:Hide() end
	if abfOptions8:IsShown() then abfOptions8:Hide() end
	if abfOptions9:IsShown() then abfOptions9:Hide() end
	if abfOptions10:IsShown() then abfOptions10:Hide() end
	abfOptions00Tab1.Text:SetTextColor(abfMainColor:GetRGB())
	abfOptions00Tab2.Text:SetTextColor(abfMainColor:GetRGB())
	abfOptions00Tab3.Text:SetTextColor(abfMainColor:GetRGB())
	abfOptions00Tab4.Text:SetTextColor(abfMainColor:GetRGB())
	abfOptions00Tab5.Text:SetTextColor(abfHighColor:GetRGB())
	abfOptions00Tab6.Text:SetTextColor(abfMainColor:GetRGB())
	abfOptions00Tab7.Text:SetTextColor(abfMainColor:GetRGB())
	abfOptions00Tab8.Text:SetTextColor(abfMainColor:GetRGB())
	abfOptions00Tab9.Text:SetTextColor(abfMainColor:GetRGB())
	abfOptions00Tab10.Text:SetTextColor(abfMainColor:GetRGB())
end)
