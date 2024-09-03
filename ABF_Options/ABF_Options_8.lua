-- taking of the box --
abfOptions8Box1.TitleTxt:SetText("Slot Art & Art Color")
-- takeing care the rest boxes --
for i = 2, 4, 1 do
	_G["abfOptions8Box"..i]:SetPoint("TOP", _G["abfOptions8Box"..i-1], "BOTTOM", 0, 0)
end
abfOptions8Box2.TitleTxt:SetText("Edge Art & Art Color|nEdge Animation & Animation Color")
abfOptions8Box3.TitleTxt:SetText("Top Art & Art Color|nTop Animation & Animation Color")
abfOptions8Box4.TitleTxt:SetText("Bottom Art & Art Color")
-- creating the color picker --
local function ShowColorPicker(text, com)
	local function OnColorChanged()
		local newR, newG, newB = ColorPickerFrame:GetColorRGB()
		local newA = ColorPickerFrame:GetColorAlpha()
		ABFactionBars["Bar8"][text]["ArtColor"] = CreateColor(newR, newG, newB, newA)
		com("MultiBar7", "Bar8")
	end
	local function OnCancel()
		ABFactionBars["Bar8"][text]["ArtColor"] = CreateColor(1, 1, 1, 1)
		com("MultiBar7", "Bar8")
	end
	local options = {
		swatchFunc = OnColorChanged,
		opacityFunc = OnColorChanged,
		cancelFunc = OnCancel,
		hasOpacity = true,
		opacity = ABFactionBars["Bar8"][text]["ArtColor"]["a"],
		r = ABFactionBars["Bar8"][text]["ArtColor"]["r"],
		g = ABFactionBars["Bar8"][text]["ArtColor"]["g"],
		b = ABFactionBars["Bar8"][text]["ArtColor"]["b"],
	}
	ColorPickerFrame:SetupColorPickerAndShow(options)
end
-- creating the color picker for Animation --
local function ShowColorPickerForAnimation(text, com)
	local function OnColorChanged()
		local newR, newG, newB = ColorPickerFrame:GetColorRGB()
		local newA = ColorPickerFrame:GetColorAlpha()
		ABFactionBars["Bar8"][text]["AnimationColor"] = CreateColor(newR, newG, newB, newA)
		com("Bar8")
	end
	local function OnCancel()
		ABFactionBars["Bar8"][text]["AnimationColor"] = CreateColor(1, 1, 1, 1)
		com("Bar8")
	end
	local options = {
		swatchFunc = OnColorChanged,
		opacityFunc = OnColorChanged,
		cancelFunc = OnCancel,
		hasOpacity = true,
		opacity = ABFactionBars["Bar8"][text]["AnimationColor"]["a"],
		r = ABFactionBars["Bar8"][text]["AnimationColor"]["r"],
		g = ABFactionBars["Bar8"][text]["AnimationColor"]["g"],
		b = ABFactionBars["Bar8"][text]["AnimationColor"]["b"],
	}
	ColorPickerFrame:SetupColorPickerAndShow(options)
end
-- Checking the Saved Variables --
local function CheckSavedVariables()
-- Box 1, Pop out 1 --
	abfOptions8Box1PopOut1.Text:SetText(ABFactionBars["Bar8"]["Slot"]["Art"])
-- Box 1, Pop out 2 --
	abfOptions8Box1PopOut2.Text:SetText(ABFactionBars["Bar8"]["Slot"]["ArtColorOptions"])
-- Box 2, Pop out 1 --
	abfOptions8Box2PopOut1.Text:SetText(ABFactionBars["Bar8"]["Edge"]["Art"])
-- Box 2, Pop out 2 --
	abfOptions8Box2PopOut2.Text:SetText(ABFactionBars["Bar8"]["Edge"]["ArtColorOptions"])
-- Box 2, Pop out 3 --
	abfOptions8Box2PopOut3.Text:SetText(ABFactionBars["Bar8"]["Edge"]["Animation"])
-- Box 2, Pop out 4 --
	abfOptions8Box2PopOut4.Text:SetText(ABFactionBars["Bar8"]["Edge"]["AnimationColorOptions"])
-- Box 3, Pop out 1 --
	abfOptions8Box3PopOut1.Text:SetText(ABFactionBars["Bar8"]["Top"]["Art"])
-- Box 3, Pop out 2 --
	abfOptions8Box3PopOut2.Text:SetText(ABFactionBars["Bar8"]["Top"]["ArtColorOptions"])
-- Box 3, Pop out 3 --
	abfOptions8Box3PopOut3.Text:SetText(ABFactionBars["Bar8"]["Top"]["Animation"])
-- Box 3, Pop out 4 --
	abfOptions8Box3PopOut4.Text:SetText(ABFactionBars["Bar8"]["Top"]["AnimationColorOptions"])
-- Box 4, Pop out 1 --
	abfOptions8Box4PopOut1.Text:SetText(ABFactionBars["Bar8"]["Bottom"]["Art"])
