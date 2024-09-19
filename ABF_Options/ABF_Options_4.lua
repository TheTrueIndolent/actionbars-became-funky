-- taking of the box --
abfOptions4Box1.TitleTxt:SetText("Slot Art & Art Color")
-- takeing care the rest boxes --
for i = 2, 4, 1 do
	_G["abfOptions4Box"..i]:SetPoint("TOP", _G["abfOptions4Box"..i-1], "BOTTOM", 0, 0)
end
abfOptions4Box2.TitleTxt:SetText("Edge Art & Art Color|nEdge Animation & Animation Color")
abfOptions4Box3.TitleTxt:SetText("Top Art & Art Color|nTop Animation & Animation Color")
abfOptions4Box4.TitleTxt:SetText("Bottom Art & Art Color")
-- creating the color picker --
local function ShowColorPicker(text, com)
	local function OnColorChanged()
		local newR, newG, newB = ColorPickerFrame:GetColorRGB()
		local newA = ColorPickerFrame:GetColorAlpha()
		ABFactionBars["Bar4"][text]["ArtColor"] = CreateColor(newR, newG, newB, newA)
		com("MultiBarRight", "Bar4")
	end
	local function OnCancel()
		ABFactionBars["Bar4"][text]["ArtColor"] = CreateColor(1, 1, 1, 1)
		com("MultiBarRight", "Bar4")
	end
	local options = {
		swatchFunc = OnColorChanged,
		opacityFunc = OnColorChanged,
		cancelFunc = OnCancel,
		hasOpacity = true,
		opacity = ABFactionBars["Bar4"][text]["ArtColor"]["a"],
		r = ABFactionBars["Bar4"][text]["ArtColor"]["r"],
		g = ABFactionBars["Bar4"][text]["ArtColor"]["g"],
		b = ABFactionBars["Bar4"][text]["ArtColor"]["b"],
	}
	ColorPickerFrame:SetupColorPickerAndShow(options)
end
-- creating the color picker for Animation --
local function ShowColorPickerForAnimation(text, com)
	local function OnColorChanged()
		local newR, newG, newB = ColorPickerFrame:GetColorRGB()
		local newA = ColorPickerFrame:GetColorAlpha()
		ABFactionBars["Bar4"][text]["AnimationColor"] = CreateColor(newR, newG, newB, newA)
		com("Bar4")
	end
	local function OnCancel()
		ABFactionBars["Bar4"][text]["AnimationColor"] = CreateColor(1, 1, 1, 1)
		com("Bar4")
	end
	local options = {
		swatchFunc = OnColorChanged,
		opacityFunc = OnColorChanged,
		cancelFunc = OnCancel,
		hasOpacity = true,
		opacity = ABFactionBars["Bar4"][text]["AnimationColor"]["a"],
		r = ABFactionBars["Bar4"][text]["AnimationColor"]["r"],
		g = ABFactionBars["Bar4"][text]["AnimationColor"]["g"],
		b = ABFactionBars["Bar4"][text]["AnimationColor"]["b"],
	}
	ColorPickerFrame:SetupColorPickerAndShow(options)
end
-- Checking the Saved Variables --
local function CheckSavedVariables()
-- Box 1, Pop out 1 --
	abfOptions4Box1PopOut1.Text:SetText(ABFactionBars["Bar4"]["Slot"]["Art"])
-- Box 1, Pop out 2 --
	abfOptions4Box1PopOut2.Text:SetText(ABFactionBars["Bar4"]["Slot"]["ArtColorOptions"])
-- Box 2, Pop out 1 --
	abfOptions4Box2PopOut1.Text:SetText(ABFactionBars["Bar4"]["Edge"]["Art"])
-- Box 2, Pop out 2 --
	abfOptions4Box2PopOut2.Text:SetText(ABFactionBars["Bar4"]["Edge"]["ArtColorOptions"])
-- Box 2, Pop out 3 --
	abfOptions4Box2PopOut3.Text:SetText(ABFactionBars["Bar4"]["Edge"]["Animation"])
-- Box 2, Pop out 4 --
	abfOptions4Box2PopOut4.Text:SetText(ABFactionBars["Bar4"]["Edge"]["AnimationColorOptions"])
-- Box 3, Pop out 1 --
	abfOptions4Box3PopOut1.Text:SetText(ABFactionBars["Bar4"]["Top"]["Art"])
-- Box 3, Pop out 2 --
	abfOptions4Box3PopOut2.Text:SetText(ABFactionBars["Bar4"]["Top"]["ArtColorOptions"])
-- Box 3, Pop out 3 --
	abfOptions4Box3PopOut3.Text:SetText(ABFactionBars["Bar4"]["Top"]["Animation"])
-- Box 3, Pop out 4 --
	abfOptions4Box3PopOut4.Text:SetText(ABFactionBars["Bar4"]["Top"]["AnimationColorOptions"])
