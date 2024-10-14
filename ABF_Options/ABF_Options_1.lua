-- text box 0 --
abfOptions1Box0.TitleTxt:SetText("Read me!!!")
abfOptions1Box0.CenterText:SetText("|T"..C_AddOns.GetAddOnMetadata("ABF", "IconTexture")..":16|t"..abfHighColor:WrapTextInColorCode(" Note: ").."Before setting up the add on, you "..abfHighColor:WrapTextInColorCode("MUST").." go to Game Menu ("..abfHighColor:WrapTextInColorCode("ESC")..") --> "..abfHighColor:WrapTextInColorCode("Edit Mode").." --> Choose the "..abfHighColor:WrapTextInColorCode("Action Bar 1").." and choose - check the ‘"..abfHighColor:WrapTextInColorCode("Hide Bar Art").."’ option. The Bar Art "..abfHighColor:WrapTextInColorCode("MUST").." be hidden, so it won’t cause any trouble.")
-- takeing care the rest boxes --
abfOptions1Box1:SetPoint("TOPLEFT", abfOptions1Box0, "BOTTOMLEFT", 0, 0)
abfOptions1Box00:SetPoint("TOPLEFT", abfOptions1Box1, "BOTTOMLEFT", 0, 0)
abfOptions1Box2:SetPoint("TOPRIGHT", abfOptions1Box0, "BOTTOMRIGHT", 0, 0)
abfOptions1Box3:SetPoint("TOPRIGHT", abfOptions1Box2, "BOTTOMRIGHT", 0, 6)
abfOptions1Box4:SetPoint("TOPRIGHT", abfOptions1Box2, "BOTTOMRIGHT", 0, 6)
abfOptions1Box01:SetPoint("TOPRIGHT", abfOptions1Box4, "BOTTOMRIGHT", 0, 0)
abfOptions1Box5:SetPoint("TOPLEFT", abfOptions1Box00, "BOTTOMLEFT", 0, 0)
abfOptions1Box6:SetPoint("TOPLEFT", abfOptions1Box5, "BOTTOMLEFT", 0, 6)
abfOptions1Box7:SetPoint("TOPLEFT", abfOptions1Box5, "BOTTOMLEFT", 0, 6)
abfOptions1Box8:SetPoint("TOPRIGHT", abfOptions1Box01, "BOTTOMRIGHT", 0, 0)
abfOptions1Box9:SetPoint("TOPRIGHT", abfOptions1Box8, "BOTTOMRIGHT", 0, 6)
abfOptions1Box10:SetPoint("TOPRIGHT", abfOptions1Box8, "BOTTOMRIGHT", 0, 6)
abfOptions1Box2.BorderBottom:Hide()
abfOptions1Box3.BorderTop:Hide()
abfOptions1Box4.BorderTop:Hide()
abfOptions1Box5.BorderBottom:Hide()
abfOptions1Box6.BorderTop:Hide()
abfOptions1Box7.BorderTop:Hide()
abfOptions1Box8.BorderBottom:Hide()
abfOptions1Box9.BorderTop:Hide()
abfOptions1Box10.BorderTop:Hide()
-- naming --
abfOptions1Box1.TitleTxt:SetText("Texts Fonts & Cooldown Color")
abfOptions1Box2.TitleTxt:SetText("Slot Art & Color Mode")
abfOptions1Box3.TitleTxt:SetText("Slot Art One Color")
abfOptions1Box4.TitleTxt:SetText("Slot Art Gradient Color")
abfOptions1Box5.TitleTxt:SetText("Edge Art, Color Mode & Animation")
abfOptions1Box6.TitleTxt:SetText("Edge Art One Color")
abfOptions1Box7.TitleTxt:SetText("Edge Art Gradient Color")
abfOptions1Box8.TitleTxt:SetText("Border Visibility & Color Mode")
abfOptions1Box9.TitleTxt:SetText("Border One Color")
abfOptions1Box10.TitleTxt:SetText("Border Gradient Color")
-- Checking the Saved Variables --
local function CheckSavedVariables1()
-- Box 1, Pop out 1 --
	abfOptions1Box1PopOut1.Text:SetText(ABFactionBars["Bar1"]["HotKeyFonts"])
-- Box 1, Pop out 2 --
	abfOptions1Box1PopOut2.Text:SetText(ABFactionBars["Bar1"]["CountFonts"])
-- Box 1, Pop out 3 --
	abfOptions1Box1PopOut3.Text:SetText(ABFactionBars["Bar1"]["NameFonts"])
-- Box 1, Pop out 4 --
	abfOptions1Box1PopOut4.Text:SetText(ABFactionBars["Bar1"]["ColorCDoption"])
-- Box 2, Pop out 1 --
	abfOptions1Box2PopOut1.Text:SetText(ABFactionBars["Bar1"]["Slot"]["Art"])
-- Box 2, Pop out 2 --
	abfOptions1Box2PopOut2.Text:SetText(ABFactionBars["Bar1"]["Slot"]["ArtColorChoice"])
	if ABFactionBars["Bar1"]["Slot"]["ArtColorChoice"] == "One Color" then
		if not abfOptions1Box3:IsShown() then abfOptions1Box3:Show() end
		if abfOptions1Box4:IsShown() then abfOptions1Box4:Hide() end
	elseif ABFactionBars["Bar1"]["Slot"]["ArtColorChoice"] == "Gradient Color" then
		if not abfOptions1Box4:IsShown() then abfOptions1Box4:Show() end
		if abfOptions1Box3:IsShown() then abfOptions1Box3:Hide() end
	end
-- Box 3, Slider 1 --
	abfOptions1Box3Slider1.Slider:SetValue(ABFactionBars["Bar1"]["Slot"]["ArtColorDesaturation"] * 10)
-- Box 3, Pop out 1 --
	abfOptions1Box3PopOut1.Text:SetText(ABFactionBars["Bar1"]["Slot"]["ArtColorOptions"])
	if ABFactionBars["Bar1"]["Slot"]["ArtColorOptions"] == "Custom Color" then
		if not abfOptions1Box3Slider1:IsShown() then abfOptions1Box3Slider1:Show() end
	else
		if abfOptions1Box3Slider1:IsShown() then abfOptions1Box3Slider1:Hide() end
	end
-- Box 4, pop out 1 --
	abfOptions1Box4PopOut1.Text:SetText(ABFactionBars["Bar1"]["Slot"]["ArtGradientOptions1"])
-- Box 4, pop out 2 --
	abfOptions1Box4PopOut2.Text:SetText(ABFactionBars["Bar1"]["Slot"]["ArtGradientOptions2"])
-- Box 4, pop out 3 --
	abfOptions1Box4PopOut3.Text:SetText(ABFactionBars["Bar1"]["Slot"]["ArtGradientOrientation"])
-- Box 5,Pop out 1 --
	abfOptions1Box5PopOut1.Text:SetText(ABFactionBars["Bar1"]["Edge"]["Art"])
	if ABFactionBars["Bar1"]["Edge"]["Art"] == "Gryphon" or ABFactionBars["Bar1"]["Edge"]["Art"] == "Wyvern" then
		if not abfOptions1Box5PopOut3:IsShown() then abfOptions1Box5PopOut3:Show() end
		if not abfOptions1Box5PopOut4:IsShown() then abfOptions1Box5PopOut4:Show() end
	else
		if abfOptions1Box5PopOut3:IsShown() then abfOptions1Box5PopOut3:Hide() end
		if abfOptions1Box5PopOut4:IsShown() then abfOptions1Box5PopOut4:Hide() end
	end
-- Box 5, Pop out 2 --
	abfOptions1Box5PopOut2.Text:SetText(ABFactionBars["Bar1"]["Edge"]["ArtColorChoice"])
	if ABFactionBars["Bar1"]["Edge"]["ArtColorChoice"] == "One Color" then
		if not abfOptions1Box6:IsShown() then abfOptions1Box6:Show() end
		if abfOptions1Box7:IsShown() then abfOptions1Box7:Hide() end
	elseif ABFactionBars["Bar1"]["Edge"]["ArtColorChoice"] == "Gradient Color" then
		if not abfOptions1Box7:IsShown() then abfOptions1Box7:Show() end
		if abfOptions1Box6:IsShown() then abfOptions1Box6:Hide() end
	end
-- Box 5, Pop out 3 --
	if ABFactionBars["Bar1"]["Edge"]["Animation"] then
		abfOptions1Box5PopOut3.Text:SetText("Show")
	elseif not ABFactionBars["Bar1"]["Edge"]["Animation"] then
		abfOptions1Box5PopOut3.Text:SetText("Hide")
	end
-- Box 5, Pop out 4 --
	abfOptions1Box5PopOut4.Text:SetText(ABFactionBars["Bar1"]["Edge"]["AnimationColorOptions"])