-- Box 4, Pop out 2 --
	abfOptions8Box4PopOut2.Text:SetText(ABFactionBars["Bar8"]["Bottom"]["ArtColorOptions"])
end
-- Box 1 Slot Art --
-- pop out 1 Slot Art Choice --
-- enter --
abfOptions8Box1PopOut1:SetScript("OnEnter", function(self)
	abfEnteringMenus(self)
	GameTooltip:SetText("|T"..C_AddOns.GetAddOnMetadata("ABF", "IconTexture")..":16|t"..abfMainColor:WrapTextInColorCode(C_AddOns.GetAddOnMetadata("ABF", "Title")).."|nChoose the Slot Art for|nthe Action Bar 8") 
end)
-- leave --
abfOptions8Box1PopOut1:SetScript("OnLeave", abfLeavingMenus)
-- drop down --
abfClickPopOut(abfOptions8Box1PopOut1, abfOptions8Box1PopOut1Choice0)
-- sort & naming & clicking --
abfOptions8Box1PopOut1Choice0.Text:SetText("None")
abfOptions8Box1PopOut1Choice0:HookScript("OnClick", function(self, button, down)
	if button == "LeftButton" and down == false then
		ABFactionBars["Bar8"]["Slot"]["Art"] = self.Text:GetText()
		abfOptions8Box1PopOut1.Text:SetText(self:GetText())
		abfOptions8Box1PopOut1Choice0:Hide()
		abfSavedArtSlot("MultiBar7", "Bar8")
	end
end)
for i = 1, 6, 1 do
	_G["abfOptions8Box1PopOut1Choice"..i]:SetParent(abfOptions8Box1PopOut1Choice0)
	_G["abfOptions8Box1PopOut1Choice"..i]:SetPoint("TOP", _G["abfOptions8Box1PopOut1Choice"..i-1], "BOTTOM", 0, 0)
	_G["abfOptions8Box1PopOut1Choice"..i]:HookScript("OnClick", function(self, button, down)
		if button == "LeftButton" and down == false then
			ABFactionBars["Bar8"]["Slot"]["Art"] = self.Text:GetText()
			abfOptions8Box1PopOut1.Text:SetText(self:GetText())
			abfOptions8Box1PopOut1Choice0:Hide()
			abfSavedArtSlot("MultiBar7", "Bar8")
		end
	end)
-- on leave --
	_G["abfOptions8Box1PopOut1Choice"..i]:HookScript("OnLeave", function(self) abfOptions8Box1PopOut1.Example:Hide() end)