-- Box 4, Pop out 1 --
	abfOptions4Box4PopOut1.Text:SetText(ABFactionBars["Bar4"]["Bottom"]["Art"])
-- Box 4, Pop out 2 --
	abfOptions4Box4PopOut2.Text:SetText(ABFactionBars["Bar4"]["Bottom"]["ArtColorOptions"])
end
-- Box 1 Slot Art --
-- pop out 1 Slot Art Choice --
-- enter --
abfOptions4Box1PopOut1:SetScript("OnEnter", function(self)
	abfEnteringMenus(self)
	GameTooltip:SetText("|T"..C_AddOns.GetAddOnMetadata("ABF", "IconTexture")..":16|t"..abfMainColor:WrapTextInColorCode(C_AddOns.GetAddOnMetadata("ABF", "Title")).."|nChoose the Slot Art for|nthe Action Bar 4") 
end)
-- leave --
abfOptions4Box1PopOut1:SetScript("OnLeave", abfLeavingMenus)
-- drop down --
abfClickPopOut(abfOptions4Box1PopOut1, abfOptions4Box1PopOut1Choice0)
-- sort & naming & clicking --
abfOptions4Box1PopOut1Choice0.Text:SetText("None")
abfOptions4Box1PopOut1Choice0:HookScript("OnClick", function(self, button, down)
	if button == "LeftButton" and down == false then
		ABFactionBars["Bar4"]["Slot"]["Art"] = self.Text:GetText()
		abfOptions4Box1PopOut1.Text:SetText(self:GetText())
		abfOptions4Box1PopOut1Choice0:Hide()
		abfSavedArtSlot("MultiBarRight", "Bar4")
	end
end)
for i = 1, 6, 1 do
	_G["abfOptions4Box1PopOut1Choice"..i]:SetParent(abfOptions4Box1PopOut1Choice0)
	_G["abfOptions4Box1PopOut1Choice"..i]:SetPoint("TOP", _G["abfOptions4Box1PopOut1Choice"..i-1], "BOTTOM", 0, 0)
	_G["abfOptions4Box1PopOut1Choice"..i]:HookScript("OnClick", function(self, button, down)
		if button == "LeftButton" and down == false then
			ABFactionBars["Bar4"]["Slot"]["Art"] = self.Text:GetText()
			abfOptions4Box1PopOut1.Text:SetText(self:GetText())
			abfOptions4Box1PopOut1Choice0:Hide()
			abfSavedArtSlot("MultiBarRight", "Bar4")
		end
	end)
-- on leave --
	_G["abfOptions4Box1PopOut1Choice"..i]:HookScript("OnLeave", function(self) abfOptions4Box1PopOut1.Example:Hide() end)