end
local function CheckSavedVariables2()
-- Box 6, Slider 1 --
	if ABFactionBars["Bar1"]["Edge"]["ArtColorChoice"] == "One Color" then
		abfOptions1Box6Slider1:SetValue(ABFactionBars["Bar1"]["Edge"]["ArtColorDesaturation"] * 10)
	end
-- Box 6, Pop out 1 --
	abfOptions1Box6PopOut1.Text:SetText(ABFactionBars["Bar1"]["Edge"]["ArtColorOptions"])
	if ABFactionBars["Bar1"]["Edge"]["ArtColorOptions"] == "Custom Color" then
		if not abfOptions1Box6Slider1:IsShown() then abfOptions1Box6Slider1:Show() end
	else
		if abfOptions1Box6Slider1:IsShown() then abfOptions1Box6Slider1:Hide() end
	end
-- Box 7, pop out 1 --
	abfOptions1Box7PopOut1.Text:SetText(ABFactionBars["Bar1"]["Edge"]["ArtGradientOptions1"])
-- Box 7, pop out 2 --
	abfOptions1Box7PopOut2.Text:SetText(ABFactionBars["Bar1"]["Edge"]["ArtGradientOptions2"])
-- Box 7, pop out 3 --
	abfOptions1Box7PopOut3.Text:SetText(ABFactionBars["Bar1"]["Edge"]["ArtGradientOrientation"])
-- Box 8, Pop Out Button 1 --
	if ABFactionBars["Bar1"]["BorderVisibility"] then
		abfOptions1Box8PopOut1.Text:SetText("Show")
	elseif not ABFactionBars["Bar1"]["BorderVisibility"] then
		abfOptions1Box8PopOut1.Text:SetText("Hide")
	end
-- Box 8, Pop Out Button 2 --
	abfOptions1Box8PopOut2.Text:SetText(ABFactionBars["Bar1"]["BorderArtColorMode"])
	if ABFactionBars["Bar1"]["BorderArtColorMode"] == "One Color" then
		if not abfOptions1Box9:IsShown() then abfOptions1Box9:Show() end
		if abfOptions1Box10:IsShown() then abfOptions1Box10:Hide() end
	elseif ABFactionBars["Bar1"]["BorderArtColorMode"] == "Gradient Color" then
		if abfOptions1Box9:IsShown() then abfOptions1Box9:Hide() end
		if not abfOptions1Box10:IsShown() then abfOptions1Box10:Show() end
	end
-- Box 9, Pop Out Button 1 --
	abfOptions1Box9PopOut1.Text:SetText(ABFactionBars["Bar1"]["BorderArtColorOptions"])
-- Box 10, Pop Out Button 1 --
	abfOptions1Box10PopOut1.Text:SetText(ABFactionBars["Bar1"]["BorderArtGradientOptions1"])
-- Box 10, Pop Out Button 2 --
	abfOptions1Box10PopOut2.Text:SetText(ABFactionBars["Bar1"]["BorderArtGradientOptions2"])
-- Box 10, Pop Out Button 3 --
	abfOptions1Box10PopOut3.Text:SetText(ABFactionBars["Bar1"]["BorderArtGradientOrientation"])
end
-- Box 1, Texts Fonts & Cooldown Color --
-- Box 1, Pop Out Button 1, Hot Key Fonts --
-- enter --
abfOptions1Box1PopOut1:SetScript("OnEnter", function(self)
	abfEnteringMenus(self)
	GameTooltip:SetText("|T"..C_AddOns.GetAddOnMetadata("ABF", "IconTexture")..":16|t"..abfMainColor:WrapTextInColorCode(C_AddOns.GetAddOnMetadata("ABF", "Title")).."|nChoose fonts for|nthe Hot Key Text") 
end)
-- leave --
abfOptions1Box1PopOut1:SetScript("OnLeave", abfLeavingMenus)
-- drop down --
abfClickPopOut(abfOptions1Box1PopOut1, abfOptions1Box1PopOut1Choice0)
-- sort clicking --
for i = 1, 7, 1 do
	_G["abfOptions1Box1PopOut1Choice"..i]:SetParent(abfOptions1Box1PopOut1Choice0)
	_G["abfOptions1Box1PopOut1Choice"..i]:SetPoint("TOP", _G["abfOptions1Box1PopOut1Choice"..i-1], "BOTTOM", 0, 0)
end
-- naming at Options10 --
-- clicking --
for i = 0, 7, 1 do
	_G["abfOptions1Box1PopOut1Choice"..i]:HookScript("OnClick", function(self, button, down)
		if button == "LeftButton" and down == false then
			ABFactionBars["Bar1"]["HotKeyFonts"] = self.Text:GetText()
			abfOptions1Box1PopOut1.Text:SetText(self.Text:GetText())
			abfOptions1Box1PopOut1Choice0:Hide()
			abfSavedFonts("Bar1", MainMenuBar)
		end
	end)
end
-- Box 1, Pop Out Button 2, Count Fonts --
-- enter --
abfOptions1Box1PopOut2:SetScript("OnEnter", function(self)
	abfEnteringMenus(self)
	GameTooltip:SetText("|T"..C_AddOns.GetAddOnMetadata("ABF", "IconTexture")..":16|t"..abfMainColor:WrapTextInColorCode(C_AddOns.GetAddOnMetadata("ABF", "Title")).."|nChoose fonts for|nthe Count Text") 
end)
-- leave --
abfOptions1Box1PopOut2:SetScript("OnLeave", abfLeavingMenus)
-- drop down --
abfClickPopOut(abfOptions1Box1PopOut2, abfOptions1Box1PopOut2Choice0)
-- sort clicking --
for i = 1, 7, 1 do
	_G["abfOptions1Box1PopOut2Choice"..i]:SetParent(abfOptions1Box1PopOut2Choice0)
	_G["abfOptions1Box1PopOut2Choice"..i]:SetPoint("TOP", _G["abfOptions1Box1PopOut2Choice"..i-1], "BOTTOM", 0, 0)
end
-- naming at Options10 --
-- clicking --
for i = 0, 7, 1 do
	_G["abfOptions1Box1PopOut2Choice"..i]:HookScript("OnClick", function(self, button, down)
		if button == "LeftButton" and down == false then
			ABFactionBars["Bar1"]["CountFonts"] = self.Text:GetText()
			abfOptions1Box1PopOut2.Text:SetText(self.Text:GetText())
			abfOptions1Box1PopOut2Choice0:Hide()
			abfSavedFonts("Bar1", MainMenuBar)
		end
	end)
end
-- Box 1, Pop Out Button 3, Name Fonts --
-- enter --
abfOptions1Box1PopOut3:SetScript("OnEnter", function(self)
	abfEnteringMenus(self)
	GameTooltip:SetText("|T"..C_AddOns.GetAddOnMetadata("ABF", "IconTexture")..":16|t"..abfMainColor:WrapTextInColorCode(C_AddOns.GetAddOnMetadata("ABF", "Title")).."|nChoose fonts for|nthe Name Text") 
end)
-- leave --
abfOptions1Box1PopOut3:SetScript("OnLeave", abfLeavingMenus)
-- drop down --
abfClickPopOut(abfOptions1Box1PopOut3, abfOptions1Box1PopOut3Choice0)
-- sort clicking --
for i = 1, 7, 1 do
	_G["abfOptions1Box1PopOut3Choice"..i]:SetParent(abfOptions1Box1PopOut3Choice0)
	_G["abfOptions1Box1PopOut3Choice"..i]:SetPoint("TOP", _G["abfOptions1Box1PopOut3Choice"..i-1], "BOTTOM", 0, 0)
end
-- naming at Options10 --
-- clicking --
for i = 0, 7, 1 do
	_G["abfOptions1Box1PopOut3Choice"..i]:HookScript("OnClick", function(self, button, down)
		if button == "LeftButton" and down == false then
			ABFactionBars["Bar1"]["NameFonts"] = self.Text:GetText()
			abfOptions1Box1PopOut3.Text:SetText(self.Text:GetText())
			abfOptions1Box1PopOut3Choice0:Hide()
			abfSavedFonts("Bar1", MainMenuBar)
		end
	end)
end
-- Box 1, Pop Out Button 4, Cooldown Color --
-- enter --
abfOptions1Box1PopOut4:SetScript("OnEnter", function(self)
	abfEnteringMenus(self)
	GameTooltip:SetText("|T"..C_AddOns.GetAddOnMetadata("ABF", "IconTexture")..":16|t"..abfMainColor:WrapTextInColorCode(C_AddOns.GetAddOnMetadata("ABF", "Title")).."|nChoose the color for|nthe Cooldown Swipe") 
end)
-- leave --
abfOptions1Box1PopOut4:SetScript("OnLeave", abfLeavingMenus)
-- drop down --
abfClickPopOut(abfOptions1Box1PopOut4, abfOptions1Box1PopOut4Choice0)
-- sort clicking --
for i = 1, 3, 1 do
	_G["abfOptions1Box1PopOut4Choice"..i]:SetParent(abfOptions1Box1PopOut4Choice0)
	_G["abfOptions1Box1PopOut4Choice"..i]:SetPoint("TOP", _G["abfOptions1Box1PopOut4Choice"..i-1], "BOTTOM", 0, 0)