end
-- entering the pop out buttons --
-- choice 1 --
abfOptions8Box1PopOut1Choice1:SetScript("OnEnter", function(self)
	abfOptions8Box1PopOut1.Example:SetAtlas("UI-HUD-ActionBar-IconFrame-Slot", false)
	abfOptions8Box1PopOut1.Example:Show()
end)
-- choice 2 --
abfOptions8Box1PopOut1Choice2:SetScript("OnEnter", function(self)
	abfOptions8Box1PopOut1.Example:SetAtlas("socket-prismatic-background", false)
	abfOptions8Box1PopOut1.Example:Show()
end)
-- choice 3 --
abfOptions8Box1PopOut1Choice3:SetScript("OnEnter", function(self)
	abfOptions8Box1PopOut1.Example:SetAtlas("CovenantSanctum-Text-Border-Nightfae", false)
	abfOptions8Box1PopOut1.Example:Show()
end)
-- choice 4 --
abfOptions8Box1PopOut1Choice4:SetScript("OnEnter", function(self)
	abfOptions8Box1PopOut1.Example:SetAtlas("CovenantSanctum-Text-Border-Kyrian", false)
	abfOptions8Box1PopOut1.Example:Show()
end)
-- choice 5 --
abfOptions8Box1PopOut1Choice5:SetScript("OnEnter", function(self)
	abfOptions8Box1PopOut1.Example:SetAtlas("CovenantSanctum-Text-Border-Necrolord", false)
	abfOptions8Box1PopOut1.Example:Show()
end)
-- choice 6 --
abfOptions8Box1PopOut1Choice6:SetScript("OnEnter", function(self)
	abfOptions8Box1PopOut1.Example:SetAtlas("CovenantSanctum-Text-Border-Venthyr", false)
	abfOptions8Box1PopOut1.Example:Show()
end)
-- pop out 2 Slot Art Color --
-- enter --
abfOptions8Box1PopOut2:SetScript("OnEnter", function(self)
	abfEnteringMenus(self)
	GameTooltip:SetText("|T"..C_AddOns.GetAddOnMetadata("ABF", "IconTexture")..":16|t"..abfMainColor:WrapTextInColorCode(C_AddOns.GetAddOnMetadata("ABF", "Title")).."|nChoose the color for|nthe Slot Art") 
end)
-- leave --
abfOptions8Box1PopOut2:SetScript("OnLeave", abfLeavingMenus)
-- drop down --
abfClickPopOut(abfOptions8Box1PopOut2, abfOptions8Box1PopOut2Choice0)
-- on click choice 0 --
abfOptions8Box1PopOut2Choice0.Text:SetText("Default Color")
abfOptions8Box1PopOut2Choice0:HookScript("OnClick", function(self, button, down)
	if button == "LeftButton" and down == false then
		ABFactionBars["Bar8"]["Slot"]["ArtColor"] = {r = 1, g = 1, b = 1, a = 1,}
		ABFactionBars["Bar8"]["Slot"]["ArtColorOptions"] = self:GetText()
		abfOptions8Box1PopOut2.Text:SetText(self:GetText())
		abfOptions8Box1PopOut2Choice0:Hide()
		abfSavedColorSlot("MultiBar7", "Bar8")
	end
end)
-- on click choice 1 --
abfOptions8Box1PopOut2Choice1:SetParent(abfOptions8Box1PopOut2Choice0)
abfOptions8Box1PopOut2Choice1:SetPoint("TOP", abfOptions8Box1PopOut2Choice0, "BOTTOM", 0, 0)
abfOptions8Box1PopOut2Choice1.Text:SetText("Custom Color")
abfOptions8Box1PopOut2Choice1:HookScript("OnClick", function(self, button, down)
	if button == "LeftButton" and down == false then
		ShowColorPicker("Slot", abfSavedColorSlot)
		ABFactionBars["Bar8"]["Slot"]["ArtColorOptions"] = self:GetText()
		abfOptions8Box1PopOut2.Text:SetText(self:GetText())
		abfOptions8Box1PopOut2Choice0:Hide()
	end
end)
-- Box 2 Edge Art --
-- pop out 1 Edge Art Choice --
-- enter --
abfOptions8Box2PopOut1:SetScript("OnEnter", function(self)
	abfEnteringMenus(self)
	GameTooltip:SetText("|T"..C_AddOns.GetAddOnMetadata("ABF", "IconTexture")..":16|t"..abfMainColor:WrapTextInColorCode(C_AddOns.GetAddOnMetadata("ABF", "Title")).."|nChoose the Edge Art for|nthe Action Bar 8") 
end)
-- leave --
abfOptions8Box2PopOut1:SetScript("OnLeave", abfLeavingMenus)
-- drop down --
abfClickPopOut(abfOptions8Box2PopOut1, abfOptions8Box2PopOut1Choice0)
-- sort & naming & clicking --
abfOptions8Box2PopOut1Choice0.Text:SetText("None")
abfOptions8Box2PopOut1Choice0:HookScript("OnClick", function(self, button, down)
	if button == "LeftButton" and down == false then
		ABFactionBars["Bar8"]["Edge"]["Art"] = self.Text:GetText()
		abfOptions8Box2PopOut1.Text:SetText(self:GetText())
		abfOptions8Box2PopOut1Choice0:Hide()
		abfSavedArtEdge("MultiBar7", MultiBar7, "Bar8")
	end
end)
for i = 1, 4, 1 do
	_G["abfOptions8Box2PopOut1Choice"..i]:SetParent(abfOptions8Box2PopOut1Choice0)
	_G["abfOptions8Box2PopOut1Choice"..i]:SetPoint("TOP", _G["abfOptions8Box2PopOut1Choice"..i-1], "BOTTOM", 0, 0)
	_G["abfOptions8Box2PopOut1Choice"..i]:HookScript("OnClick", function(self, button, down)
		if button == "LeftButton" and down == false then
			ABFactionBars["Bar8"]["Edge"]["Art"] = self.Text:GetText()
			abfOptions8Box2PopOut1.Text:SetText(self:GetText())
			abfOptions8Box2PopOut1Choice0:Hide()
			abfSavedArtEdge("MultiBar7", MultiBar7, "Bar8")
		end
	end)
-- on leave --
	_G["abfOptions8Box2PopOut1Choice"..i]:HookScript("OnLeave", function(self) abfOptions8Box2PopOut1.Example:Hide() end)