end
-- entering the pop out buttons --
-- choice 1 --
abfOptions4Box1PopOut1Choice1:SetScript("OnEnter", function(self)
	abfOptions4Box1PopOut1.Example:SetAtlas("UI-HUD-ActionBar-IconFrame-Slot", false)
	abfOptions4Box1PopOut1.Example:Show()
end)
-- choice 2 --
abfOptions4Box1PopOut1Choice2:SetScript("OnEnter", function(self)
	abfOptions4Box1PopOut1.Example:SetAtlas("socket-prismatic-background", false)
	abfOptions4Box1PopOut1.Example:Show()
end)
-- choice 3 --
abfOptions4Box1PopOut1Choice3:SetScript("OnEnter", function(self)
	abfOptions4Box1PopOut1.Example:SetAtlas("CovenantSanctum-Text-Border-Nightfae", false)
	abfOptions4Box1PopOut1.Example:Show()
end)
-- choice 4 --
abfOptions4Box1PopOut1Choice4:SetScript("OnEnter", function(self)
	abfOptions4Box1PopOut1.Example:SetAtlas("CovenantSanctum-Text-Border-Kyrian", false)
	abfOptions4Box1PopOut1.Example:Show()
end)
-- choice 5 --
abfOptions4Box1PopOut1Choice5:SetScript("OnEnter", function(self)
	abfOptions4Box1PopOut1.Example:SetAtlas("CovenantSanctum-Text-Border-Necrolord", false)
	abfOptions4Box1PopOut1.Example:Show()
end)
-- choice 6 --
abfOptions4Box1PopOut1Choice6:SetScript("OnEnter", function(self)
	abfOptions4Box1PopOut1.Example:SetAtlas("CovenantSanctum-Text-Border-Venthyr", false)
	abfOptions4Box1PopOut1.Example:Show()
end)
-- pop out 2 Slot Art Color --
-- enter --
abfOptions4Box1PopOut2:SetScript("OnEnter", function(self)
	abfEnteringMenus(self)
	GameTooltip:SetText("|T"..C_AddOns.GetAddOnMetadata("ABF", "IconTexture")..":16|t"..abfMainColor:WrapTextInColorCode(C_AddOns.GetAddOnMetadata("ABF", "Title")).."|nChoose the color for|nthe Slot Art") 
end)
-- leave --
abfOptions4Box1PopOut2:SetScript("OnLeave", abfLeavingMenus)
-- drop down --
abfClickPopOut(abfOptions4Box1PopOut2, abfOptions4Box1PopOut2Choice0)
-- on click choice 0 --
abfOptions4Box1PopOut2Choice0.Text:SetText("Default Color")
abfOptions4Box1PopOut2Choice0:HookScript("OnClick", function(self, button, down)
	if button == "LeftButton" and down == false then
		ABFactionBars["Bar4"]["Slot"]["ArtColor"] = {r = 1, g = 1, b = 1, a = 1,}
		ABFactionBars["Bar4"]["Slot"]["ArtColorOptions"] = self.Text:GetText()
		abfOptions4Box1PopOut2.Text:SetText(self:GetText())
		abfOptions4Box1PopOut2Choice0:Hide()
		abfSavedColorSlot("MultiBarRight", "Bar4")
	end
end)
-- on click choice 1 --
abfOptions4Box1PopOut2Choice1:SetParent(abfOptions4Box1PopOut2Choice0)
abfOptions4Box1PopOut2Choice1:SetPoint("TOP", abfOptions4Box1PopOut2Choice0, "BOTTOM", 0, 0)
abfOptions4Box1PopOut2Choice1.Text:SetText("Custom Color")
abfOptions4Box1PopOut2Choice1:HookScript("OnClick", function(self, button, down)
	if button == "LeftButton" and down == false then
		ShowColorPicker("Slot", abfSavedColorSlot)
		ABFactionBars["Bar4"]["Slot"]["ArtColorOptions"] = self.Text:GetText()
		abfOptions4Box1PopOut2.Text:SetText(self:GetText())
		abfOptions4Box1PopOut2Choice0:Hide()
	end
end)
-- Box 2 Edge Art --
-- pop out 1 Edge Art Choice --
-- enter --
abfOptions4Box2PopOut1:SetScript("OnEnter", function(self)
	abfEnteringMenus(self)
	GameTooltip:SetText("|T"..C_AddOns.GetAddOnMetadata("ABF", "IconTexture")..":16|t"..abfMainColor:WrapTextInColorCode(C_AddOns.GetAddOnMetadata("ABF", "Title")).."|nChoose the Edge Art for|nthe Action Bar 4") 
end)
-- leave --
abfOptions4Box2PopOut1:SetScript("OnLeave", abfLeavingMenus)
-- drop down --
abfClickPopOut(abfOptions4Box2PopOut1, abfOptions4Box2PopOut1Choice0)
-- sort & naming & clicking --
abfOptions4Box2PopOut1Choice0.Text:SetText("None")
abfOptions4Box2PopOut1Choice0:HookScript("OnClick", function(self, button, down)
	if button == "LeftButton" and down == false then
		ABFactionBars["Bar4"]["Edge"]["Art"] = self.Text:GetText()
		abfOptions4Box2PopOut1.Text:SetText(self:GetText())
		abfOptions4Box2PopOut1Choice0:Hide()
		abfSavedArtEdge("MultiBarRight", MultiBarRight, "Bar4")
	end
end)
for i = 1, 4, 1 do
	_G["abfOptions4Box2PopOut1Choice"..i]:SetParent(abfOptions4Box2PopOut1Choice0)
	_G["abfOptions4Box2PopOut1Choice"..i]:SetPoint("TOP", _G["abfOptions4Box2PopOut1Choice"..i-1], "BOTTOM", 0, 0)
	_G["abfOptions4Box2PopOut1Choice"..i]:HookScript("OnClick", function(self, button, down)
		if button == "LeftButton" and down == false then
			ABFactionBars["Bar4"]["Edge"]["Art"] = self.Text:GetText()
			abfOptions4Box2PopOut1.Text:SetText(self:GetText())
			abfOptions4Box2PopOut1Choice0:Hide()
			abfSavedArtEdge("MultiBarRight", MultiBarRight, "Bar4")
		end
	end)
-- on leave --
	_G["abfOptions4Box2PopOut1Choice"..i]:HookScript("OnLeave", function(self) abfOptions4Box2PopOut1.Example:Hide() end)