end
-- naming at Options10 --
-- on click --
for i = 0, 3, 1 do
	_G["abfOptions1Box1PopOut4Choice"..i]:HookScript("OnClick", function(self, button, down)
		if button == "LeftButton" and down == false then
			ABFactionBars["Bar1"]["ColorCDoption"] = self.Text:GetText()
			abfOptions1Box1PopOut4.Text:SetText(self.Text:GetText())
			abfOptions1Box1PopOut4Choice0:Hide()
			if ABFactionBars["Bar1"]["ColorCDoption"] == "Default Color" then
				ABFactionBars["Bar1"]["ColorCD"] = {r = 0, g = 0, b = 0, a = 0.8,}
			elseif ABFactionBars["Bar1"]["ColorCDoption"] == "Class Color" then
				ABFactionBars["Bar1"]["ColorCD"] = CreateColor(abfClassColor:GetRGB())
			elseif ABFactionBars["Bar1"]["ColorCDoption"] == "Faction Color" then
				ABFactionBars["Bar1"]["ColorCD"] = CreateColor(_G["PLAYER_FACTION_COLOR_"..string.upper(abfFaction.name)]:GetRGB())
			elseif ABFactionBars["Bar1"]["ColorCDoption"] == "Custom Color" then
				abfShowColorPickerCD("Bar1", MainMenuBar, "ColorCD", abfSavedCDcolor)
			end
			abfSavedCDcolor("Bar1", MainMenuBar)
		end
	end)
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
-- sort clicking --
for i = 1, 6, 1 do
	_G["abfOptions1Box2PopOut1Choice"..i]:SetParent(abfOptions1Box2PopOut1Choice0)
	_G["abfOptions1Box2PopOut1Choice"..i]:SetPoint("TOP", _G["abfOptions1Box2PopOut1Choice"..i-1], "BOTTOM", 0, 0)
-- on leave --
	_G["abfOptions1Box2PopOut1Choice"..i]:HookScript("OnLeave", function(self) abfOptions1Box2PopOut1.Example:Hide() end)
end
-- naming at Options 10 --
-- clicking --
for i = 0, 6, 1 do
	_G["abfOptions1Box2PopOut1Choice"..i]:HookScript("OnClick", function(self, button, down)
		if button == "LeftButton" and down == false then
			ABFactionBars["Bar1"]["Slot"]["Art"] = self.Text:GetText()
			abfOptions1Box2PopOut1.Text:SetText(self.Text:GetText())
			abfOptions1Box2PopOut1Choice0:Hide()
			abfSavedArtSlot("Bar1", MainMenuBar)
		end
	end)
end
-- entering the pop out buttons at Options 10 --
-- pop out 2 Slot Art Color Choice --
-- enter --
abfOptions1Box2PopOut2:SetScript("OnEnter", function(self)
	abfEnteringMenus(self)
	GameTooltip:SetText("|T"..C_AddOns.GetAddOnMetadata("ABF", "IconTexture")..":16|t"..abfMainColor:WrapTextInColorCode(C_AddOns.GetAddOnMetadata("ABF", "Title")).."|nChoose the mode color for|nthe Slot Art! (one color or gradient color)") 
end)
-- leave --
abfOptions1Box2PopOut2:SetScript("OnLeave", abfLeavingMenus)
-- drop down --
abfClickPopOut(abfOptions1Box2PopOut2, abfOptions1Box2PopOut2Choice0)
-- position --
abfOptions1Box2PopOut2Choice1:SetParent(abfOptions1Box2PopOut2Choice0)
abfOptions1Box2PopOut2Choice1:SetPoint("TOP", abfOptions1Box2PopOut2Choice0, "BOTTOM", 0, 0)
-- naming at Options 10 --
-- click --
for i = 0, 1, 1 do
	_G["abfOptions1Box2PopOut2Choice"..i]:HookScript("OnClick", function(self, button, down)
		if button == "LeftButton" and down == false then
			ABFactionBars["Bar1"]["Slot"]["ArtColorChoice"] = self.Text:GetText()
			abfOptions1Box2PopOut2.Text:SetText(self.Text:GetText())
			abfOptions1Box2PopOut2Choice0:Hide()
			if ABFactionBars["Bar1"]["Slot"]["ArtColorChoice"] == "One Color" then
				if not abfOptions1Box3:IsShown() then abfOptions1Box3:Show() end
				if abfOptions1Box4:IsShown() then abfOptions1Box4:Hide() end
				abfOptions1Box3Slider1:SetValue(ABFactionBars["Bar1"]["Slot"]["ArtColorDesaturation"] * 10)
			elseif ABFactionBars["Bar1"]["Slot"]["ArtColorChoice"] == "Gradient Color" then
				if not abfOptions1Box4:IsShown() then abfOptions1Box4:Show() end
				if abfOptions1Box3:IsShown() then abfOptions1Box3:Hide() end
			end
			abfSavedColorSlot("Bar1", MainMenuBar)
		end
	end)
end
-- Box 3, color one --
-- Slider 1, Desaturation --
-- min max values --
abfOptions1Box3Slider1.MinText:SetText(0)
abfOptions1Box3Slider1.MaxText:SetText(1)
abfOptions1Box3Slider1.Slider:SetMinMaxValues(0, 10)
-- enter --
abfOptions1Box3Slider1.Slider:SetScript("OnEnter", function(self)
	abfEnteringMenus(self)
	GameTooltip:SetText("|T"..C_AddOns.GetAddOnMetadata("ABF", "IconTexture")..":16|t "..abfMainColor:WrapTextInColorCode(C_AddOns.GetAddOnMetadata("ABF", "Title")).."|nYou can also use your mousewheel|nor the buttons to the edge|nto change the value!") 
end)
-- leave --
abfOptions1Box3Slider1.Slider:SetScript("OnLeave", abfLeavingMenus)
-- on mouse wheel --
abfOptions1Box3Slider1.Slider:SetScript("OnMouseWheel", abfMouseWheelSlider)
-- On Value Changed --
abfOptions1Box3Slider1.Slider:SetScript("OnValueChanged", function (self, value, userInput)
	abfOptions1Box3Slider1.TopText:SetText("Desaturation of the Artwork: "..(self:GetValue()/10))
	ABFactionBars["Bar1"]["Slot"]["ArtColorDesaturation"] = self:GetValue()/10
	abfSavedColorSlot("Bar1", MainMenuBar)
end)
-- pop out 1 color one choices --
-- enter --
abfOptions1Box3PopOut1:SetScript("OnEnter", function(self)
	abfEnteringMenus(self)
	GameTooltip:SetText("|T"..C_AddOns.GetAddOnMetadata("ABF", "IconTexture")..":16|t"..abfMainColor:WrapTextInColorCode(C_AddOns.GetAddOnMetadata("ABF", "Title")).."|nChoose the color for|nthe Slot Art") 
end)
-- leave --
abfOptions1Box3PopOut1:SetScript("OnLeave", abfLeavingMenus)
-- drop down --
abfClickPopOut(abfOptions1Box3PopOut1, abfOptions1Box3PopOut1Choice0)
-- sort --
for i = 1, 3, 1 do
	_G["abfOptions1Box3PopOut1Choice"..i]:SetParent(abfOptions1Box3PopOut1Choice0)
	_G["abfOptions1Box3PopOut1Choice"..i]:SetPoint("TOP", _G["abfOptions1Box3PopOut1Choice"..i-1], "BOTTOM", 0, 0)
end
-- naming at Options 10 --
-- click --
for i = 0, 3, 1 do
	_G["abfOptions1Box3PopOut1Choice"..i]:HookScript("OnClick", function(self, button, down)
		if button == "LeftButton" and down == false then
			ABFactionBars["Bar1"]["Slot"]["ArtColorOptions"] = self.Text:GetText()
			abfOptions1Box3PopOut1.Text:SetText(self.Text:GetText())
			abfOptions1Box3PopOut1Choice0:Hide()
			if ABFactionBars["Bar1"]["Slot"]["ArtColorOptions"] == "Default Color" then
				if abfOptions1Box3Slider1:IsShown() then abfOptions1Box3Slider1:Hide() end
				ABFactionBars["Bar1"]["Slot"]["ArtColor"] = {r = 1, g = 1, b = 1, a = 1,}
			elseif ABFactionBars["Bar1"]["Slot"]["ArtColorOptions"] == "Class Color" then
				if abfOptions1Box3Slider1:IsShown() then abfOptions1Box3Slider1:Hide() end
				ABFactionBars["Bar1"]["Slot"]["ArtColor"] = CreateColor(abfClassColor:GetRGB())
			elseif ABFactionBars["Bar1"]["Slot"]["ArtColorOptions"] == "Faction Color" then
				if abfOptions1Box3Slider1:IsShown() then abfOptions1Box3Slider1:Hide() end
				ABFactionBars["Bar1"]["Slot"]["ArtColor"] = CreateColor(_G["PLAYER_FACTION_COLOR_"..string.upper(abfFaction.name)]:GetRGB())
			elseif ABFactionBars["Bar1"]["Slot"]["ArtColorOptions"] == "Custom Color" then
				if not abfOptions1Box3Slider1:IsShown() then abfOptions1Box3Slider1:Show() end
				abfShowColorPicker("Bar1", MainMenuBar, "Slot", abfSavedColorSlot, "ArtColor")
			end
			abfSavedColorSlot("Bar1", MainMenuBar)
		end
	end)