end
-- entering the pop out buttons --
-- choice 1 --
abfOptions8Box2PopOut1Choice1:SetScript("OnEnter", function(self)
	abfOptions8Box2PopOut1.Example:SetAtlas("UI-HUD-ActionBar-Gryphon-Right", false)
	abfOptions8Box2PopOut1.Example:Show()
end)
-- choice 2 --
abfOptions8Box2PopOut1Choice2:SetScript("OnEnter", function(self)
	abfOptions8Box2PopOut1.Example:SetAtlas("UI-HUD-ActionBar-Wyvern-Right", false)
	abfOptions8Box2PopOut1.Example:Show()
end)
-- choice 3 --
abfOptions8Box2PopOut1Choice3:SetScript("OnEnter", function(self)
	abfOptions8Box2PopOut1.Example:SetAtlas("UI-HUD-UnitFrame-Target-PortraitOn-Boss-Gold-Winged", false)
	abfOptions8Box2PopOut1.Example:Show()
end)
-- choice 4 --
abfOptions8Box2PopOut1Choice4:SetScript("OnEnter", function(self)
	abfOptions8Box2PopOut1.Example:SetAtlas("UI-HUD-UnitFrame-Target-PortraitOn-Boss-Gold", false)
	abfOptions8Box2PopOut1.Example:Show()
end)
-- pop out 2 Edge Art Color --
-- enter --
abfOptions8Box2PopOut2:SetScript("OnEnter", function(self)
	abfEnteringMenus(self)
	GameTooltip:SetText("|T"..C_AddOns.GetAddOnMetadata("ABF", "IconTexture")..":16|t"..abfMainColor:WrapTextInColorCode(C_AddOns.GetAddOnMetadata("ABF", "Title")).."|nChoose the color for|nthe Edge Art") 
end)
-- leave --
abfOptions8Box2PopOut2:SetScript("OnLeave", abfLeavingMenus)
-- drop down --
abfClickPopOut(abfOptions8Box2PopOut2, abfOptions8Box2PopOut2Choice0)
-- on click choice 0 --
abfOptions8Box2PopOut2Choice0.Text:SetText("Default Color")
abfOptions8Box2PopOut2Choice0:HookScript("OnClick", function(self, button, down)
	if button == "LeftButton" and down == false then
		ABFactionBars["Bar8"]["Edge"]["ArtColor"] = {r = 1, g = 1, b = 1, a = 1,}
		ABFactionBars["Bar8"]["Edge"]["ArtColorOptions"] = self:GetText()
		abfOptions8Box2PopOut2.Text:SetText(self:GetText())
		abfOptions8Box2PopOut2Choice0:Hide()
		abfSavedColorEdge("MultiBar7", "Bar8")
	end
end)
-- on click choice 1 --
abfOptions8Box2PopOut2Choice1:SetParent(abfOptions8Box2PopOut2Choice0)
abfOptions8Box2PopOut2Choice1:SetPoint("TOP", abfOptions8Box2PopOut2Choice0, "BOTTOM", 0, 0)
abfOptions8Box2PopOut2Choice1.Text:SetText("Custom Color")
abfOptions8Box2PopOut2Choice1:HookScript("OnClick", function(self, button, down)
	if button == "LeftButton" and down == false then
		ShowColorPicker("Edge", abfSavedColorEdge)
		ABFactionBars["Bar8"]["Edge"]["ArtColorOptions"] = self:GetText()
		abfOptions8Box2PopOut2.Text:SetText(self:GetText())
		abfOptions8Box2PopOut2Choice0:Hide()
	end
end)
-- pop out 3 Edge Art Animation --
-- enter --
abfOptions8Box2PopOut3:SetScript("OnEnter", function(self)
	abfEnteringMenus(self)
	GameTooltip:SetText("|T"..C_AddOns.GetAddOnMetadata("ABF", "IconTexture")..":16|t"..abfMainColor:WrapTextInColorCode(C_AddOns.GetAddOnMetadata("ABF", "Title")).."|nChoose an animation.|nNote: For the option Gryphon/Wyvern.|nPlease choose Gryphon or Wyvern at Edge Art.|nMore will come soon!")
end)
-- leave --
abfOptions8Box2PopOut3:SetScript("OnLeave", abfLeavingMenus)
-- drop down --
abfClickPopOut(abfOptions8Box2PopOut3, abfOptions8Box2PopOut3Choice0)
-- on click choice 0 --
abfOptions8Box2PopOut3Choice0.Text:SetText("None")
abfOptions8Box2PopOut3Choice0:HookScript("OnClick", function(self, button, down)
	if button == "LeftButton" and down == false then
		ABFactionBars["Bar8"]["Edge"]["Animation"] = self:GetText()
		abfOptions8Box2PopOut3.Text:SetText(self:GetText())
		abfOptions8Box2PopOut3Choice0:Hide()
		abfSavedAnimationEdgeArt("MultiBar7", "Bar8")
	end
end)
-- on click choice 1 --
abfOptions8Box2PopOut3Choice1:SetParent(abfOptions8Box2PopOut3Choice0)
abfOptions8Box2PopOut3Choice1:SetPoint("TOP", abfOptions8Box2PopOut3Choice0, "BOTTOM", 0, 0)
abfOptions8Box2PopOut3Choice1.Text:SetText("Gryphon/Wyvern")
abfOptions8Box2PopOut3Choice1:HookScript("OnClick", function(self, button, down)
	if button == "LeftButton" and down == false then
		ABFactionBars["Bar8"]["Edge"]["Animation"] = self:GetText()
		abfOptions8Box2PopOut3.Text:SetText(self:GetText())
		abfSavedAnimationEdgeArt("MultiBar7", "Bar8")
	end
end)
-- pop out 4 Edge Art Animation Color --
-- enter --
abfOptions8Box2PopOut4:SetScript("OnEnter", function(self)
	abfEnteringMenus(self)
	GameTooltip:SetText("|T"..C_AddOns.GetAddOnMetadata("ABF", "IconTexture")..":16|t"..abfMainColor:WrapTextInColorCode(C_AddOns.GetAddOnMetadata("ABF", "Title")).."|nChoose the color for|nthe Animation") 
end)
-- leave --
abfOptions8Box2PopOut4:SetScript("OnLeave", abfLeavingMenus)
-- drop down --
abfClickPopOut(abfOptions8Box2PopOut4, abfOptions8Box2PopOut4Choice0)
-- on click choice 0 --
abfOptions8Box2PopOut4Choice0.Text:SetText("Default Color")
abfOptions8Box2PopOut4Choice0:HookScript("OnClick", function(self, button, down)
	if button == "LeftButton" and down == false then
		ABFactionBars["Bar8"]["Edge"]["AnimationColor"] = {r = 1, g = 1, b = 1, a = 1,}
		ABFactionBars["Bar8"]["Edge"]["AnimationColorOptions"] = self:GetText()
		abfOptions8Box2PopOut4.Text:SetText(self:GetText())
		abfOptions8Box2PopOut4Choice0:Hide()
		abfSavedAnimationEdgeColor("Bar8")
	end
end)
-- on click choice 1 --
abfOptions8Box2PopOut4Choice1:SetParent(abfOptions8Box2PopOut4Choice0)
abfOptions8Box2PopOut4Choice1:SetPoint("TOP", abfOptions8Box2PopOut4Choice0, "BOTTOM", 0, 0)
abfOptions8Box2PopOut4Choice1.Text:SetText("Custom Color")
abfOptions8Box2PopOut4Choice1:HookScript("OnClick", function(self, button, down)
	if button == "LeftButton" and down == false then
		ShowColorPickerForAnimation("Edge", abfSavedAnimationEdgeColor)
		ABFactionBars["Bar8"]["Edge"]["AnimationColorOptions"] = self:GetText()
		abfOptions8Box2PopOut4.Text:SetText(self:GetText())
		abfOptions8Box2PopOut4Choice0:Hide()
	end
end)
-- Box 3 Top Art --
-- pop out 1 Top Art choice --
-- enter --
abfOptions8Box3PopOut1:SetScript("OnEnter", function(self)
	abfEnteringMenus(self)
	GameTooltip:SetText("|T"..C_AddOns.GetAddOnMetadata("ABF", "IconTexture")..":16|t"..abfMainColor:WrapTextInColorCode(C_AddOns.GetAddOnMetadata("ABF", "Title")).."|nChoose the Top Art for|nthe Action Bar 8") 
end)
-- leave --
abfOptions8Box3PopOut1:SetScript("OnLeave", abfLeavingMenus)
-- drop down --
abfClickPopOut(abfOptions8Box3PopOut1, abfOptions8Box3PopOut1Choice0)
-- sort & naming & clicking --
abfOptions8Box3PopOut1Choice0.Text:SetText("None")
abfOptions8Box3PopOut1Choice0:HookScript("OnClick", function(self, button, down)
	if button == "LeftButton" and down == false then
		ABFactionBars["Bar8"]["Top"]["Art"] = self.Text:GetText()
		abfOptions8Box3PopOut1.Text:SetText(self:GetText())
		abfOptions8Box3PopOut1Choice0:Hide()
		abfSavedArtTop("MultiBar7", "Bar8")
	end
end)
for i = 1, 2, 1 do
	_G["abfOptions8Box3PopOut1Choice"..i]:SetParent(abfOptions8Box3PopOut1Choice0)
	_G["abfOptions8Box3PopOut1Choice"..i]:SetPoint("TOP", _G["abfOptions8Box3PopOut1Choice"..i-1], "BOTTOM", 0, 0)
	_G["abfOptions8Box3PopOut1Choice"..i]:HookScript("OnClick", function(self, button, down)
		if button == "LeftButton" and down == false then
			ABFactionBars["Bar8"]["Top"]["Art"] = self.Text:GetText()
			abfOptions8Box3PopOut1.Text:SetText(self:GetText())
			abfOptions8Box3PopOut1Choice0:Hide()
			abfSavedArtTop("MultiBar7", "Bar8")
		end
	end)
