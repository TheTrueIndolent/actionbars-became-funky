-- text box 1 --
abfOptions1Box1.TitleTxt:SetText("Read me!!!")
abfOptions1Box1.CenterText:SetText("|T"..C_AddOns.GetAddOnMetadata("ABF", "IconTexture")..":16|t"..abfHighColor:WrapTextInColorCode(" Note: ").."Before setting up the add on, you "..abfHighColor:WrapTextInColorCode("MUST").." go to Game Menu ("..abfHighColor:WrapTextInColorCode("ESC")..") --> "..abfHighColor:WrapTextInColorCode("Edit Mode").." --> Choose the "..abfHighColor:WrapTextInColorCode("Action Bar 1").." and choose - check the ‘"..abfHighColor:WrapTextInColorCode("Hide Bar Art").."’ option. The Bar Art "..abfHighColor:WrapTextInColorCode("MUST").." be hidden, so it won’t cause any trouble.")
-- takeing care the rest boxes --
for i = 2, 5, 1 do
	_G["abfOptions1Box"..i]:SetPoint("TOP", _G["abfOptions1Box"..i-1], "BOTTOM", 0, 0)
end
abfOptions1Box2.TitleTxt:SetText("Slot Art & Art Color")
abfOptions1Box3.TitleTxt:SetText("Edge Art & Art Color|nEdge Animation & Animation Color")
abfOptions1Box4.TitleTxt:SetText("Top Art & Art Color|nTop Animation & Animation Color")
abfOptions1Box5.TitleTxt:SetText("Bottom Art & Art Color")
-- creating the color picker --
local function ShowColorPicker(text, com)
	local function OnColorChanged()
		local newR, newG, newB = ColorPickerFrame:GetColorRGB()
		local newA = ColorPickerFrame:GetColorAlpha()
		ABFactionBars["Bar1"][text]["ArtColor"] = CreateColor(newR, newG, newB, newA)
		com("Action", "Bar1")
	end
	local function OnCancel()
		ABFactionBars["Bar1"][text]["ArtColor"] = CreateColor(1, 1, 1, 1)
		com("Action", "Bar1")
	end
	local options = {
		swatchFunc = OnColorChanged,
		opacityFunc = OnColorChanged,
		cancelFunc = OnCancel,
		hasOpacity = true,
		opacity = ABFactionBars["Bar1"][text]["ArtColor"]["a"],
		r = ABFactionBars["Bar1"][text]["ArtColor"]["r"],
		g = ABFactionBars["Bar1"][text]["ArtColor"]["g"],
		b = ABFactionBars["Bar1"][text]["ArtColor"]["b"],
	}
	ColorPickerFrame:SetupColorPickerAndShow(options)
end
-- creating the color picker for Animation --
local function ShowColorPickerForAnimation(text, com)
	local function OnColorChanged()
		local newR, newG, newB = ColorPickerFrame:GetColorRGB()
		local newA = ColorPickerFrame:GetColorAlpha()
		ABFactionBars["Bar1"][text]["AnimationColor"] = CreateColor(newR, newG, newB, newA)
		com("Bar1")
	end
	local function OnCancel()
		ABFactionBars["Bar1"][text]["AnimationColor"] = CreateColor(1, 1, 1, 1)
		com("Bar1")
	end
	local options = {
		swatchFunc = OnColorChanged,
		opacityFunc = OnColorChanged,
		cancelFunc = OnCancel,
		hasOpacity = true,
		opacity = ABFactionBars["Bar1"][text]["AnimationColor"]["a"],
		r = ABFactionBars["Bar1"][text]["AnimationColor"]["r"],
		g = ABFactionBars["Bar1"][text]["AnimationColor"]["g"],
		b = ABFactionBars["Bar1"][text]["AnimationColor"]["b"],
	}
	ColorPickerFrame:SetupColorPickerAndShow(options)
end
-- Checking the Saved Variables --
local function CheckSavedVariables()
-- Box 2, Pop out 1 --
	abfOptions1Box2PopOut1.Text:SetText(ABFactionBars["Bar1"]["Slot"]["Art"])
-- Box 2, Pop out 2 --
	abfOptions1Box2PopOut2.Text:SetText(ABFactionBars["Bar1"]["Slot"]["ArtColorOptions"])
-- Box 3, Pop out 1 --
	abfOptions1Box3PopOut1.Text:SetText(ABFactionBars["Bar1"]["Edge"]["Art"])
-- Box 3, Pop out 2 --
	abfOptions1Box3PopOut2.Text:SetText(ABFactionBars["Bar1"]["Edge"]["ArtColorOptions"])
-- Box 3, Pop out 3 --
	abfOptions1Box3PopOut3.Text:SetText(ABFactionBars["Bar1"]["Edge"]["Animation"])
-- Box 3, Pop out 4 --
	abfOptions1Box3PopOut4.Text:SetText(ABFactionBars["Bar1"]["Edge"]["AnimationColorOptions"])
-- Box 4, Pop out 1 --
	abfOptions1Box4PopOut1.Text:SetText(ABFactionBars["Bar1"]["Top"]["Art"])