end
-- Box 4, color Gradient --
-- pop out 1 color Gradient one choices --
-- enter --
abfOptions1Box4PopOut1:SetScript("OnEnter", function(self)
	abfEnteringMenus(self)
	GameTooltip:SetText("|T"..C_AddOns.GetAddOnMetadata("ABF", "IconTexture")..":16|t"..abfMainColor:WrapTextInColorCode(C_AddOns.GetAddOnMetadata("ABF", "Title")).."|nChoose the first gradient|ncolor for the Slot Art") 
end)
-- leave --
abfOptions1Box4PopOut1:SetScript("OnLeave", abfLeavingMenus)
-- drop down --
abfClickPopOut(abfOptions1Box4PopOut1, abfOptions1Box4PopOut1Choice0)
-- sort clicking --
for i = 1, 3, 1 do
	_G["abfOptions1Box4PopOut1Choice"..i]:SetParent(abfOptions1Box4PopOut1Choice0)
	_G["abfOptions1Box4PopOut1Choice"..i]:SetPoint("TOP", _G["abfOptions1Box4PopOut1Choice"..i-1], "BOTTOM", 0, 0)
end
-- naming at Options 10 --
-- click --
for i = 0, 3, 1 do
	_G["abfOptions1Box4PopOut1Choice"..i]:HookScript("OnClick", function(self, button, down)
		if button == "LeftButton" and down == false then
			ABFactionBars["Bar1"]["Slot"]["ArtGradientOptions1"] = self.Text:GetText()
			abfOptions1Box4PopOut1.Text:SetText(self.Text:GetText())
			abfOptions1Box4PopOut1Choice0:Hide()
			if ABFactionBars["Bar1"]["Slot"]["ArtGradientOptions1"] == "Default Color" then
				ABFactionBars["Bar1"]["Slot"]["ArtGradientColor1"] = {r = 1, g = 1, b = 1, a = 1,}
			elseif ABFactionBars["Bar1"]["Slot"]["ArtGradientOptions1"] == "Class Color" then
				ABFactionBars["Bar1"]["Slot"]["ArtGradientColor1"] = CreateColor(abfClassColor:GetRGB())
			elseif ABFactionBars["Bar1"]["Slot"]["ArtGradientOptions1"] == "Faction Color" then
				ABFactionBars["Bar1"]["Slot"]["ArtGradientColor1"] = CreateColor(_G["PLAYER_FACTION_COLOR_"..string.upper(abfFaction.name)]:GetRGB())
			elseif ABFactionBars["Bar1"]["Slot"]["ArtGradientOptions1"] == "Custom Color" then
				abfShowColorPicker("Bar1", MainMenuBar, "Slot", abfSavedColorSlot, "ArtGradientColor1")
			end
			abfSavedColorSlot("Bar1", MainMenuBar)
		end
	end)
end
-- pop out 2 color Gradient two choices --
-- enter --
abfOptions1Box4PopOut2:SetScript("OnEnter", function(self)
	abfEnteringMenus(self)
	GameTooltip:SetText("|T"..C_AddOns.GetAddOnMetadata("ABF", "IconTexture")..":16|t"..abfMainColor:WrapTextInColorCode(C_AddOns.GetAddOnMetadata("ABF", "Title")).."|nChoose the second gradient|ncolor for the Slot Art") 
end)
-- leave --
abfOptions1Box4PopOut2:SetScript("OnLeave", abfLeavingMenus)
-- drop down --
abfClickPopOut(abfOptions1Box4PopOut2, abfOptions1Box4PopOut2Choice0)
-- sort clicking --
for i = 1, 3, 1 do
	_G["abfOptions1Box4PopOut2Choice"..i]:SetParent(abfOptions1Box4PopOut2Choice0)
	_G["abfOptions1Box4PopOut2Choice"..i]:SetPoint("TOP", _G["abfOptions1Box4PopOut2Choice"..i-1], "BOTTOM", 0, 0)
end
-- naming at Options 10 --
-- click --
for i = 0, 3, 1 do
	_G["abfOptions1Box4PopOut2Choice"..i]:HookScript("OnClick", function(self, button, down)
		if button == "LeftButton" and down == false then
			ABFactionBars["Bar1"]["Slot"]["ArtGradientOptions2"] = self.Text:GetText()
			abfOptions1Box4PopOut2.Text:SetText(self.Text:GetText())
			abfOptions1Box4PopOut2Choice0:Hide()
			if ABFactionBars["Bar1"]["Slot"]["ArtGradientOptions2"] == "Default Color" then
				ABFactionBars["Bar1"]["Slot"]["ArtGradientColor2"] = {r = 1, g = 1, b = 1, a = 1,}
			elseif ABFactionBars["Bar1"]["Slot"]["ArtGradientOptions2"] == "Class Color" then
				ABFactionBars["Bar1"]["Slot"]["ArtGradientColor2"] = CreateColor(abfClassColor:GetRGB())
			elseif ABFactionBars["Bar1"]["Slot"]["ArtGradientOptions2"] == "Faction Color" then
				ABFactionBars["Bar1"]["Slot"]["ArtGradientColor2"] = CreateColor(_G["PLAYER_FACTION_COLOR_"..string.upper(abfFaction.name)]:GetRGB())
			elseif ABFactionBars["Bar1"]["Slot"]["ArtGradientOptions2"] == "Custom Color" then
				abfShowColorPicker("Bar1", MainMenuBar, "Slot", abfSavedColorSlot, "ArtGradientColor2")
			end
			abfSavedColorSlot("Bar1", MainMenuBar)
		end
	end)
end
-- pop out 3 color Gradient Orientation --
-- enter --
abfOptions1Box4PopOut3:SetScript("OnEnter", function(self)
	abfEnteringMenus(self)
	GameTooltip:SetText("|T"..C_AddOns.GetAddOnMetadata("ABF", "IconTexture")..":16|t"..abfMainColor:WrapTextInColorCode(C_AddOns.GetAddOnMetadata("ABF", "Title")).."|nChoose the orientation|nof the colors for the Slot Art") 
end)
-- leave --
abfOptions1Box4PopOut3:SetScript("OnLeave", abfLeavingMenus)
-- drop down --
abfClickPopOut(abfOptions1Box4PopOut3, abfOptions1Box4PopOut3Choice0)
-- sort --
abfOptions1Box4PopOut3Choice1:SetParent(abfOptions1Box4PopOut3Choice0)
abfOptions1Box4PopOut3Choice1:SetPoint("TOP", abfOptions1Box4PopOut3Choice0, "BOTTOM", 0, 0)
-- naming at Options 10 --
-- click --
for i = 0, 1, 1 do
	_G["abfOptions1Box4PopOut3Choice"..i]:HookScript("OnClick", function(self, button, down)
		if button == "LeftButton" and down == false then
			ABFactionBars["Bar1"]["Slot"]["ArtGradientOrientation"] = self.Text:GetText()
			abfOptions1Box4PopOut3.Text:SetText(self.Text:GetText())
			abfOptions1Box4PopOut3Choice0:Hide()
			abfSavedColorSlot("Bar1", MainMenuBar)
		end
	end)
end
-- Box 5 Edge Art --
-- pop out 1 Edge Art Choice --
-- enter --
abfOptions1Box5PopOut1:SetScript("OnEnter", function(self)
	abfEnteringMenus(self)
	GameTooltip:SetText("|T"..C_AddOns.GetAddOnMetadata("ABF", "IconTexture")..":16|t"..abfMainColor:WrapTextInColorCode(C_AddOns.GetAddOnMetadata("ABF", "Title")).."|nChoose the Edge Art for|nthe Action Bar 1") 
end)
-- leave --
abfOptions1Box5PopOut1:SetScript("OnLeave", abfLeavingMenus)
-- drop down --
abfClickPopOut(abfOptions1Box5PopOut1, abfOptions1Box5PopOut1Choice0)
-- sort clicking --
for i = 1, 4, 1 do
	_G["abfOptions1Box5PopOut1Choice"..i]:SetParent(abfOptions1Box5PopOut1Choice0)
	_G["abfOptions1Box5PopOut1Choice"..i]:SetPoint("TOP", _G["abfOptions1Box5PopOut1Choice"..i-1], "BOTTOM", 0, 0)