-- on leave --
	_G["abfOptions8Box3PopOut1Choice"..i]:HookScript("OnLeave", function(self) abfOptions8Box3PopOut1.Example:Hide() abfOptions8Box3PopOut1.Example1:Hide() end)
end
-- entering the pop out buttons --
-- choice 1 --
abfOptions8Box3PopOut1Choice1:SetScript("OnEnter", function(self)
	abfOptions8Box3PopOut1.Example:SetAtlas("jailerstower-score-topper", false)
	abfOptions8Box3PopOut1.Example:ClearAllPoints()
	abfOptions8Box3PopOut1.Example:SetPoint("RIGHT", abfOptions8Box3PopOut1, "LEFT", 64, 0)
	abfOptions8Box3PopOut1.Example:SetSize(315, 48)
	abfOptions8Box3PopOut1.Example:Show()
end)
-- choice 2 --
abfOptions8Box3PopOut1Choice2:SetScript("OnEnter", function(self)
	abfOptions8Box3PopOut1.Example:SetAtlas("BossBanner-RightFillagree", false)
	abfOptions8Box3PopOut1.Example:ClearAllPoints()
	abfOptions8Box3PopOut1.Example:SetPoint("RIGHT", abfOptions8Box3PopOut1, "LEFT", 0, 16)
	abfOptions8Box3PopOut1.Example:SetSize(48, 48)
	abfOptions8Box3PopOut1.Example:Show()
	abfOptions8Box3PopOut1.Example1:SetAtlas("BossBanner-LeftFillagree", false)
	abfOptions8Box3PopOut1.Example1:Show()
end)
-- pop out 2 Top Art Color --
-- enter --
abfOptions8Box3PopOut2:SetScript("OnEnter", function(self)
	abfEnteringMenus(self)
	GameTooltip:SetText("|T"..C_AddOns.GetAddOnMetadata("ABF", "IconTexture")..":16|t"..abfMainColor:WrapTextInColorCode(C_AddOns.GetAddOnMetadata("ABF", "Title")).."|nChoose the color for|nthe Top Art") 
end)
-- leave --
abfOptions8Box3PopOut2:SetScript("OnLeave", abfLeavingMenus)
-- drop down --
abfClickPopOut(abfOptions8Box3PopOut2, abfOptions8Box3PopOut2Choice0)
-- on click choice 0 --
abfOptions8Box3PopOut2Choice0.Text:SetText("Default Color")
abfOptions8Box3PopOut2Choice0:HookScript("OnClick", function(self, button, down)
	if button == "LeftButton" and down == false then
		ABFactionBars["Bar8"]["Top"]["ArtColor"] = {r = 1, g = 1, b = 1, a = 1,}
		ABFactionBars["Bar8"]["Top"]["ArtColorOptions"] = self:GetText()
		abfOptions8Box3PopOut2.Text:SetText(self:GetText())
		abfOptions8Box3PopOut2Choice0:Hide()
		abfSavedColorTop("MultiBar7", "Bar8")
	end
end)
-- on click choice 1 --
abfOptions8Box3PopOut2Choice1:SetParent(abfOptions8Box3PopOut2Choice0)
abfOptions8Box3PopOut2Choice1:SetPoint("TOP", abfOptions8Box3PopOut2Choice0, "BOTTOM", 0, 0)
abfOptions8Box3PopOut2Choice1.Text:SetText("Custom Color")
abfOptions8Box3PopOut2Choice1:HookScript("OnClick", function(self, button, down)
	if button == "LeftButton" and down == false then
		ShowColorPicker("Top", abfSavedColorTop)
		ABFactionBars["Bar8"]["Top"]["ArtColorOptions"] = self:GetText()
		abfOptions8Box3PopOut2.Text:SetText(self:GetText())
		abfOptions8Box3PopOut2Choice0:Hide()
	end
end)
-- pop out 3 Top Art Animation --
-- enter --
abfOptions8Box3PopOut3:SetScript("OnEnter", function(self)
	abfEnteringMenus(self)
	GameTooltip:SetText("|T"..C_AddOns.GetAddOnMetadata("ABF", "IconTexture")..":16|t"..abfMainColor:WrapTextInColorCode(C_AddOns.GetAddOnMetadata("ABF", "Title")).."|nDo you want the animation for|nthe Top Art to be visible?|nNote: There is only one animation.|nMore will come soon!")
end)
-- leave --
abfOptions8Box3PopOut3:SetScript("OnLeave", abfLeavingMenus)
-- drop down --
abfClickPopOut(abfOptions8Box3PopOut3, abfOptions8Box3PopOut3Choice0)
-- on click choice 0 --
abfOptions8Box3PopOut3Choice0.Text:SetText("None")
abfOptions8Box3PopOut3Choice0:HookScript("OnClick", function(self, button, down)
	if button == "LeftButton" and down == false then
		ABFactionBars["Bar8"]["Top"]["Animation"] = self:GetText()
		abfOptions8Box3PopOut3.Text:SetText(self:GetText())
		abfOptions8Box3PopOut3Choice0:Hide()
		abfSavedAnimationTopArt("MultiBar7", "Bar8")
	end
end)
-- on click choice 1 --
abfOptions8Box3PopOut3Choice1:SetParent(abfOptions8Box3PopOut3Choice0)
abfOptions8Box3PopOut3Choice1:SetPoint("TOP", abfOptions8Box3PopOut3Choice0, "BOTTOM", 0, 0)
abfOptions8Box3PopOut3Choice1.Text:SetText("MissionLine")
abfOptions8Box3PopOut3Choice1:HookScript("OnClick", function(self, button, down)
	if button == "LeftButton" and down == false then
		ABFactionBars["Bar8"]["Top"]["Animation"] = self:GetText()
		abfOptions8Box3PopOut3.Text:SetText(self:GetText())
		abfOptions8Box3PopOut3Choice0:Hide()
		abfSavedAnimationTopArt("MultiBar7", "Bar8")
	end
end)
-- pop out 4 Top Art Animation Color --
-- enter --
abfOptions8Box3PopOut4:SetScript("OnEnter", function(self)
	abfEnteringMenus(self)
	GameTooltip:SetText("|T"..C_AddOns.GetAddOnMetadata("ABF", "IconTexture")..":16|t"..abfMainColor:WrapTextInColorCode(C_AddOns.GetAddOnMetadata("ABF", "Title")).."|nChoose the color for|nthe Animation") 
end)
-- leave --
abfOptions8Box3PopOut4:SetScript("OnLeave", abfLeavingMenus)
-- drop down --
abfClickPopOut(abfOptions8Box3PopOut4, abfOptions8Box3PopOut4Choice0)
-- on click choice 0 --
abfOptions8Box3PopOut4Choice0.Text:SetText("Default Color")
abfOptions8Box3PopOut4Choice0:HookScript("OnClick", function(self, button, down)
	if button == "LeftButton" and down == false then
		ABFactionBars["Bar8"]["Top"]["AnimationColor"] = {r = 1, g = 1, b = 1, a = 1,}
		ABFactionBars["Bar8"]["Top"]["AnimationColorOptions"] = self:GetText()
		abfOptions8Box3PopOut4.Text:SetText(self:GetText())
		abfOptions8Box3PopOut4Choice0:Hide()
		abfSavedAnimationTopColor("Bar8")
	end
end)
-- on click choice 1 --
abfOptions8Box3PopOut4Choice1:SetParent(abfOptions8Box3PopOut4Choice0)
abfOptions8Box3PopOut4Choice1:SetPoint("TOP", abfOptions8Box3PopOut4Choice0, "BOTTOM", 0, 0)
abfOptions8Box3PopOut4Choice1.Text:SetText("Custom Color")
abfOptions8Box3PopOut4Choice1:HookScript("OnClick", function(self, button, down)
	if button == "LeftButton" and down == false then
		ShowColorPickerForAnimation("Top", abfSavedAnimationTopColor)
		ABFactionBars["Bar8"]["Top"]["AnimationColorOptions"] = self:GetText()
		abfOptions8Box3PopOut4.Text:SetText(self:GetText())
		abfOptions8Box3PopOut4Choice0:Hide()
	end
end)
-- Box 4 Bottom Art --
-- pop out 1 Bottom Art choice --
-- enter --
abfOptions8Box4PopOut1:SetScript("OnEnter", function(self)
	abfEnteringMenus(self)
	GameTooltip:SetText("|T"..C_AddOns.GetAddOnMetadata("ABF", "IconTexture")..":16|t"..abfMainColor:WrapTextInColorCode(C_AddOns.GetAddOnMetadata("ABF", "Title")).."|nChoose the Bottom Art for|nthe Action Bar 8") 
end)
-- leave --
abfOptions8Box4PopOut1:SetScript("OnLeave", abfLeavingMenus)
-- drop down --
abfClickPopOut(abfOptions8Box4PopOut1, abfOptions8Box4PopOut1Choice0)
-- sort & naming & clicking --
abfOptions8Box4PopOut1Choice0.Text:SetText("None")
abfOptions8Box4PopOut1Choice0:HookScript("OnClick", function(self, button, down)
	if button == "LeftButton" and down == false then
		ABFactionBars["Bar8"]["Bottom"]["Art"] = self.Text:GetText()
		abfOptions8Box4PopOut1.Text:SetText(self:GetText())
		abfOptions8Box4PopOut1Choice0:Hide()
		abfSavedArtBottom("MultiBar7", "Bar8")
	end
end)
for i = 1, 2, 1 do
	_G["abfOptions8Box4PopOut1Choice"..i]:SetParent(abfOptions8Box4PopOut1Choice0)
	_G["abfOptions8Box4PopOut1Choice"..i]:SetPoint("TOP", _G["abfOptions8Box4PopOut1Choice"..i-1], "BOTTOM", 0, 0)
	_G["abfOptions8Box4PopOut1Choice"..i]:HookScript("OnClick", function(self, button, down)
		if button == "LeftButton" and down == false then
			ABFactionBars["Bar8"]["Bottom"]["Art"] = self.Text:GetText()
			abfOptions8Box4PopOut1.Text:SetText(self:GetText())
			abfOptions8Box4PopOut1Choice0:Hide()
			abfSavedArtBottom("MultiBar7", "Bar8")
		end
	end)