-- Box 4, Pop out 2 --
	abfOptions1Box4PopOut2.Text:SetText(ABFactionBars["Bar1"]["Top"]["ArtColorOptions"])
-- Box 4, Pop out 3 --
	abfOptions1Box4PopOut3.Text:SetText(ABFactionBars["Bar1"]["Top"]["Animation"])
-- Box 4, Pop out 4 --
	abfOptions1Box4PopOut4.Text:SetText(ABFactionBars["Bar1"]["Top"]["AnimationColorOptions"])
-- Box 5, Pop out 1 --
	abfOptions1Box5PopOut1.Text:SetText(ABFactionBars["Bar1"]["Bottom"]["Art"])
-- Box 5, Pop out 2 --
	abfOptions1Box5PopOut2.Text:SetText(ABFactionBars["Bar1"]["Bottom"]["ArtColorOptions"])
end
-- Box 2 Slot Art --
-- pop out 1 Slot Art Choice --
-- enter --
abfOptions1Box2PopOut1:SetScript("OnEnter", function(self)
	abfEnteringMenus(self)
	GameTooltip:SetText("|T"..C_AddOns.GetAddOnMetadata("ABF", "IconTexture")..":16|t"..abfMainColor:WrapTextInColorCode(C_AddOns.GetAddOnMetadata("ABF", "Title")).."|nChoose the Slot Art for|nthe Action Bar 1") 
end)
-- leave --
abfOptions1Box2PopOut1:SetScript("OnLeave", abfLeavingMenus)
-- drop down --
abfClickPopOut(abfOptions1Box2PopOut1, abfOptions1Box2PopOut1Choice0)
-- sort & naming & clicking --
abfOptions1Box2PopOut1Choice0.Text:SetText("None")
abfOptions1Box2PopOut1Choice0:HookScript("OnClick", function(self, button, down)
	if button == "LeftButton" and down == false then
		ABFactionBars["Bar1"]["Slot"]["Art"] = self.Text:GetText()
		abfOptions1Box2PopOut1.Text:SetText(self:GetText())
		abfOptions1Box2PopOut1Choice0:Hide()
		abfSavedArtSlot("Action", "Bar1")
	end
end)
abfOptions1Box2PopOut1Choice1.Text:SetText("SlotArt")
abfOptions1Box2PopOut1Choice2.Text:SetText("SlotArt2")
abfOptions1Box2PopOut1Choice3.Text:SetText("Nightfae")
abfOptions1Box2PopOut1Choice4.Text:SetText("Kyrian")
abfOptions1Box2PopOut1Choice5.Text:SetText("Necrolord")
abfOptions1Box2PopOut1Choice6.Text:SetText("Venthyr")
for i = 1, 6, 1 do
	_G["abfOptions1Box2PopOut1Choice"..i]:SetParent(abfOptions1Box2PopOut1Choice0)
	_G["abfOptions1Box2PopOut1Choice"..i]:SetPoint("TOP", _G["abfOptions1Box2PopOut1Choice"..i-1], "BOTTOM", 0, 0)
	_G["abfOptions1Box2PopOut1Choice"..i]:HookScript("OnClick", function(self, button, down)
		if button == "LeftButton" and down == false then
			ABFactionBars["Bar1"]["Slot"]["Art"] = self.Text:GetText()
			abfOptions1Box2PopOut1.Text:SetText(self:GetText())
			abfOptions1Box2PopOut1Choice0:Hide()
			abfSavedArtSlot("Action", "Bar1")
		end
	end)
-- on leave --
	_G["abfOptions1Box2PopOut1Choice"..i]:HookScript("OnLeave", function(self) abfOptions1Box2PopOut1.Example:Hide() end)