-- on leave --
	_G["abfOptions1Box5PopOut1Choice"..i]:HookScript("OnLeave", function(self) abfOptions1Box5PopOut1.Example:Hide() end)
end
-- naming at Options 10 --
-- clicking --
for i = 0, 4, 1 do
	_G["abfOptions1Box5PopOut1Choice"..i]:HookScript("OnClick", function(self, button, down)
		if button == "LeftButton" and down == false then
			ABFactionBars["Bar1"]["Edge"]["Art"] = self.Text:GetText()
			abfOptions1Box5PopOut1.Text:SetText(self.Text:GetText())
			abfOptions1Box5PopOut1Choice0:Hide()
			if ABFactionBars["Bar1"]["Edge"]["Art"] == "Gryphon" or ABFactionBars["Bar1"]["Edge"]["Art"] == "Wyvern" then
				if not abfOptions1Box5PopOut3:IsShown() then abfOptions1Box5PopOut3:Show() end
				if not abfOptions1Box5PopOut4:IsShown() then abfOptions1Box5PopOut4:Show() end
			else
				if abfOptions1Box5PopOut3:IsShown() then abfOptions1Box5PopOut3:Hide() end
				if abfOptions1Box5PopOut4:IsShown() then abfOptions1Box5PopOut4:Hide() end
			end
			abfSavedArtEdge("Bar1", MainMenuBar)
			abfSavedEdgeArtAnimation("Bar1", MainMenuBar)
		end
	end)
end
-- entering the pop out buttons at Options 10 --
-- pop out 2 Edge Art Color Choice --
-- enter --
abfOptions1Box5PopOut2:SetScript("OnEnter", function(self)
	abfEnteringMenus(self)
	GameTooltip:SetText("|T"..C_AddOns.GetAddOnMetadata("ABF", "IconTexture")..":16|t"..abfMainColor:WrapTextInColorCode(C_AddOns.GetAddOnMetadata("ABF", "Title")).."|nChoose the mode color for|nthe Edge Art! (one color or gradient color)") 
end)
-- leave --
abfOptions1Box5PopOut2:SetScript("OnLeave", abfLeavingMenus)
-- drop down --
abfClickPopOut(abfOptions1Box5PopOut2, abfOptions1Box5PopOut2Choice0)
-- position --
abfOptions1Box5PopOut2Choice1:SetParent(abfOptions1Box5PopOut2Choice0)
abfOptions1Box5PopOut2Choice1:SetPoint("TOP", abfOptions1Box5PopOut2Choice0, "BOTTOM", 0, 0)
-- naming at Options 10 --
-- click --
for i = 0, 1, 1 do
	_G["abfOptions1Box5PopOut2Choice"..i]:HookScript("OnClick", function(self, button, down)
		if button == "LeftButton" and down == false then
			ABFactionBars["Bar1"]["Edge"]["ArtColorChoice"] = self.Text:GetText()
			abfOptions1Box5PopOut2.Text:SetText(self.Text:GetText())
			abfOptions1Box5PopOut2Choice0:Hide()
			if ABFactionBars["Bar1"]["Edge"]["ArtColorChoice"] == "One Color" then
				if not abfOptions1Box6:IsShown() then abfOptions1Box6:Show() end
				if abfOptions1Box7:IsShown() then abfOptions1Box7:Hide() end
				abfOptions1Box6Slider1:SetValue(ABFactionBars["Bar1"]["Edge"]["ArtColorDesaturation"] * 10)
			elseif ABFactionBars["Bar1"]["Edge"]["ArtColorChoice"] == "Gradient Color" then
				if not abfOptions1Box7:IsShown() then abfOptions1Box7:Show() end
				if abfOptions1Box6:IsShown() then abfOptions1Box6:Hide() end
			end
			abfSavedColorEdge("Bar1", MainMenuBar)
			abfSavedEdgeArtAnimation("Bar1", MainMenuBar)
		end
	end)
end
-- Box 5, Pop Out Button 3, Edge Art Animation --
-- enter --
abfOptions1Box5PopOut3:SetScript("OnEnter", function(self)
	abfEnteringMenus(self)
	GameTooltip:SetText("|T"..C_AddOns.GetAddOnMetadata("ABF", "IconTexture")..":16|t"..abfMainColor:WrapTextInColorCode(C_AddOns.GetAddOnMetadata("ABF", "Title")).."|nWhould you like the animation|nfor the Edge Art to be shown?") 
end)
-- leave --
abfOptions1Box5PopOut3:SetScript("OnLeave", abfLeavingMenus)
-- drop down --
abfClickPopOut(abfOptions1Box5PopOut3, abfOptions1Box5PopOut3Choice0)
-- naming at Options 10 --
-- sorting --
abfOptions1Box5PopOut3Choice1:SetParent(abfOptions1Box5PopOut3Choice0)
abfOptions1Box5PopOut3Choice1:SetPoint("TOP", abfOptions1Box5PopOut3Choice0, "BOTTOM", 0, 0)
-- click --
for i = 0, 1, 1 do
	_G["abfOptions1Box5PopOut3Choice"..i]:HookScript("OnClick", function(self, button, down)
		if button == "LeftButton" and down == false then
			abfOptions1Box5PopOut3.Text:SetText(self.Text:GetText())
			abfOptions1Box5PopOut3Choice0:Hide()
			if self.Text:GetText() == "Hide" then
				ABFactionBars["Bar1"]["Edge"]["Animation"] = false
			elseif self.Text:GetText() == "Show" then
				ABFactionBars["Bar1"]["Edge"]["Animation"] = true
			end
			abfSavedEdgeArtAnimation("Bar1", MainMenuBar)
		end
	end)
end
-- Box 5, Pop Out Button 4, Edge Art Animation Color --
-- enter --
abfOptions1Box5PopOut4:SetScript("OnEnter", function(self)
	abfEnteringMenus(self)
	GameTooltip:SetText("|T"..C_AddOns.GetAddOnMetadata("ABF", "IconTexture")..":16|t"..abfMainColor:WrapTextInColorCode(C_AddOns.GetAddOnMetadata("ABF", "Title")).."|nChoose the color for the animation") 
end)
-- leave --
abfOptions1Box5PopOut4:SetScript("OnLeave", abfLeavingMenus)
-- drop down --
abfClickPopOut(abfOptions1Box5PopOut4, abfOptions1Box5PopOut4Choice0)
-- naming at Options 10 --
-- sorting --
for i = 1, 3, 1 do
	_G["abfOptions1Box5PopOut4Choice"..i]:SetParent(abfOptions1Box5PopOut4Choice0)
	_G["abfOptions1Box5PopOut4Choice"..i]:SetPoint("TOP", _G["abfOptions1Box5PopOut4Choice"..i-1], "BOTTOM", 0, 0)
end
-- click --
for i = 0, 3, 1 do
	_G["abfOptions1Box5PopOut4Choice"..i]:HookScript("OnClick", function(self, button, down)
		if button == "LeftButton" and down == false then
			ABFactionBars["Bar1"]["Edge"]["AnimationColorOptions"] = self.Text:GetText()
			abfOptions1Box5PopOut4.Text:SetText(self.Text:GetText())
			abfOptions1Box5PopOut4Choice0:Hide()
			if ABFactionBars["Bar1"]["Edge"]["AnimationColorOptions"] == "Default Color" then
				ABFactionBars["Bar1"]["Edge"]["AnimationColor"] = {r = 1, g = 1, b = 1, a = 1}
			elseif ABFactionBars["Bar1"]["Edge"]["AnimationColorOptions"] == "Class Color" then
				ABFactionBars["Bar1"]["Edge"]["AnimationColor"] = CreateColor(abfClassColor:GetRGB())
			elseif ABFactionBars["Bar1"]["Edge"]["AnimationColorOptions"] == "Faction Color" then
				ABFactionBars["Bar1"]["Edge"]["AnimationColor"] = CreateColor(_G["PLAYER_FACTION_COLOR_"..string.upper(abfFaction.name)]:GetRGB())
			elseif ABFactionBars["Bar1"]["Edge"]["AnimationColorOptions"] == "Custom Color" then
				abfShowColorPicker("Bar1", MainMenuBar, "Edge", abfSavedEdgeArtAnimation, "AnimationColor")
			end
			abfSavedEdgeArtAnimation("Bar1", MainMenuBar)
		end
	end)