end
-- entering the pop out buttons --
-- choice 1 --
abfOptions4Box2PopOut1Choice1:SetScript("OnEnter", function(self)
	abfOptions4Box2PopOut1.Example:SetAtlas("UI-HUD-ActionBar-Gryphon-Right", false)
	abfOptions4Box2PopOut1.Example:Show()
end)
-- choice 2 --
abfOptions4Box2PopOut1Choice2:SetScript("OnEnter", function(self)
	abfOptions4Box2PopOut1.Example:SetAtlas("UI-HUD-ActionBar-Wyvern-Right", false)
	abfOptions4Box2PopOut1.Example:Show()
end)
-- choice 3 --
abfOptions4Box2PopOut1Choice3:SetScript("OnEnter", function(self)
	abfOptions4Box2PopOut1.Example:SetAtlas("UI-HUD-UnitFrame-Target-PortraitOn-Boss-Gold-Winged", false)
	abfOptions4Box2PopOut1.Example:Show()
end)
-- choice 4 --
abfOptions4Box2PopOut1Choice4:SetScript("OnEnter", function(self)
	abfOptions4Box2PopOut1.Example:SetAtlas("UI-HUD-UnitFrame-Target-PortraitOn-Boss-Gold", false)
	abfOptions4Box2PopOut1.Example:Show()
end)
-- pop out 2 Edge Art Color --
-- enter --
abfOptions4Box2PopOut2:SetScript("OnEnter", function(self)
	abfEnteringMenus(self)
	GameTooltip:SetText("|T"..C_AddOns.GetAddOnMetadata("ABF", "IconTexture")..":16|t"..abfMainColor:WrapTextInColorCode(C_AddOns.GetAddOnMetadata("ABF", "Title")).."|nChoose the color for|nthe Edge Art") 
end)
-- leave --
abfOptions4Box2PopOut2:SetScript("OnLeave", abfLeavingMenus)
-- drop down --
abfClickPopOut(abfOptions4Box2PopOut2, abfOptions4Box2PopOut2Choice0)
-- on click choice 0 --
abfOptions4Box2PopOut2Choice0.Text:SetText("Default Color")
abfOptions4Box2PopOut2Choice0:HookScript("OnClick", function(self, button, down)
	if button == "LeftButton" and down == false then
		ABFactionBars["Bar4"]["Edge"]["ArtColor"] = {r = 1, g = 1, b = 1, a = 1,}
		ABFactionBars["Bar4"]["Edge"]["ArtColorOptions"] = self:GetText()
		abfOptions4Box2PopOut2.Text:SetText(self:GetText())
		abfOptions4Box2PopOut2Choice0:Hide()
		abfSavedColorEdge("MultiBarRight", "Bar4")
	end
end)
-- on click choice 1 --
abfOptions4Box2PopOut2Choice1:SetParent(abfOptions4Box2PopOut2Choice0)
abfOptions4Box2PopOut2Choice1:SetPoint("TOP", abfOptions4Box2PopOut2Choice0, "BOTTOM", 0, 0)
abfOptions4Box2PopOut2Choice1.Text:SetText("Custom Color")
abfOptions4Box2PopOut2Choice1:HookScript("OnClick", function(self, button, down)
	if button == "LeftButton" and down == false then
		ShowColorPicker("Edge", abfSavedColorEdge)
		ABFactionBars["Bar4"]["Edge"]["ArtColorOptions"] = self:GetText()
		abfOptions4Box2PopOut2.Text:SetText(self:GetText())
		abfOptions4Box2PopOut2Choice0:Hide()
	end
end)
-- pop out 3 Edge Art Animation --
-- enter --
abfOptions4Box2PopOut3:SetScript("OnEnter", function(self)
	abfEnteringMenus(self)
	GameTooltip:SetText("|T"..C_AddOns.GetAddOnMetadata("ABF", "IconTexture")..":16|t"..abfMainColor:WrapTextInColorCode(C_AddOns.GetAddOnMetadata("ABF", "Title")).."|nChoose an animation.|nNote: For the option Gryphon/Wyvern.|nPlease choose Gryphon or Wyvern at Edge Art.|nMore will come soon!")
end)
-- leave --
abfOptions4Box2PopOut3:SetScript("OnLeave", abfLeavingMenus)
-- drop down --
abfClickPopOut(abfOptions4Box2PopOut3, abfOptions4Box2PopOut3Choice0)
-- on click choice 0 --
abfOptions4Box2PopOut3Choice0.Text:SetText("None")
abfOptions4Box2PopOut3Choice0:HookScript("OnClick", function(self, button, down)
	if button == "LeftButton" and down == false then
		ABFactionBars["Bar4"]["Edge"]["Animation"] = self:GetText()
		abfOptions4Box2PopOut3.Text:SetText(self:GetText())
		abfOptions4Box2PopOut3Choice0:Hide()
		abfSavedAnimationEdgeArt("MultiBarRight", "Bar4")
	end
end)
-- on click choice 1 --
abfOptions4Box2PopOut3Choice1:SetParent(abfOptions4Box2PopOut3Choice0)
abfOptions4Box2PopOut3Choice1:SetPoint("TOP", abfOptions4Box2PopOut3Choice0, "BOTTOM", 0, 0)
abfOptions4Box2PopOut3Choice1.Text:SetText("Gryphon/Wyvern")
abfOptions4Box2PopOut3Choice1:HookScript("OnClick", function(self, button, down)
	if button == "LeftButton" and down == false then
		ABFactionBars["Bar4"]["Edge"]["Animation"] = self:GetText()
		abfOptions4Box2PopOut3.Text:SetText(self:GetText())
		abfSavedAnimationEdgeArt("MultiBarRight", "Bar4")
	end
end)
-- pop out 4 Edge Art Animation Color --
-- enter --
abfOptions4Box2PopOut4:SetScript("OnEnter", function(self)
	abfEnteringMenus(self)
	GameTooltip:SetText("|T"..C_AddOns.GetAddOnMetadata("ABF", "IconTexture")..":16|t"..abfMainColor:WrapTextInColorCode(C_AddOns.GetAddOnMetadata("ABF", "Title")).."|nChoose the color for|nthe Animation") 
end)
-- leave --
abfOptions4Box2PopOut4:SetScript("OnLeave", abfLeavingMenus)
-- drop down --
abfClickPopOut(abfOptions4Box2PopOut4, abfOptions4Box2PopOut4Choice0)
-- on click choice 0 --
abfOptions4Box2PopOut4Choice0.Text:SetText("Default Color")
abfOptions4Box2PopOut4Choice0:HookScript("OnClick", function(self, button, down)
	if button == "LeftButton" and down == false then
		ABFactionBars["Bar4"]["Edge"]["AnimationColor"] = {r = 1, g = 1, b = 1, a = 1,}
		ABFactionBars["Bar4"]["Edge"]["AnimationColorOptions"] = self:GetText()
		abfOptions4Box2PopOut4.Text:SetText(self:GetText())
		abfOptions4Box2PopOut4Choice0:Hide()
		abfSavedAnimationEdgeColor("Bar4")
	end
end)
-- on click choice 1 --
abfOptions4Box2PopOut4Choice1:SetParent(abfOptions4Box2PopOut4Choice0)
abfOptions4Box2PopOut4Choice1:SetPoint("TOP", abfOptions4Box2PopOut4Choice0, "BOTTOM", 0, 0)
abfOptions4Box2PopOut4Choice1.Text:SetText("Custom Color")
abfOptions4Box2PopOut4Choice1:HookScript("OnClick", function(self, button, down)
	if button == "LeftButton" and down == false then
		ShowColorPickerForAnimation("Edge", abfSavedAnimationEdgeColor)
		ABFactionBars["Bar4"]["Edge"]["AnimationColorOptions"] = self:GetText()
		abfOptions4Box2PopOut4.Text:SetText(self:GetText())
		abfOptions4Box2PopOut4Choice0:Hide()
	end
end)
-- Box 3 Top Art --
-- pop out 1 Top Art choice --
-- enter --
abfOptions4Box3PopOut1:SetScript("OnEnter", function(self)
	abfEnteringMenus(self)
	GameTooltip:SetText("|T"..C_AddOns.GetAddOnMetadata("ABF", "IconTexture")..":16|t"..abfMainColor:WrapTextInColorCode(C_AddOns.GetAddOnMetadata("ABF", "Title")).."|nChoose the Top Art for|nthe Action Bar 4") 
end)
-- leave --
abfOptions4Box3PopOut1:SetScript("OnLeave", abfLeavingMenus)
-- drop down --
abfClickPopOut(abfOptions4Box3PopOut1, abfOptions4Box3PopOut1Choice0)
-- sort & naming & clicking --
abfOptions4Box3PopOut1Choice0.Text:SetText("None")
abfOptions4Box3PopOut1Choice0:HookScript("OnClick", function(self, button, down)
	if button == "LeftButton" and down == false then
		ABFactionBars["Bar4"]["Top"]["Art"] = self.Text:GetText()
		abfOptions4Box3PopOut1.Text:SetText(self:GetText())
		abfOptions4Box3PopOut1Choice0:Hide()
		abfSavedArtTop("MultiBarRight", "Bar4")
	end
end)
for i = 1, 3, 1 do
	_G["abfOptions4Box3PopOut1Choice"..i]:SetParent(abfOptions4Box3PopOut1Choice0)
	_G["abfOptions4Box3PopOut1Choice"..i]:SetPoint("TOP", _G["abfOptions4Box3PopOut1Choice"..i-1], "BOTTOM", 0, 0)
	_G["abfOptions4Box3PopOut1Choice"..i]:HookScript("OnClick", function(self, button, down)
		if button == "LeftButton" and down == false then
			ABFactionBars["Bar4"]["Top"]["Art"] = self.Text:GetText()
			abfOptions4Box3PopOut1.Text:SetText(self:GetText())
			abfOptions4Box3PopOut1Choice0:Hide()
			abfSavedArtTop("MultiBarRight", "Bar4")
		end
	end)