end
-- entering the pop out buttons --
-- choice 1 --
abfOptions1Box2PopOut1Choice1:SetScript("OnEnter", function(self)
	abfOptions1Box2PopOut1.Example:SetAtlas("UI-HUD-ActionBar-IconFrame-Slot", false)
	abfOptions1Box2PopOut1.Example:Show()
end)
-- choice 2 --
abfOptions1Box2PopOut1Choice2:SetScript("OnEnter", function(self)
	abfOptions1Box2PopOut1.Example:SetAtlas("socket-prismatic-background", false)
	abfOptions1Box2PopOut1.Example:Show()
end)
-- choice 3 --
abfOptions1Box2PopOut1Choice3:SetScript("OnEnter", function(self)
	abfOptions1Box2PopOut1.Example:SetAtlas("CovenantSanctum-Text-Border-Nightfae", false)
	abfOptions1Box2PopOut1.Example:Show()
end)
-- choice 4 --
abfOptions1Box2PopOut1Choice4:SetScript("OnEnter", function(self)
	abfOptions1Box2PopOut1.Example:SetAtlas("CovenantSanctum-Text-Border-Kyrian", false)
	abfOptions1Box2PopOut1.Example:Show()
end)
-- choice 5 --
abfOptions1Box2PopOut1Choice5:SetScript("OnEnter", function(self)
	abfOptions1Box2PopOut1.Example:SetAtlas("CovenantSanctum-Text-Border-Necrolord", false)
	abfOptions1Box2PopOut1.Example:Show()
end)
-- choice 6 --
abfOptions1Box2PopOut1Choice6:SetScript("OnEnter", function(self)
	abfOptions1Box2PopOut1.Example:SetAtlas("CovenantSanctum-Text-Border-Venthyr", false)
	abfOptions1Box2PopOut1.Example:Show()
end)
-- pop out 2 Slot Art Color --
-- enter --
abfOptions1Box2PopOut2:SetScript("OnEnter", function(self)
	abfEnteringMenus(self)
	GameTooltip:SetText("|T"..C_AddOns.GetAddOnMetadata("ABF", "IconTexture")..":16|t"..abfMainColor:WrapTextInColorCode(C_AddOns.GetAddOnMetadata("ABF", "Title")).."|nChoose the color for|nthe Slot Art") 
end)
-- leave --
abfOptions1Box2PopOut2:SetScript("OnLeave", abfLeavingMenus)
-- drop down --
abfClickPopOut(abfOptions1Box2PopOut2, abfOptions1Box2PopOut2Choice0)
-- on click choice 0 --
abfOptions1Box2PopOut2Choice0.Text:SetText("Default Color")
abfOptions1Box2PopOut2Choice0:HookScript("OnClick", function(self, button, down)
	if button == "LeftButton" and down == false then
		ABFactionBars["Bar1"]["Slot"]["ArtColor"] = {r = 1, g = 1, b = 1, a = 1,}
		ABFactionBars["Bar1"]["Slot"]["ArtColorOptions"] = self:GetText()
		abfOptions1Box2PopOut2.Text:SetText(self:GetText())
		abfOptions1Box2PopOut2Choice0:Hide()
		abfSavedColorSlot("Action", "Bar1")
	end
end)
-- on click choice 1 --
abfOptions1Box2PopOut2Choice1:SetParent(abfOptions1Box2PopOut2Choice0)
abfOptions1Box2PopOut2Choice1:SetPoint("TOP", abfOptions1Box2PopOut2Choice0, "BOTTOM", 0, 0)
abfOptions1Box2PopOut2Choice1.Text:SetText("Custom Color")
abfOptions1Box2PopOut2Choice1:HookScript("OnClick", function(self, button, down)
	if button == "LeftButton" and down == false then
		ShowColorPicker("Slot", abfSavedColorSlot)
		abfOptions1Box2PopOut2.Text:SetText(self:GetText())
		ABFactionBars["Bar1"]["Slot"]["ArtColorOptions"] = self:GetText()
		abfOptions1Box2PopOut2Choice0:Hide()
	end
end)
-- Box 3 Edge Art --
-- pop out 1 Edge Art Choice --
-- enter --
abfOptions1Box3PopOut1:SetScript("OnEnter", function(self)
	abfEnteringMenus(self)
	GameTooltip:SetText("|T"..C_AddOns.GetAddOnMetadata("ABF", "IconTexture")..":16|t"..abfMainColor:WrapTextInColorCode(C_AddOns.GetAddOnMetadata("ABF", "Title")).."|nChoose the Edge Art for|nthe Action Bar 1") 
end)
-- leave --
abfOptions1Box3PopOut1:SetScript("OnLeave", abfLeavingMenus)
-- drop down --
abfClickPopOut(abfOptions1Box3PopOut1, abfOptions1Box3PopOut1Choice0)
-- sort & naming & clicking --
abfOptions1Box3PopOut1Choice0.Text:SetText("None")
abfOptions1Box3PopOut1Choice0:HookScript("OnClick", function(self, button, down)
	if button == "LeftButton" and down == false then
		ABFactionBars["Bar1"]["Edge"]["Art"] = self.Text:GetText()
		abfOptions1Box3PopOut1.Text:SetText(self:GetText())
		abfOptions1Box3PopOut1Choice0:Hide()
		abfSavedArtEdge("Action", MainMenuBar, "Bar1")
	end
end)
abfOptions1Box3PopOut1Choice1.Text:SetText("Gryphon")
abfOptions1Box3PopOut1Choice2.Text:SetText("Wyvern")
abfOptions1Box3PopOut1Choice3.Text:SetText("WingedDragon")
abfOptions1Box3PopOut1Choice4.Text:SetText("Dragon")
for i = 1, 4, 1 do
	_G["abfOptions1Box3PopOut1Choice"..i]:SetParent(abfOptions1Box3PopOut1Choice0)
	_G["abfOptions1Box3PopOut1Choice"..i]:SetPoint("TOP", _G["abfOptions1Box3PopOut1Choice"..i-1], "BOTTOM", 0, 0)
	_G["abfOptions1Box3PopOut1Choice"..i]:HookScript("OnClick", function(self, button, down)
		if button == "LeftButton" and down == false then
			ABFactionBars["Bar1"]["Edge"]["Art"] = self.Text:GetText()
			abfOptions1Box3PopOut1.Text:SetText(self:GetText())
			abfOptions1Box3PopOut1Choice0:Hide()
			abfSavedArtEdge("Action", MainMenuBar, "Bar1")
			abfSavedAnimationEdgeArt("Action", "Bar1")
		end
	end)