end
-- Box 6, color one --
-- Slider 1, Desaturation --
-- min max values --
abfOptions1Box6Slider1.MinText:SetText(0)
abfOptions1Box6Slider1.MaxText:SetText(1)
abfOptions1Box6Slider1.Slider:SetMinMaxValues(0, 10)
-- enter --
abfOptions1Box6Slider1.Slider:SetScript("OnEnter", function(self)
	abfEnteringMenus(self)
	GameTooltip:SetText("|T"..C_AddOns.GetAddOnMetadata("ABF", "IconTexture")..":16|t "..abfMainColor:WrapTextInColorCode(C_AddOns.GetAddOnMetadata("ABF", "Title")).."|nYou can also use your mousewheel|nor the buttons to the edge|nto change the value!") 
end)
-- leave --
abfOptions1Box6Slider1.Slider:SetScript("OnLeave", abfLeavingMenus)
-- on mouse wheel --
abfOptions1Box6Slider1.Slider:SetScript("OnMouseWheel", abfMouseWheelSlider)
-- On Value Changed --
abfOptions1Box6Slider1.Slider:SetScript("OnValueChanged", function (self, value, userInput)
	abfOptions1Box6Slider1.TopText:SetText("Desaturation of the Artwork: "..(self:GetValue()/10))
	ABFactionBars["Bar1"]["Edge"]["ArtColorDesaturation"] = self:GetValue()/10
	abfSavedColorEdge("Bar1", MainMenuBar)
end)
-- pop out 1 color one choices --
-- enter --
abfOptions1Box6PopOut1:SetScript("OnEnter", function(self)
	abfEnteringMenus(self)
	GameTooltip:SetText("|T"..C_AddOns.GetAddOnMetadata("ABF", "IconTexture")..":16|t"..abfMainColor:WrapTextInColorCode(C_AddOns.GetAddOnMetadata("ABF", "Title")).."|nChoose the color for|nthe Edge Art") 
end)
-- leave --
abfOptions1Box6PopOut1:SetScript("OnLeave", abfLeavingMenus)
-- drop down --
abfClickPopOut(abfOptions1Box6PopOut1, abfOptions1Box6PopOut1Choice0)
-- sort clicking --
for i = 1, 3, 1 do
	_G["abfOptions1Box6PopOut1Choice"..i]:SetParent(abfOptions1Box6PopOut1Choice0)
	_G["abfOptions1Box6PopOut1Choice"..i]:SetPoint("TOP", _G["abfOptions1Box6PopOut1Choice"..i-1], "BOTTOM", 0, 0)
end
-- naming at Options 10 --
-- click --
for i = 0, 3, 1 do
	_G["abfOptions1Box6PopOut1Choice"..i]:HookScript("OnClick", function(self, button, down)
		if button == "LeftButton" and down == false then
			ABFactionBars["Bar1"]["Edge"]["ArtColorOptions"] = self.Text:GetText()
			abfOptions1Box6PopOut1.Text:SetText(self.Text:GetText())
			abfOptions1Box6PopOut1Choice0:Hide()
			if ABFactionBars["Bar1"]["Edge"]["ArtColorOptions"] == "Default Color" then
				ABFactionBars["Bar1"]["Edge"]["ArtColor"] = {r = 1, g = 1, b = 1, a = 1,}
				if abfOptions1Box6Slider1:IsShown() then abfOptions1Box6Slider1:Hide() end
			elseif ABFactionBars["Bar1"]["Edge"]["ArtColorOptions"] == "Class Color" then
				ABFactionBars["Bar1"]["Edge"]["ArtColor"] = CreateColor(abfClassColor:GetRGB())
				if abfOptions1Box6Slider1:IsShown() then abfOptions1Box6Slider1:Hide() end
			elseif ABFactionBars["Bar1"]["Edge"]["ArtColorOptions"] == "Faction Color" then
				ABFactionBars["Bar1"]["Edge"]["ArtColor"] = CreateColor(_G["PLAYER_FACTION_COLOR_"..string.upper(abfFaction.name)]:GetRGB())
				if abfOptions1Box6Slider1:IsShown() then abfOptions1Box6Slider1:Hide() end
			elseif ABFactionBars["Bar1"]["Edge"]["ArtColorOptions"] == "Custom Color" then
				abfShowColorPicker("Bar1", MainMenuBar, "Edge", abfSavedColorEdge, "ArtColor")
				if not abfOptions1Box6Slider1:IsShown() then abfOptions1Box6Slider1:Show() end
			end
			abfSavedColorEdge("Bar1", MainMenuBar)
			abfSavedEdgeArtAnimation("Bar1", MainMenuBar)
		end
	end)
end
-- Box 7, color Gradient --
-- pop out 1 color Gradient one choices --
-- enter --
abfOptions1Box7PopOut1:SetScript("OnEnter", function(self)
	abfEnteringMenus(self)
	GameTooltip:SetText("|T"..C_AddOns.GetAddOnMetadata("ABF", "IconTexture")..":16|t"..abfMainColor:WrapTextInColorCode(C_AddOns.GetAddOnMetadata("ABF", "Title")).."|nChoose the first gradient|ncolor for the Edge Art") 
end)
-- leave --
abfOptions1Box7PopOut1:SetScript("OnLeave", abfLeavingMenus)
-- drop down --
abfClickPopOut(abfOptions1Box7PopOut1, abfOptions1Box7PopOut1Choice0)
-- sort clicking --
for i = 1, 3, 1 do
	_G["abfOptions1Box7PopOut1Choice"..i]:SetParent(abfOptions1Box7PopOut1Choice0)
	_G["abfOptions1Box7PopOut1Choice"..i]:SetPoint("TOP", _G["abfOptions1Box7PopOut1Choice"..i-1], "BOTTOM", 0, 0)
end
-- naming at Options 10 --
-- click --
for i = 0, 3, 1 do
	_G["abfOptions1Box7PopOut1Choice"..i]:HookScript("OnClick", function(self, button, down)
		if button == "LeftButton" and down == false then
			ABFactionBars["Bar1"]["Edge"]["ArtGradientOptions1"] = self.Text:GetText()
			abfOptions1Box7PopOut1.Text:SetText(self.Text:GetText())
			abfOptions1Box7PopOut1Choice0:Hide()
			if ABFactionBars["Bar1"]["Edge"]["ArtGradientOptions1"] == "Default Color" then
				ABFactionBars["Bar1"]["Edge"]["ArtGradientColor1"] = {r = 1, g = 1, b = 1, a = 1,}
			elseif ABFactionBars["Bar1"]["Edge"]["ArtGradientOptions1"] == "Class Color" then
				ABFactionBars["Bar1"]["Edge"]["ArtGradientColor1"] = CreateColor(abfClassColor:GetRGB())
			elseif ABFactionBars["Bar1"]["Edge"]["ArtGradientOptions1"] == "Faction Color" then
				ABFactionBars["Bar1"]["Edge"]["ArtGradientColor1"] = CreateColor(_G["PLAYER_FACTION_COLOR_"..string.upper(abfFaction.name)]:GetRGB())
			elseif ABFactionBars["Bar1"]["Edge"]["ArtGradientOptions1"] == "Custom Color" then
				abfShowColorPicker("Bar1", MainMenuBar, "Edge", abfSavedColorEdge, "ArtGradientColor1")
			end
			abfSavedColorEdge("Bar1", MainMenuBar)
			abfSavedEdgeArtAnimation("Bar1", MainMenuBar)
		end
	end)
end
-- pop out 2 color Gradient two choices --
-- enter --
abfOptions1Box7PopOut2:SetScript("OnEnter", function(self)
	abfEnteringMenus(self)
	GameTooltip:SetText("|T"..C_AddOns.GetAddOnMetadata("ABF", "IconTexture")..":16|t"..abfMainColor:WrapTextInColorCode(C_AddOns.GetAddOnMetadata("ABF", "Title")).."|nChoose the second gradient|ncolor for the Edge Art") 
end)
-- leave --
abfOptions1Box7PopOut2:SetScript("OnLeave", abfLeavingMenus)
-- drop down --
abfClickPopOut(abfOptions1Box7PopOut2, abfOptions1Box7PopOut2Choice0)
-- sort clicking --
for i = 1, 3, 1 do
	_G["abfOptions1Box7PopOut2Choice"..i]:SetParent(abfOptions1Box7PopOut2Choice0)
	_G["abfOptions1Box7PopOut2Choice"..i]:SetPoint("TOP", _G["abfOptions1Box7PopOut2Choice"..i-1], "BOTTOM", 0, 0)