-- on leave --
	_G["abfOptions8Box4PopOut1Choice"..i]:HookScript("OnLeave", function(self) abfOptions8Box4PopOut1.Example:Hide() end)
end
-- entering the pop out buttons --
-- choice 1 --
abfOptions8Box4PopOut1Choice1:SetScript("OnEnter", function(self)
	abfOptions8Box4PopOut1.Example:SetAtlas("UI-Achievement-Border-7", false)
	abfOptions8Box4PopOut1.Example:Show()
end)
-- choice 2 --
abfOptions8Box4PopOut1Choice2:SetScript("OnEnter", function(self)
	abfOptions8Box4PopOut1.Example:SetAtlas("AftLevelup-SoftCloud", false)
	abfOptions8Box4PopOut1.Example:Show()
end)
-- pop out 2 Bottom Art Color --
-- enter --
abfOptions8Box4PopOut2:SetScript("OnEnter", function(self)
	abfEnteringMenus(self)
	GameTooltip:SetText("|T"..C_AddOns.GetAddOnMetadata("ABF", "IconTexture")..":16|t"..abfMainColor:WrapTextInColorCode(C_AddOns.GetAddOnMetadata("ABF", "Title")).."|nChoose the color for|nthe Bottom Art") 
end)
-- leave --
abfOptions8Box4PopOut2:SetScript("OnLeave", abfLeavingMenus)
-- drop down --
abfClickPopOut(abfOptions8Box4PopOut2, abfOptions8Box4PopOut2Choice0)
-- on click choice 0 --
abfOptions8Box4PopOut2Choice0.Text:SetText("Default Color")
abfOptions8Box4PopOut2Choice0:HookScript("OnClick", function(self, button, down)
	if button == "LeftButton" and down == false then
		ABFactionBars["Bar8"]["Bottom"]["ArtColor"] = {r = 1, g = 1, b = 1, a = 1,}
		ABFactionBars["Bar8"]["Bottom"]["ArtColorOptions"] = self:GetText()
		abfOptions8Box4PopOut2.Text:SetText(self:GetText())
		abfOptions8Box4PopOut2Choice0:Hide()
		abfSavedColorBottom("MultiBar7", "Bar8")
	end
end)
-- on click choice 1 --
abfOptions8Box4PopOut2Choice1:SetParent(abfOptions8Box4PopOut2Choice0)
abfOptions8Box4PopOut2Choice1:SetPoint("TOP", abfOptions8Box4PopOut2Choice0, "BOTTOM", 0, 0)
abfOptions8Box4PopOut2Choice1.Text:SetText("Custom Color")
abfOptions8Box4PopOut2Choice1:HookScript("OnClick", function(self, button, down)
	if button == "LeftButton" and down == false then
		ShowColorPicker("Bottom", abfSavedColorBottom)
		ABFactionBars["Bar8"]["Bottom"]["ArtColorOptions"] = self:GetText()
		abfOptions8Box4PopOut2.Text:SetText(self:GetText())
		abfOptions8Box4PopOut2Choice0:Hide()
	end
end)
-- Showing the panel --
abfOptions8:HookScript("OnShow", function(self)
	CheckSavedVariables()
	if abfOptions1:IsShown() then abfOptions1:Hide() end
	if abfOptions2:IsShown() then abfOptions2:Hide() end
	if abfOptions3:IsShown() then abfOptions3:Hide() end
	if abfOptions4:IsShown() then abfOptions4:Hide() end
	if abfOptions5:IsShown() then abfOptions5:Hide() end
	if abfOptions6:IsShown() then abfOptions6:Hide() end
	if abfOptions7:IsShown() then abfOptions7:Hide() end
	if abfOptions9:IsShown() then abfOptions9:Hide() end
	if abfOptions10:IsShown() then abfOptions10:Hide() end
	abfOptions00Tab1.Text:SetTextColor(abfMainColor:GetRGB())
	abfOptions00Tab2.Text:SetTextColor(abfMainColor:GetRGB())
	abfOptions00Tab3.Text:SetTextColor(abfMainColor:GetRGB())
	abfOptions00Tab4.Text:SetTextColor(abfMainColor:GetRGB())
	abfOptions00Tab5.Text:SetTextColor(abfMainColor:GetRGB())
	abfOptions00Tab6.Text:SetTextColor(abfMainColor:GetRGB())
	abfOptions00Tab7.Text:SetTextColor(abfMainColor:GetRGB())
	abfOptions00Tab8.Text:SetTextColor(abfHighColor:GetRGB())
	abfOptions00Tab9.Text:SetTextColor(abfMainColor:GetRGB())
	abfOptions00Tab10.Text:SetTextColor(abfMainColor:GetRGB())
end)