-- on leave --
	_G["abfOptions1Box3PopOut1Choice"..i]:HookScript("OnLeave", function(self) abfOptions1Box3PopOut1.Example:Hide() end)
end
-- entering the pop out buttons --
-- choice 1 --
abfOptions1Box3PopOut1Choice1:SetScript("OnEnter", function(self)
	abfOptions1Box3PopOut1.Example:SetAtlas("UI-HUD-ActionBar-Gryphon-Right", false)
	abfOptions1Box3PopOut1.Example:Show()
end)
-- choice 2 --
abfOptions1Box3PopOut1Choice2:SetScript("OnEnter", function(self)
	abfOptions1Box3PopOut1.Example:SetAtlas("UI-HUD-ActionBar-Wyvern-Right", false)
	abfOptions1Box3PopOut1.Example:Show()
end)
-- choice 3 --
abfOptions1Box3PopOut1Choice3:SetScript("OnEnter", function(self)
	abfOptions1Box3PopOut1.Example:SetAtlas("UI-HUD-UnitFrame-Target-PortraitOn-Boss-Gold-Winged", false)
	abfOptions1Box3PopOut1.Example:Show()
end)
-- choice 4 --
abfOptions1Box3PopOut1Choice4:SetScript("OnEnter", function(self)
	abfOptions1Box3PopOut1.Example:SetAtlas("UI-HUD-UnitFrame-Target-PortraitOn-Boss-Gold", false)
	abfOptions1Box3PopOut1.Example:Show()
end)
-- pop out 2 Edge Art Color --
-- enter --
abfOptions1Box3PopOut2:SetScript("OnEnter", function(self)
	abfEnteringMenus(self)
	GameTooltip:SetText("|T"..C_AddOns.GetAddOnMetadata("ABF", "IconTexture")..":16|t"..abfMainColor:WrapTextInColorCode(C_AddOns.GetAddOnMetadata("ABF", "Title")).."|nChoose the color for|nthe Edge Art") 
end)
-- leave --
abfOptions1Box3PopOut2:SetScript("OnLeave", abfLeavingMenus)
-- drop down --
abfClickPopOut(abfOptions1Box3PopOut2, abfOptions1Box3PopOut2Choice0)
-- on click choice 0 --
abfOptions1Box3PopOut2Choice0.Text:SetText("Default Color")
abfOptions1Box3PopOut2Choice0:HookScript("OnClick", function(self, button, down)
	if button == "LeftButton" and down == false then
		ABFactionBars["Bar1"]["Edge"]["ArtColor"] = {r = 1, g = 1, b = 1, a = 1,}
		ABFactionBars["Bar1"]["Edge"]["ArtColorOptions"] = self:GetText()
		abfOptions1Box3PopOut2.Text:SetText(self:GetText())
		abfOptions1Box3PopOut2Choice0:Hide()
		abfSavedColorEdge("Action", "Bar1")
	end
end)
-- on click choice 1 --
abfOptions1Box3PopOut2Choice1:SetParent(abfOptions1Box3PopOut2Choice0)
abfOptions1Box3PopOut2Choice1:SetPoint("TOP", abfOptions1Box3PopOut2Choice0, "BOTTOM", 0, 0)
abfOptions1Box3PopOut2Choice1.Text:SetText("Custom Color")
abfOptions1Box3PopOut2Choice1:HookScript("OnClick", function(self, button, down)
	if button == "LeftButton" and down == false then
		ShowColorPicker("Edge", abfSavedColorEdge)
		ABFactionBars["Bar1"]["Edge"]["ArtColorOptions"] = self:GetText()
		abfOptions1Box3PopOut2.Text:SetText(self:GetText())
		abfOptions1Box3PopOut2Choice0:Hide()
	end
end)
-- pop out 3 Edge Art Animation --
-- enter --
abfOptions1Box3PopOut3:SetScript("OnEnter", function(self)
	abfEnteringMenus(self)
	GameTooltip:SetText("|T"..C_AddOns.GetAddOnMetadata("ABF", "IconTexture")..":16|t"..abfMainColor:WrapTextInColorCode(C_AddOns.GetAddOnMetadata("ABF", "Title")).."|nChoose an animation.|nNote: For the option Gryphon/Wyvern.|nPlease choose Gryphon or Wyvern at Edge Art.|nMore will come soon!")
end)
-- leave --
abfOptions1Box3PopOut3:SetScript("OnLeave", abfLeavingMenus)
-- drop down --
abfClickPopOut(abfOptions1Box3PopOut3, abfOptions1Box3PopOut3Choice0)
-- on click choice 0 --
abfOptions1Box3PopOut3Choice0.Text:SetText("None")
abfOptions1Box3PopOut3Choice0:HookScript("OnClick", function(self, button, down)
	if button == "LeftButton" and down == false then
		ABFactionBars["Bar1"]["Edge"]["Animation"] = self:GetText()
		abfOptions1Box3PopOut3.Text:SetText(self:GetText())
		abfOptions1Box3PopOut3Choice0:Hide()
		abfSavedAnimationEdgeArt("Action", "Bar1")
	end
end)
-- on click choice 1 --
abfOptions1Box3PopOut3Choice1:SetParent(abfOptions1Box3PopOut3Choice0)
abfOptions1Box3PopOut3Choice1:SetPoint("TOP", abfOptions1Box3PopOut3Choice0, "BOTTOM", 0, 0)
abfOptions1Box3PopOut3Choice1.Text:SetText("Gryphon/Wyvern")
abfOptions1Box3PopOut3Choice1:HookScript("OnClick", function(self, button, down)
	if button == "LeftButton" and down == false then
		ABFactionBars["Bar1"]["Edge"]["Animation"] = self:GetText()
		abfOptions1Box3PopOut3.Text:SetText(self:GetText())
		abfOptions1Box3PopOut3Choice0:Hide()
		abfSavedAnimationEdgeArt("Action", "Bar1")
	end
end)
-- pop out 4 Edge Art Animation Color --
-- enter --
abfOptions1Box3PopOut4:SetScript("OnEnter", function(self)
	abfEnteringMenus(self)
	GameTooltip:SetText("|T"..C_AddOns.GetAddOnMetadata("ABF", "IconTexture")..":16|t"..abfMainColor:WrapTextInColorCode(C_AddOns.GetAddOnMetadata("ABF", "Title")).."|nChoose the color for|nthe Animation") 
end)
-- leave --
abfOptions1Box3PopOut4:SetScript("OnLeave", abfLeavingMenus)
-- drop down --
abfClickPopOut(abfOptions1Box3PopOut4, abfOptions1Box3PopOut4Choice0)
-- on click choice 0 --
abfOptions1Box3PopOut4Choice0.Text:SetText("Default Color")
abfOptions1Box3PopOut4Choice0:HookScript("OnClick", function(self, button, down)
	if button == "LeftButton" and down == false then
		ABFactionBars["Bar1"]["Edge"]["AnimationColor"] = {r = 1, g = 1, b = 1, a = 1,}
		ABFactionBars["Bar1"]["Edge"]["AnimationColorOptions"] = self:GetText()
		abfOptions1Box3PopOut4.Text:SetText(self:GetText())
		abfOptions1Box3PopOut4Choice0:Hide()
		abfSavedAnimationEdgeColor("Bar1")
	end
end)
-- on click choice 1 --
abfOptions1Box3PopOut4Choice1:SetParent(abfOptions1Box3PopOut4Choice0)
abfOptions1Box3PopOut4Choice1:SetPoint("TOP", abfOptions1Box3PopOut4Choice0, "BOTTOM", 0, 0)
abfOptions1Box3PopOut4Choice1.Text:SetText("Custom Color")
abfOptions1Box3PopOut4Choice1:HookScript("OnClick", function(self, button, down)
	if button == "LeftButton" and down == false then
		ShowColorPickerForAnimation("Edge", abfSavedAnimationEdgeColor)
		ABFactionBars["Bar1"]["Edge"]["AnimationColorOptions"] = self:GetText()
		abfOptions1Box3PopOut4.Text:SetText(self:GetText())
		abfOptions1Box3PopOut4Choice0:Hide()
	end
end)
-- Box 4 Top Art --
-- pop out 1 Top Art choice --
-- enter --
abfOptions1Box4PopOut1:SetScript("OnEnter", function(self)
	abfEnteringMenus(self)
	GameTooltip:SetText("|T"..C_AddOns.GetAddOnMetadata("ABF", "IconTexture")..":16|t"..abfMainColor:WrapTextInColorCode(C_AddOns.GetAddOnMetadata("ABF", "Title")).."|nChoose the Top Art for|nthe Action Bar 1") 
end)
-- leave --
abfOptions1Box4PopOut1:SetScript("OnLeave", abfLeavingMenus)
-- drop down --
abfClickPopOut(abfOptions1Box4PopOut1, abfOptions1Box4PopOut1Choice0)
-- sort & naming & clicking --
abfOptions1Box4PopOut1Choice0.Text:SetText("None")
abfOptions1Box4PopOut1Choice0:HookScript("OnClick", function(self, button, down)
	if button == "LeftButton" and down == false then
		ABFactionBars["Bar1"]["Top"]["Art"] = self.Text:GetText()
		abfOptions1Box4PopOut1.Text:SetText(self:GetText())
		abfOptions1Box4PopOut1Choice0:Hide()
		abfSavedArtTop("Action", "Bar1")
	end
end)
abfOptions1Box4PopOut1Choice1.Text:SetText("JailersTower")
abfOptions1Box4PopOut1Choice2.Text:SetText("Horns")
abfOptions1Box4PopOut1Choice3.Text:SetText("BossHorns")
for i = 1, 3, 1 do
	_G["abfOptions1Box4PopOut1Choice"..i]:SetParent(abfOptions1Box4PopOut1Choice0)
	_G["abfOptions1Box4PopOut1Choice"..i]:SetPoint("TOP", _G["abfOptions1Box4PopOut1Choice"..i-1], "BOTTOM", 0, 0)
	_G["abfOptions1Box4PopOut1Choice"..i]:HookScript("OnClick", function(self, button, down)
		if button == "LeftButton" and down == false then
			ABFactionBars["Bar1"]["Top"]["Art"] = self.Text:GetText()
			abfOptions1Box4PopOut1.Text:SetText(self:GetText())
			abfOptions1Box4PopOut1Choice0:Hide()
			abfSavedArtTop("Action", "Bar1")
		end
	end)