-- on leave --
	_G["abfOptions4Box3PopOut1Choice"..i]:HookScript("OnLeave", function(self) abfOptions4Box3PopOut1.Example:Hide() abfOptions4Box3PopOut1.Example1:Hide() end)
end
-- entering the pop out buttons --
-- choice 1 --
abfOptions4Box3PopOut1Choice1:SetScript("OnEnter", function(self)
	abfOptions4Box3PopOut1.Example:SetAtlas("jailerstower-score-topper", false)
	abfOptions4Box3PopOut1.Example:ClearAllPoints()
	abfOptions4Box3PopOut1.Example:SetPoint("RIGHT", abfOptions4Box3PopOut1, "LEFT", 64, 0)
	abfOptions4Box3PopOut1.Example:SetSize(315, 48)
	abfOptions4Box3PopOut1.Example:Show()
end)
-- choice 2 --
abfOptions4Box3PopOut1Choice2:SetScript("OnEnter", function(self)
	abfOptions4Box3PopOut1.Example:SetAtlas("BossBanner-RightFillagree", false)
	abfOptions4Box3PopOut1.Example:ClearAllPoints()
	abfOptions4Box3PopOut1.Example:SetPoint("RIGHT", abfOptions4Box3PopOut1, "LEFT", 0, 16)
	abfOptions4Box3PopOut1.Example:SetSize(48, 48)
	abfOptions4Box3PopOut1.Example:Show()
	abfOptions4Box3PopOut1.Example1:SetAtlas("BossBanner-LeftFillagree", false)
	abfOptions4Box3PopOut1.Example1:Show()
end)
-- pop out 2 Top Art Color --
-- enter --
abfOptions4Box3PopOut2:SetScript("OnEnter", function(self)
	abfEnteringMenus(self)
	GameTooltip:SetText("|T"..C_AddOns.GetAddOnMetadata("ABF", "IconTexture")..":16|t"..abfMainColor:WrapTextInColorCode(C_AddOns.GetAddOnMetadata("ABF", "Title")).."|nChoose the color for|nthe Top Art") 
end)
-- leave --
abfOptions4Box3PopOut2:SetScript("OnLeave", abfLeavingMenus)
-- drop down --
abfClickPopOut(abfOptions4Box3PopOut2, abfOptions4Box3PopOut2Choice0)
-- on click choice 0 --
abfOptions4Box3PopOut2Choice0.Text:SetText("Default Color")
abfOptions4Box3PopOut2Choice0:HookScript("OnClick", function(self, button, down)
	if button == "LeftButton" and down == false then
		ABFactionBars["Bar4"]["Top"]["ArtColor"] = {r = 1, g = 1, b = 1, a = 1,}
		ABFactionBars["Bar4"]["Top"]["ArtColorOptions"] = self:GetText()
		abfOptions4Box3PopOut2.Text:SetText(self:GetText())
		abfOptions4Box3PopOut2Choice0:Hide()
		abfSavedColorTop("MultiBarRight", "Bar4")
	end
end)
-- on click choice 1 --
abfOptions4Box3PopOut2Choice1:SetParent(abfOptions4Box3PopOut2Choice0)
abfOptions4Box3PopOut2Choice1:SetPoint("TOP", abfOptions4Box3PopOut2Choice0, "BOTTOM", 0, 0)
abfOptions4Box3PopOut2Choice1.Text:SetText("Custom Color")
abfOptions4Box3PopOut2Choice1:HookScript("OnClick", function(self, button, down)
	if button == "LeftButton" and down == false then
		ShowColorPicker("Top", abfSavedColorTop)
		ABFactionBars["Bar4"]["Top"]["ArtColorOptions"] = self:GetText()
		abfOptions4Box3PopOut2.Text:SetText(self:GetText())
		abfOptions4Box3PopOut2Choice0:Hide()
	end
end)
-- pop out 3 Top Art Animation --
-- enter --
abfOptions4Box3PopOut3:SetScript("OnEnter", function(self)
	abfEnteringMenus(self)
	GameTooltip:SetText("|T"..C_AddOns.GetAddOnMetadata("ABF", "IconTexture")..":16|t"..abfMainColor:WrapTextInColorCode(C_AddOns.GetAddOnMetadata("ABF", "Title")).."|nDo you want the animation for|nthe Top Art to be visible?|nNote: There is only one animation.|nMore will come soon!")
end)
-- leave --
abfOptions4Box3PopOut3:SetScript("OnLeave", abfLeavingMenus)
-- drop down --
abfClickPopOut(abfOptions4Box3PopOut3, abfOptions4Box3PopOut3Choice0)
-- on click choice 0 --
abfOptions4Box3PopOut3Choice0.Text:SetText("None")
abfOptions4Box3PopOut3Choice0:HookScript("OnClick", function(self, button, down)
	if button == "LeftButton" and down == false then
		ABFactionBars["Bar4"]["Top"]["Animation"] = self:GetText()
		abfOptions4Box3PopOut3.Text:SetText(self:GetText())
		abfOptions4Box3PopOut3Choice0:Hide()
		abfSavedAnimationTopArt("MultiBarRight", "Bar4")
	end
end)
-- on click choice 1 --
abfOptions4Box3PopOut3Choice1:SetParent(abfOptions4Box3PopOut3Choice0)
abfOptions4Box3PopOut3Choice1:SetPoint("TOP", abfOptions4Box3PopOut3Choice0, "BOTTOM", 0, 0)
abfOptions4Box3PopOut3Choice1.Text:SetText("MissionLine")
abfOptions4Box3PopOut3Choice1:HookScript("OnClick", function(self, button, down)
	if button == "LeftButton" and down == false then
		ABFactionBars["Bar4"]["Top"]["Animation"] = self:GetText()
		abfOptions4Box3PopOut3.Text:SetText(self:GetText())
		abfOptions4Box3PopOut3Choice0:Hide()
		abfSavedAnimationTopArt("MultiBarRight", "Bar4")
	end
end)
-- pop out 4 Top Art Animation Color --
-- enter --
abfOptions4Box3PopOut4:SetScript("OnEnter", function(self)
	abfEnteringMenus(self)
	GameTooltip:SetText("|T"..C_AddOns.GetAddOnMetadata("ABF", "IconTexture")..":16|t"..abfMainColor:WrapTextInColorCode(C_AddOns.GetAddOnMetadata("ABF", "Title")).."|nChoose the color for|nthe Animation") 
end)
-- leave --
abfOptions4Box3PopOut4:SetScript("OnLeave", abfLeavingMenus)
-- drop down --
abfClickPopOut(abfOptions4Box3PopOut4, abfOptions4Box3PopOut4Choice0)
-- on click choice 0 --
abfOptions4Box3PopOut4Choice0.Text:SetText("Default Color")
abfOptions4Box3PopOut4Choice0:HookScript("OnClick", function(self, button, down)
	if button == "LeftButton" and down == false then
		ABFactionBars["Bar4"]["Top"]["AnimationColor"] = {r = 1, g = 1, b = 1, a = 1,}
		ABFactionBars["Bar4"]["Top"]["AnimationColorOptions"] = self:GetText()
		abfOptions4Box3PopOut4.Text:SetText(self:GetText())
		abfOptions4Box3PopOut4Choice0:Hide()
		abfSavedAnimationTopColor("Bar4")
	end
end)
-- on click choice 1 --
abfOptions4Box3PopOut4Choice1:SetParent(abfOptions4Box3PopOut4Choice0)
abfOptions4Box3PopOut4Choice1:SetPoint("TOP", abfOptions4Box3PopOut4Choice0, "BOTTOM", 0, 0)
abfOptions4Box3PopOut4Choice1.Text:SetText("Custom Color")
abfOptions4Box3PopOut4Choice1:HookScript("OnClick", function(self, button, down)
	if button == "LeftButton" and down == false then
		ShowColorPickerForAnimation("Top", abfSavedAnimationTopColor)
		ABFactionBars["Bar4"]["Top"]["AnimationColorOptions"] = self:GetText()
		abfOptions4Box3PopOut4.Text:SetText(self:GetText())
		abfOptions4Box3PopOut4Choice0:Hide()
	end
end)
-- Box 4 Bottom Art --
-- pop out 1 Bottom Art choice --
-- enter --
abfOptions4Box4PopOut1:SetScript("OnEnter", function(self)
	abfEnteringMenus(self)
	GameTooltip:SetText("|T"..C_AddOns.GetAddOnMetadata("ABF", "IconTexture")..":16|t"..abfMainColor:WrapTextInColorCode(C_AddOns.GetAddOnMetadata("ABF", "Title")).."|nChoose the Bottom Art for|nthe Action Bar 4") 
end)
-- leave --
abfOptions4Box4PopOut1:SetScript("OnLeave", abfLeavingMenus)
-- drop down --
abfClickPopOut(abfOptions4Box4PopOut1, abfOptions4Box4PopOut1Choice0)
-- sort & naming & clicking --
abfOptions4Box4PopOut1Choice0.Text:SetText("None")
abfOptions4Box4PopOut1Choice0:HookScript("OnClick", function(self, button, down)
	if button == "LeftButton" and down == false then
		ABFactionBars["Bar4"]["Bottom"]["Art"] = self.Text:GetText()
		abfOptions4Box4PopOut1.Text:SetText(self:GetText())
		abfOptions4Box4PopOut1Choice0:Hide()
		abfSavedArtBottom("MultiBarRight", "Bar4")
	end
end)
for i = 1, 2, 1 do
	_G["abfOptions4Box4PopOut1Choice"..i]:SetParent(abfOptions4Box4PopOut1Choice0)
	_G["abfOptions4Box4PopOut1Choice"..i]:SetPoint("TOP", _G["abfOptions4Box4PopOut1Choice"..i-1], "BOTTOM", 0, 0)
	_G["abfOptions4Box4PopOut1Choice"..i]:HookScript("OnClick", function(self, button, down)
		if button == "LeftButton" and down == false then
			ABFactionBars["Bar4"]["Bottom"]["Art"] = self.Text:GetText()
			abfOptions4Box4PopOut1.Text:SetText(self:GetText())
			abfOptions4Box4PopOut1Choice0:Hide()
			abfSavedArtBottom("MultiBarRight", "Bar4")
		end
	end)