end
-- naming at Options 10 --
-- click --
for i = 0, 3, 1 do
	_G["abfOptions1Box7PopOut2Choice"..i]:HookScript("OnClick", function(self, button, down)
		if button == "LeftButton" and down == false then
			ABFactionBars["Bar1"]["Edge"]["ArtGradientOptions2"] = self.Text:GetText()
			abfOptions1Box7PopOut2.Text:SetText(self.Text:GetText())
			abfOptions1Box7PopOut2Choice0:Hide()
			if ABFactionBars["Bar1"]["Edge"]["ArtGradientOptions2"] == "Default Color" then
				ABFactionBars["Bar1"]["Edge"]["ArtGradientColor2"] = {r = 1, g = 1, b = 1, a = 1,}
			elseif ABFactionBars["Bar1"]["Edge"]["ArtGradientOptions2"] == "Class Color" then
				ABFactionBars["Bar1"]["Edge"]["ArtGradientColor2"] = CreateColor(abfClassColor:GetRGB())
			elseif ABFactionBars["Bar1"]["Edge"]["ArtGradientOptions2"] == "Faction Color" then
				ABFactionBars["Bar1"]["Edge"]["ArtGradientColor2"] = CreateColor(_G["PLAYER_FACTION_COLOR_"..string.upper(abfFaction.name)]:GetRGB())
			elseif ABFactionBars["Bar1"]["Edge"]["ArtGradientOptions2"] == "Custom Color" then
				abfShowColorPicker("Bar1", MainMenuBar, "Edge", abfSavedColorEdge, "ArtGradientColor2")
			end
			abfSavedColorEdge("Bar1", MainMenuBar)
			abfSavedEdgeArtAnimation("Bar1", MainMenuBar)
		end
	end)
end
-- pop out 3 color Gradient Orientation --
-- enter --
abfOptions1Box7PopOut3:SetScript("OnEnter", function(self)
	abfEnteringMenus(self)
	GameTooltip:SetText("|T"..C_AddOns.GetAddOnMetadata("ABF", "IconTexture")..":16|t"..abfMainColor:WrapTextInColorCode(C_AddOns.GetAddOnMetadata("ABF", "Title")).."|nChoose the orientation|nof the colors for the Edge Art") 
end)
-- leave --
abfOptions1Box7PopOut3:SetScript("OnLeave", abfLeavingMenus)
-- drop down --
abfClickPopOut(abfOptions1Box7PopOut3, abfOptions1Box7PopOut3Choice0)
-- sort clicking --
abfOptions1Box7PopOut3Choice1:SetParent(abfOptions1Box7PopOut3Choice0)
abfOptions1Box7PopOut3Choice1:SetPoint("TOP", abfOptions1Box7PopOut3Choice0, "BOTTOM", 0, 0)
-- naming at Options 10 --
-- click --
for i = 0, 1, 1 do
	_G["abfOptions1Box7PopOut3Choice"..i]:HookScript("OnClick", function(self, button, down)
		if button == "LeftButton" and down == false then
			ABFactionBars["Bar1"]["Edge"]["ArtGradientOrientation"] = self.Text:GetText()
			abfOptions1Box7PopOut3.Text:SetText(self.Text:GetText())
			abfOptions1Box7PopOut3Choice0:Hide()
			abfSavedColorEdge("Bar1", MainMenuBar)
			abfSavedEdgeArtAnimation("Bar1", MainMenuBar)
		end
	end)
end
-- Options Box 8, Border --
-- Box 8, Pop Out Button 1, Border Visibility --
-- enter --
abfOptions1Box8PopOut1:SetScript("OnEnter", function(self)
	abfEnteringMenus(self)
	GameTooltip:SetText("|T"..C_AddOns.GetAddOnMetadata("ABF", "IconTexture")..":16|t"..abfMainColor:WrapTextInColorCode(C_AddOns.GetAddOnMetadata("ABF", "Title")).."|nWhould you like the border of|nthe actionbar 1 to be shown?") 
end)
-- leave --
abfOptions1Box8PopOut1:SetScript("OnLeave", abfLeavingMenus)
-- drop down --
abfClickPopOut(abfOptions1Box8PopOut1, abfOptions1Box8PopOut1Choice0)
-- naming at Options 10 --
-- sort --
abfOptions1Box8PopOut1Choice1:SetParent(abfOptions1Box8PopOut1Choice0)
abfOptions1Box8PopOut1Choice1:SetPoint("TOP", abfOptions1Box8PopOut1Choice0, "BOTTOM", 0, 0)
-- click --
for i = 0, 1, 1 do
	_G["abfOptions1Box8PopOut1Choice"..i]:HookScript("OnClick", function(self, button, down)
		if button == "LeftButton" and down == false then
			abfOptions1Box8PopOut1.Text:SetText(self.Text:GetText())
			abfOptions1Box8PopOut1Choice0:Hide()
			if self.Text:GetText() == "Hide" then
				ABFactionBars["Bar1"]["BorderVisibility"] = false
			elseif self.Text:GetText() == "Show" then
				ABFactionBars["Bar1"]["BorderVisibility"] = true
			end
			abfSavedArtBorder("Bar1", MainMenuBar)
		end
	end)
end
-- Box 8, Pop Out Button 2, Border Color Choice --
-- enter --
abfOptions1Box8PopOut2:SetScript("OnEnter", function(self)
	abfEnteringMenus(self)
	GameTooltip:SetText("|T"..C_AddOns.GetAddOnMetadata("ABF", "IconTexture")..":16|t"..abfMainColor:WrapTextInColorCode(C_AddOns.GetAddOnMetadata("ABF", "Title")).."|nChoose the mode color for|nthe Border! (one color or gradient color)") 
end)
-- leave --
abfOptions1Box8PopOut2:SetScript("OnLeave", abfLeavingMenus)
-- drop down --
abfClickPopOut(abfOptions1Box8PopOut2, abfOptions1Box8PopOut2Choice0)
-- naming at Options 10 --
-- sort --
abfOptions1Box8PopOut2Choice1:SetParent(abfOptions1Box8PopOut2Choice0)
abfOptions1Box8PopOut2Choice1:SetPoint("TOP", abfOptions1Box8PopOut2Choice0, "BOTTOM", 0, 0)
-- click --
for i = 0, 1, 1 do
	_G["abfOptions1Box8PopOut2Choice"..i]:HookScript("OnClick", function(self, button, down)
		if button == "LeftButton" and down == false then
			ABFactionBars["Bar1"]["BorderArtColorMode"] = self.Text:GetText()
			abfOptions1Box8PopOut2.Text:SetText(self.Text:GetText())
			abfOptions1Box8PopOut2Choice0:Hide()
			if ABFactionBars["Bar1"]["BorderArtColorMode"] == "One Color" then
				if not abfOptions1Box9:IsShown() then abfOptions1Box9:Show() end
				if abfOptions1Box10:IsShown() then abfOptions1Box10:Hide() end
			elseif ABFactionBars["Bar1"]["BorderArtColorMode"] == "Gradient Color" then
				if abfOptions1Box9:IsShown() then abfOptions1Box9:Hide() end
				if not abfOptions1Box10:IsShown() then abfOptions1Box10:Show() end
			end
			abfSavedColorBorder("Bar1", MainMenuBar)
		end
	end)
end
-- Options Box 9, Border Color One --
-- Box 9, Pop Out Button 1, Border Color One Choices --
-- enter --
abfOptions1Box9PopOut1:SetScript("OnEnter", function(self)
	abfEnteringMenus(self)
	GameTooltip:SetText("|T"..C_AddOns.GetAddOnMetadata("ABF", "IconTexture")..":16|t"..abfMainColor:WrapTextInColorCode(C_AddOns.GetAddOnMetadata("ABF", "Title")).."|nChoose the color for|nthe Border") 
end)
-- leave --
abfOptions1Box9PopOut1:SetScript("OnLeave", abfLeavingMenus)
-- drop down --
abfClickPopOut(abfOptions1Box9PopOut1, abfOptions1Box9PopOut1Choice0)
-- naming at Options 10 --
-- sort --
for i = 1, 3, 1 do
	_G["abfOptions1Box9PopOut1Choice"..i]:SetParent(abfOptions1Box9PopOut1Choice0)
	_G["abfOptions1Box9PopOut1Choice"..i]:SetPoint("TOP", _G["abfOptions1Box9PopOut1Choice"..i-1], "BOTTOM", 0, 0)
end
-- click --
for i = 0, 3, 1 do
	_G["abfOptions1Box9PopOut1Choice"..i]:HookScript("OnClick", function(self, button, down)
		if button == "LeftButton" and down == false then
			ABFactionBars["Bar1"]["BorderArtColorOptions"] = self.Text:GetText()
			abfOptions1Box9PopOut1.Text:SetText(self.Text:GetText())
			abfOptions1Box9PopOut1Choice0:Hide()
			if ABFactionBars["Bar1"]["BorderArtColorOptions"] == "Default Color" then
				ABFactionBars["Bar1"]["BorderArtColor"] = {r = 1, g = 1, b = 1, a = 1,}
			elseif ABFactionBars["Bar1"]["BorderArtColorOptions"] == "Class Color" then
				ABFactionBars["Bar1"]["BorderArtColor"] = CreateColor(abfClassColor:GetRGB())
			elseif ABFactionBars["Bar1"]["BorderArtColorOptions"] == "Faction Color" then
				ABFactionBars["Bar1"]["BorderArtColor"] = CreateColor(_G["PLAYER_FACTION_COLOR_"..string.upper(abfFaction.name)]:GetRGB())
			elseif ABFactionBars["Bar1"]["BorderArtColorOptions"] == "Custom Color" then
				abfShowColorPickerCD("Bar1", MainMenuBar, "BorderArtColor", abfSavedColorBorder)
			end
			abfSavedColorBorder("Bar1", MainMenuBar)
		end
	end)