-- on leave --
	_G["abfOptions1Box4PopOut1Choice"..i]:HookScript("OnLeave", function(self) abfOptions1Box4PopOut1.Example:Hide() abfOptions1Box4PopOut1.Example1:Hide() end)
end
-- entering the pop out buttons --
-- choice 1 --
abfOptions1Box4PopOut1Choice1:SetScript("OnEnter", function(self)
	abfOptions1Box4PopOut1.Example:SetAtlas("jailerstower-score-topper", false)
	abfOptions1Box4PopOut1.Example:ClearAllPoints()
	abfOptions1Box4PopOut1.Example:SetPoint("RIGHT", abfOptions1Box4PopOut1, "LEFT", 64, 0)
	abfOptions1Box4PopOut1.Example:SetSize(315, 48)
	abfOptions1Box4PopOut1.Example:Show()
end)
-- choice 2 --
abfOptions1Box4PopOut1Choice2:SetScript("OnEnter", function(self)
	abfOptions1Box4PopOut1.Example:SetAtlas("BossBanner-RightFillagree", false)
	abfOptions1Box4PopOut1.Example:ClearAllPoints()
	abfOptions1Box4PopOut1.Example:SetPoint("RIGHT", abfOptions1Box4PopOut1, "LEFT", 0, 16)
	abfOptions1Box4PopOut1.Example:SetSize(48, 48)
	abfOptions1Box4PopOut1.Example:Show()
	abfOptions1Box4PopOut1.Example1:SetAtlas("BossBanner-LeftFillagree", false)
	abfOptions1Box4PopOut1.Example1:Show()
end)
-- pop out 2 Top Art Color --
-- enter --
abfOptions1Box4PopOut2:SetScript("OnEnter", function(self)
	abfEnteringMenus(self)
	GameTooltip:SetText("|T"..C_AddOns.GetAddOnMetadata("ABF", "IconTexture")..":16|t"..abfMainColor:WrapTextInColorCode(C_AddOns.GetAddOnMetadata("ABF", "Title")).."|nChoose the color for|nthe Top Art") 
end)
-- leave --
abfOptions1Box4PopOut2:SetScript("OnLeave", abfLeavingMenus)
-- drop down --
abfClickPopOut(abfOptions1Box4PopOut2, abfOptions1Box4PopOut2Choice0)
-- on click choice 0 --
abfOptions1Box4PopOut2Choice0.Text:SetText("Default Color")
abfOptions1Box4PopOut2Choice0:HookScript("OnClick", function(self, button, down)
	if button == "LeftButton" and down == false then
		ABFactionBars["Bar1"]["Top"]["ArtColor"] = {r = 1, g = 1, b = 1, a = 1,}
		ABFactionBars["Bar1"]["Top"]["ArtColorOptions"] = self:GetText()
		abfOptions1Box4PopOut2.Text:SetText(self:GetText())
		abfOptions1Box4PopOut2Choice0:Hide()
		abfSavedColorTop("Action", "Bar1")
	end
end)
-- on click choice 1 --
abfOptions1Box4PopOut2Choice1:SetParent(abfOptions1Box4PopOut2Choice0)
abfOptions1Box4PopOut2Choice1:SetPoint("TOP", abfOptions1Box4PopOut2Choice0, "BOTTOM", 0, 0)
abfOptions1Box4PopOut2Choice1.Text:SetText("Custom Color")
abfOptions1Box4PopOut2Choice1:HookScript("OnClick", function(self, button, down)
	if button == "LeftButton" and down == false then
		ShowColorPicker("Top", abfSavedColorTop)
		ABFactionBars["Bar1"]["Top"]["ArtColorOptions"] = self:GetText()
		abfOptions1Box4PopOut2.Text:SetText(self:GetText())
		abfOptions1Box4PopOut2Choice0:Hide()
	end
end)
-- pop out 3 Top Art Animation --
-- enter --
abfOptions1Box4PopOut3:SetScript("OnEnter", function(self)
	abfEnteringMenus(self)
	GameTooltip:SetText("|T"..C_AddOns.GetAddOnMetadata("ABF", "IconTexture")..":16|t"..abfMainColor:WrapTextInColorCode(C_AddOns.GetAddOnMetadata("ABF", "Title")).."|nDo you want the animation for|nthe Top Art to be visible?|nNote: There is only one animation.|nMore will come soon!")
end)
-- leave --
abfOptions1Box4PopOut3:SetScript("OnLeave", abfLeavingMenus)
-- drop down --
abfClickPopOut(abfOptions1Box4PopOut3, abfOptions1Box4PopOut3Choice0)
-- on click choice 0 --
abfOptions1Box4PopOut3Choice0.Text:SetText("None")
abfOptions1Box4PopOut3Choice0:HookScript("OnClick", function(self, button, down)
	if button == "LeftButton" and down == false then
		ABFactionBars["Bar1"]["Top"]["Animation"] = self:GetText()
		abfOptions1Box4PopOut3.Text:SetText(self:GetText())
		abfOptions1Box4PopOut3Choice0:Hide()
		abfSavedAnimationTopArt("Action", "Bar1")
	end
end)
-- on click choice 1 --
abfOptions1Box4PopOut3Choice1:SetParent(abfOptions1Box4PopOut3Choice0)
abfOptions1Box4PopOut3Choice1:SetPoint("TOP", abfOptions1Box4PopOut3Choice0, "BOTTOM", 0, 0)
abfOptions1Box4PopOut3Choice1.Text:SetText("MissionLine")
abfOptions1Box4PopOut3Choice1:HookScript("OnClick", function(self, button, down)
	if button == "LeftButton" and down == false then
		ABFactionBars["Bar1"]["Top"]["Animation"] = self:GetText()
		abfOptions1Box4PopOut3.Text:SetText(self:GetText())
		abfOptions1Box4PopOut3Choice0:Hide()
		abfSavedAnimationTopArt("Action", "Bar1")
	end
end)
-- pop out 4 Top Art Animation Color --
-- enter --
abfOptions1Box4PopOut4:SetScript("OnEnter", function(self)
	abfEnteringMenus(self)
	GameTooltip:SetText("|T"..C_AddOns.GetAddOnMetadata("ABF", "IconTexture")..":16|t"..abfMainColor:WrapTextInColorCode(C_AddOns.GetAddOnMetadata("ABF", "Title")).."|nChoose the color for|nthe Animation") 
end)
-- leave --
abfOptions1Box4PopOut4:SetScript("OnLeave", abfLeavingMenus)
-- drop down --
abfClickPopOut(abfOptions1Box4PopOut4, abfOptions1Box4PopOut4Choice0)
-- on click choice 0 --
abfOptions1Box4PopOut4Choice0.Text:SetText("Default Color")
abfOptions1Box4PopOut4Choice0:HookScript("OnClick", function(self, button, down)
	if button == "LeftButton" and down == false then
		ABFactionBars["Bar1"]["Top"]["AnimationColor"] = {r = 1, g = 1, b = 1, a = 1,}
		ABFactionBars["Bar1"]["Top"]["AnimationColorOptions"] = self:GetText()
		abfOptions1Box4PopOut4.Text:SetText(self:GetText())
		abfOptions1Box4PopOut4Choice0:Hide()
		abfSavedAnimationTopColor("Bar1")
	end
end)
-- on click choice 1 --
abfOptions1Box4PopOut4Choice1:SetParent(abfOptions1Box4PopOut4Choice0)
abfOptions1Box4PopOut4Choice1:SetPoint("TOP", abfOptions1Box4PopOut4Choice0, "BOTTOM", 0, 0)
abfOptions1Box4PopOut4Choice1.Text:SetText("Custom Color")
abfOptions1Box4PopOut4Choice1:HookScript("OnClick", function(self, button, down)
	if button == "LeftButton" and down == false then
		ShowColorPickerForAnimation("Top", abfSavedAnimationTopColor)
		ABFactionBars["Bar1"]["Top"]["AnimationColorOptions"] = self:GetText()
		abfOptions1Box4PopOut4.Text:SetText(self:GetText())
		abfOptions1Box4PopOut4Choice0:Hide()
	end
end)
-- Box 5 Bottom Art --
-- pop out 1 Bottom Art choice --
-- enter --
abfOptions1Box5PopOut1:SetScript("OnEnter", function(self)
	abfEnteringMenus(self)
	GameTooltip:SetText("|T"..C_AddOns.GetAddOnMetadata("ABF", "IconTexture")..":16|t"..abfMainColor:WrapTextInColorCode(C_AddOns.GetAddOnMetadata("ABF", "Title")).."|nChoose the Bottom Art for|nthe Action Bar 1") 
end)
-- leave --
abfOptions1Box5PopOut1:SetScript("OnLeave", abfLeavingMenus)
-- drop down --
abfClickPopOut(abfOptions1Box5PopOut1, abfOptions1Box5PopOut1Choice0)
-- sort & naming & clicking --
abfOptions1Box5PopOut1Choice0.Text:SetText("None")
abfOptions1Box5PopOut1Choice0:HookScript("OnClick", function(self, button, down)
	if button == "LeftButton" and down == false then
		ABFactionBars["Bar1"]["Bottom"]["Art"] = self.Text:GetText()
		abfOptions1Box5PopOut1.Text:SetText(self:GetText())
		abfOptions1Box5PopOut1Choice0:Hide()
		abfSavedArtBottom("Action", "Bar1")
	end
end)
abfOptions1Box5PopOut1Choice1.Text:SetText("BottomLine1")
abfOptions1Box5PopOut1Choice2.Text:SetText("SoftCloud")
for i = 1, 2, 1 do
	_G["abfOptions1Box5PopOut1Choice"..i]:SetParent(abfOptions1Box5PopOut1Choice0)
	_G["abfOptions1Box5PopOut1Choice"..i]:SetPoint("TOP", _G["abfOptions1Box5PopOut1Choice"..i-1], "BOTTOM", 0, 0)
	_G["abfOptions1Box5PopOut1Choice"..i]:HookScript("OnClick", function(self, button, down)
		if button == "LeftButton" and down == false then
			ABFactionBars["Bar1"]["Bottom"]["Art"] = self.Text:GetText()
			abfOptions1Box5PopOut1.Text:SetText(self:GetText())
			abfOptions1Box5PopOut1Choice0:Hide()
			abfSavedArtBottom("Action", "Bar1")
		end
	end)