-- on leave --
	_G["abfOptions4Box4PopOut1Choice"..i]:HookScript("OnLeave", function(self) abfOptions4Box4PopOut1.Example:Hide() end)
end
-- entering the pop out buttons --
-- choice 1 --
abfOptions4Box4PopOut1Choice1:SetScript("OnEnter", function(self)
	abfOptions4Box4PopOut1.Example:SetAtlas("UI-Achievement-Border-7", false)
	abfOptions4Box4PopOut1.Example:Show()
end)
-- choice 2 --
abfOptions4Box4PopOut1Choice2:SetScript("OnEnter", function(self)
	abfOptions4Box4PopOut1.Example:SetAtlas("AftLevelup-SoftCloud", false)
	abfOptions4Box4PopOut1.Example:Show()
end)
-- pop out 2 Bottom Art Color --
-- enter --
abfOptions4Box4PopOut2:SetScript("OnEnter", function(self)
	abfEnteringMenus(self)
	GameTooltip:SetText("|T"..C_AddOns.GetAddOnMetadata("ABF", "IconTexture")..":16|t"..abfMainColor:WrapTextInColorCode(C_AddOns.GetAddOnMetadata("ABF", "Title")).."|nChoose the color for|nthe Bottom Art") 
end)
-- leave --
abfOptions4Box4PopOut2:SetScript("OnLeave", abfLeavingMenus)
-- drop down --
abfClickPopOut(abfOptions4Box4PopOut2, abfOptions4Box4PopOut2Choice0)
-- on click choice 0 --
abfOptions4Box4PopOut2Choice0.Text:SetText("Default Color")
abfOptions4Box4PopOut2Choice0:HookScript("OnClick", function(self, button, down)
	if button == "LeftButton" and down == false then
		ABFactionBars["Bar4"]["Bottom"]["ArtColor"] = {r = 1, g = 1, b = 1, a = 1,}
		ABFactionBars["Bar4"]["Bottom"]["ArtColorOptions"] = self:GetText()
		abfOptions4Box4PopOut2.Text:SetText(self:GetText())
		abfOptions4Box4PopOut2Choice0:Hide()
		abfSavedColorBottom("MultiBarRight", "Bar4")
	end
end)
-- on click choice 1 --
abfOptions4Box4PopOut2Choice1:SetParent(abfOptions4Box4PopOut2Choice0)
abfOptions4Box4PopOut2Choice1:SetPoint("TOP", abfOptions4Box4PopOut2Choice0, "BOTTOM", 0, 0)
abfOptions4Box4PopOut2Choice1.Text:SetText("Custom Color")
abfOptions4Box4PopOut2Choice1:HookScript("OnClick", function(self, button, down)
	if button == "LeftButton" and down == false then
		ShowColorPicker("Bottom", abfSavedColorBottom)
		ABFactionBars["Bar4"]["Bottom"]["ArtColorOptions"] = self:GetText()
		abfOptions4Box4PopOut2.Text:SetText(self:GetText())
		abfOptions4Box4PopOut2Choice0:Hide()
	end
end)
-- Showing the panel --
abfOptions4:HookScript("OnShow", function(self)
	CheckSavedVariables()
	if abfOptions1:IsShown() then abfOptions1:Hide() end
	if abfOptions2:IsShown() then abfOptions2:Hide() end
	if abfOptions3:IsShown() then abfOptions3:Hide() end
	if abfOptions5:IsShown() then abfOptions5:Hide() end
	if abfOptions6:IsShown() then abfOptions6:Hide() end
	if abfOptions7:IsShown() then abfOptions7:Hide() end
	if abfOptions8:IsShown() then abfOptions8:Hide() end
	if abfOptions9:IsShown() then abfOptions9:Hide() end
	if abfOptions10:IsShown() then abfOptions10:Hide() end
	abfOptions00Tab1.Text:SetTextColor(abfMainColor:GetRGB())
	abfOptions00Tab2.Text:SetTextColor(abfMainColor:GetRGB())
	abfOptions00Tab3.Text:SetTextColor(abfMainColor:GetRGB())
	abfOptions00Tab4.Text:SetTextColor(abfHighColor:GetRGB())
	abfOptions00Tab5.Text:SetTextColor(abfMainColor:GetRGB())
	abfOptions00Tab6.Text:SetTextColor(abfMainColor:GetRGB())
	abfOptions00Tab7.Text:SetTextColor(abfMainColor:GetRGB())
	abfOptions00Tab8.Text:SetTextColor(abfMainColor:GetRGB())
	abfOptions00Tab9.Text:SetTextColor(abfMainColor:GetRGB())
	abfOptions00Tab10.Text:SetTextColor(abfMainColor:GetRGB())
end)