end
-- Options Box 10, Border Color Gradient --
-- Box 10, Pop Out Button 1, Border Color Gradient One --
-- enter --
abfOptions1Box10PopOut1:SetScript("OnEnter", function(self)
	abfEnteringMenus(self)
	GameTooltip:SetText("|T"..C_AddOns.GetAddOnMetadata("ABF", "IconTexture")..":16|t"..abfMainColor:WrapTextInColorCode(C_AddOns.GetAddOnMetadata("ABF", "Title")).."|nChoose the first gradient|ncolor for the Border") 
end)
-- leave --
abfOptions1Box10PopOut1:SetScript("OnLeave", abfLeavingMenus)
-- drop down --
abfClickPopOut(abfOptions1Box10PopOut1, abfOptions1Box10PopOut1Choice0)
-- naming at Options 10 --
-- sort --
for i = 1, 3, 1 do
	_G["abfOptions1Box10PopOut1Choice"..i]:SetParent(abfOptions1Box10PopOut1Choice0)
	_G["abfOptions1Box10PopOut1Choice"..i]:SetPoint("TOP", _G["abfOptions1Box10PopOut1Choice"..i-1], "BOTTOM", 0, 0)
end
-- click --
for i = 0, 3, 1 do
	_G["abfOptions1Box10PopOut1Choice"..i]:HookScript("OnClick", function(self, button, down)
		if button == "LeftButton" and down == false then
			ABFactionBars["Bar1"]["BorderArtGradientOptions1"] = self.Text:GetText()
			abfOptions1Box10PopOut1.Text:SetText(self.Text:GetText())
			abfOptions1Box10PopOut1Choice0:Hide()
			if ABFactionBars["Bar1"]["BorderArtGradientOptions1"] == "Default Color" then
				ABFactionBars["Bar1"]["BorderArtGradient1"] = {r = 1, g = 1, b = 1, a = 1,}
			elseif ABFactionBars["Bar1"]["BorderArtGradientOptions1"] == "Class Color" then
				ABFactionBars["Bar1"]["BorderArtGradient1"] = CreateColor(abfClassColor:GetRGB())
			elseif ABFactionBars["Bar1"]["BorderArtGradientOptions1"] == "Faction Color" then
				ABFactionBars["Bar1"]["BorderArtGradient1"] = CreateColor(_G["PLAYER_FACTION_COLOR_"..string.upper(abfFaction.name)]:GetRGB())
			elseif ABFactionBars["Bar1"]["BorderArtGradientOptions1"] == "Custom Color" then
				abfShowColorPickerCD("Bar1", MainMenuBar, "BorderArtGradient1", abfSavedColorBorder)
			end
			abfSavedColorBorder("Bar1", MainMenuBar)
		end
	end)
end
-- Box 10, Pop Out Button 2, Border Color Gradient Two --
-- enter --
abfOptions1Box10PopOut2:SetScript("OnEnter", function(self)
	abfEnteringMenus(self)
	GameTooltip:SetText("|T"..C_AddOns.GetAddOnMetadata("ABF", "IconTexture")..":16|t"..abfMainColor:WrapTextInColorCode(C_AddOns.GetAddOnMetadata("ABF", "Title")).."|nChoose the first gradient|ncolor for the Border") 
end)
-- leave --
abfOptions1Box10PopOut2:SetScript("OnLeave", abfLeavingMenus)
-- drop down --
abfClickPopOut(abfOptions1Box10PopOut2, abfOptions1Box10PopOut2Choice0)
-- naming at Options 10 --
-- sort --
for i = 1, 3, 1 do
	_G["abfOptions1Box10PopOut2Choice"..i]:SetParent(abfOptions1Box10PopOut2Choice0)
	_G["abfOptions1Box10PopOut2Choice"..i]:SetPoint("TOP", _G["abfOptions1Box10PopOut2Choice"..i-1], "BOTTOM", 0, 0)
end
-- click --
for i = 0, 3, 1 do
	_G["abfOptions1Box10PopOut2Choice"..i]:HookScript("OnClick", function(self, button, down)
		if button == "LeftButton" and down == false then
			ABFactionBars["Bar1"]["BorderArtGradientOptions2"] = self.Text:GetText()
			abfOptions1Box10PopOut2.Text:SetText(self.Text:GetText())
			abfOptions1Box10PopOut2Choice0:Hide()
			if ABFactionBars["Bar1"]["BorderArtGradientOptions2"] == "Default Color" then
				ABFactionBars["Bar1"]["BorderArtGradient2"] = {r = 1, g = 1, b = 1, a = 1,}
			elseif ABFactionBars["Bar1"]["BorderArtGradientOptions2"] == "Class Color" then
				ABFactionBars["Bar1"]["BorderArtGradient2"] = CreateColor(abfClassColor:GetRGB())
			elseif ABFactionBars["Bar1"]["BorderArtGradientOptions2"] == "Faction Color" then
				ABFactionBars["Bar1"]["BorderArtGradient2"] = CreateColor(_G["PLAYER_FACTION_COLOR_"..string.upper(abfFaction.name)]:GetRGB())
			elseif ABFactionBars["Bar1"]["BorderArtGradientOptions2"] == "Custom Color" then
				abfShowColorPickerCD("Bar1", MainMenuBar, "BorderArtGradient2", abfSavedColorBorder)
			end
			abfSavedColorBorder("Bar1", MainMenuBar)
		end
	end)
end
-- Box 10, Pop Out Button 3, Border Color Gradient Orientation --
-- enter --
abfOptions1Box10PopOut3:SetScript("OnEnter", function(self)
	abfEnteringMenus(self)
	GameTooltip:SetText("|T"..C_AddOns.GetAddOnMetadata("ABF", "IconTexture")..":16|t"..abfMainColor:WrapTextInColorCode(C_AddOns.GetAddOnMetadata("ABF", "Title")).."|nChoose the orientation|nof the colors for the Barder") 
end)
-- leave --
abfOptions1Box10PopOut3:SetScript("OnLeave", abfLeavingMenus)
-- drop down --
abfClickPopOut(abfOptions1Box10PopOut3, abfOptions1Box10PopOut3Choice0)
-- sort --
abfOptions1Box10PopOut3Choice1:SetParent(abfOptions1Box10PopOut3Choice0)
abfOptions1Box10PopOut3Choice1:SetPoint("TOP", abfOptions1Box10PopOut3Choice0, "BOTTOM", 0, 0)
-- naming at Options 10 --
-- click --
for i = 0, 1, 1 do
	_G["abfOptions1Box10PopOut3Choice"..i]:HookScript("OnClick", function(self, button, down)
		if button == "LeftButton" and down == false then
			ABFactionBars["Bar1"]["BorderArtGradientOrientation"] = self.Text:GetText()
			abfOptions1Box10PopOut3.Text:SetText(self.Text:GetText())
			abfOptions1Box10PopOut3Choice0:Hide()
			abfSavedColorBorder("Bar1", MainMenuBar)
		end
	end)
end
-- Showing the panel --
abfOptions1:HookScript("OnShow", function(self)
	CheckSavedVariables1()
	CheckSavedVariables2()
-- panels --
	for i = 1, 8, 1 do
		if _G["abfOptions"..i.."a"]:IsShown() then _G["abfOptions"..i.."a"]:Hide() end
	end
	for i = 2, 10, 1 do
		if _G["abfOptions"..i]:IsShown() then _G["abfOptions"..i]:Hide() end
	end
-- tabs --
	abfOptions00Tab1.Text:SetTextColor(abfHighColor:GetRGB())
	for i = 2, 10, 1 do
		_G["abfOptions00Tab"..i].Text:SetTextColor(abfMainColor:GetRGB())
	end
-- buttons --
	if not abfOptions00PageButton1a:IsShown() then abfOptions00PageButton1a:Show() end
	if not abfOptions00PageButton2a:IsShown() then abfOptions00PageButton2a:Show() end
	for i = 2, 8, 1 do
		if i == 2 then k = "b"
		elseif i == 3 then k = "c"
		elseif i == 4 then k = "d"
		elseif i == 5 then k = "e"
		elseif i == 6 then k = "f"
		elseif i == 7 then k = "g"
		elseif i == 8 then k = "h"
		end
		if _G["abfOptions00PageButton1"..k]:IsShown() then _G["abfOptions00PageButton1"..k]:Hide() end
		if _G["abfOptions00PageButton2"..k]:IsShown() then _G["abfOptions00PageButton2"..k]:Hide() end
	end
	abfOptions00PageButton1a.Text:SetTextColor(abfHighColor:GetRGB())
	abfOptions00PageButton2a.Text:SetTextColor(abfMainColor:GetRGB())
end)