-- on leave --
	_G["abfOptions1Box5PopOut1Choice"..i]:HookScript("OnLeave", function(self) abfOptions1Box5PopOut1.Example:Hide() end)
end
-- entering the pop out buttons --
-- choice 1 --
abfOptions1Box5PopOut1Choice1:SetScript("OnEnter", function(self)
	abfOptions1Box5PopOut1.Example:SetAtlas("UI-Achievement-Border-7", false)
	abfOptions1Box5PopOut1.Example:Show()
end)
-- choice 2 --
abfOptions1Box5PopOut1Choice2:SetScript("OnEnter", function(self)
	abfOptions1Box5PopOut1.Example:SetAtlas("AftLevelup-SoftCloud", false)
	abfOptions1Box5PopOut1.Example:Show()
end)
-- pop out 2 Bottom Art Color --
-- enter --
abfOptions1Box5PopOut2:SetScript("OnEnter", function(self)
	abfEnteringMenus(self)
	GameTooltip:SetText("|T"..C_AddOns.GetAddOnMetadata("ABF", "IconTexture")..":16|t"..abfMainColor:WrapTextInColorCode(C_AddOns.GetAddOnMetadata("ABF", "Title")).."|nChoose the color for|nthe Bottom Art") 
end)
-- leave --
abfOptions1Box5PopOut2:SetScript("OnLeave", abfLeavingMenus)
-- drop down --
abfClickPopOut(abfOptions1Box5PopOut2, abfOptions1Box5PopOut2Choice0)
-- on click choice 0 --
abfOptions1Box5PopOut2Choice0.Text:SetText("Default Color")
abfOptions1Box5PopOut2Choice0:HookScript("OnClick", function(self, button, down)
	if button == "LeftButton" and down == false then
		ABFactionBars["Bar1"]["Bottom"]["ArtColor"] = {r = 1, g = 1, b = 1, a = 1,}
		ABFactionBars["Bar1"]["Bottom"]["ArtColorOptions"] = self:GetText()
		abfOptions1Box5PopOut2.Text:SetText(self:GetText())
		abfOptions1Box5PopOut2Choice0:Hide()
		abfSavedColorBottom("Action", "Bar1")
	end
end)
-- on click choice 1 --
abfOptions1Box5PopOut2Choice1:SetParent(abfOptions1Box5PopOut2Choice0)
abfOptions1Box5PopOut2Choice1:SetPoint("TOP", abfOptions1Box5PopOut2Choice0, "BOTTOM", 0, 0)
abfOptions1Box5PopOut2Choice1.Text:SetText("Custom Color")
abfOptions1Box5PopOut2Choice1:HookScript("OnClick", function(self, button, down)
	if button == "LeftButton" and down == false then
		ShowColorPicker("Bottom", abfSavedColorBottom)
		ABFactionBars["Bar1"]["Bottom"]["ArtColorOptions"] = self:GetText()
		abfOptions1Box5PopOut2.Text:SetText(self:GetText())
		abfOptions1Box5PopOut2Choice0:Hide()
	end
end)
-- Showing the panel --
abfOptions1:HookScript("OnShow", function(self)
	CheckSavedVariables()
	if abfOptions2:IsShown() then abfOptions2:Hide() end
	if abfOptions3:IsShown() then abfOptions3:Hide() end
	if abfOptions4:IsShown() then abfOptions4:Hide() end
	if abfOptions5:IsShown() then abfOptions5:Hide() end
	if abfOptions6:IsShown() then abfOptions6:Hide() end
	if abfOptions7:IsShown() then abfOptions7:Hide() end
	if abfOptions8:IsShown() then abfOptions8:Hide() end
	if abfOptions9:IsShown() then abfOptions9:Hide() end
	if abfOptions10:IsShown() then abfOptions10:Hide() end
	abfOptions00Tab1.Text:SetTextColor(abfHighColor:GetRGB())
	abfOptions00Tab2.Text:SetTextColor(abfMainColor:GetRGB())
	abfOptions00Tab3.Text:SetTextColor(abfMainColor:GetRGB())
	abfOptions00Tab4.Text:SetTextColor(abfMainColor:GetRGB())
	abfOptions00Tab5.Text:SetTextColor(abfMainColor:GetRGB())
	abfOptions00Tab6.Text:SetTextColor(abfMainColor:GetRGB())
	abfOptions00Tab7.Text:SetTextColor(abfMainColor:GetRGB())
	abfOptions00Tab8.Text:SetTextColor(abfMainColor:GetRGB())
	abfOptions00Tab9.Text:SetTextColor(abfMainColor:GetRGB())
	abfOptions00Tab10.Text:SetTextColor(abfMainColor:GetRGB())
end)
