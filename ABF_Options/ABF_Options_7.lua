-- takeing care the rest boxes --
abfOptions7Box00:SetPoint("TOPLEFT", abfOptions7Box1, "BOTTOMLEFT", 0, 0)
abfOptions7Box3:SetPoint("TOPRIGHT", abfOptions7Box2, "BOTTOMRIGHT", 0, 6)
abfOptions7Box4:SetPoint("TOPRIGHT", abfOptions7Box2, "BOTTOMRIGHT", 0, 6)
abfOptions7Box01:SetPoint("TOPRIGHT", abfOptions7Box4, "BOTTOMRIGHT", 0, 0)
abfOptions7Box5:SetPoint("TOPLEFT", abfOptions7Box00, "BOTTOMLEFT", 0, 0)
abfOptions7Box6:SetPoint("TOPLEFT", abfOptions7Box5, "BOTTOMLEFT", 0, 6)
abfOptions7Box7:SetPoint("TOPLEFT", abfOptions7Box5, "BOTTOMLEFT", 0, 6)
abfOptions7Box8:SetPoint("TOPRIGHT", abfOptions7Box01, "BOTTOMRIGHT", 0, 0)
abfOptions7Box9:SetPoint("TOPRIGHT", abfOptions7Box8, "BOTTOMRIGHT", 0, 6)
abfOptions7Box10:SetPoint("TOPRIGHT", abfOptions7Box8, "BOTTOMRIGHT", 0, 6)
abfOptions7Box2.BorderBottom:Hide()
abfOptions7Box3.BorderTop:Hide()
abfOptions7Box4.BorderTop:Hide()
abfOptions7Box5.BorderBottom:Hide()
abfOptions7Box6.BorderTop:Hide()
abfOptions7Box7.BorderTop:Hide()
abfOptions7Box8.BorderBottom:Hide()
abfOptions7Box9.BorderTop:Hide()
abfOptions7Box10.BorderTop:Hide()
-- naming --
abfOptions7Box1.TitleTxt:SetText("Texts Fonts & Cooldown Color")
abfOptions7Box2.TitleTxt:SetText("Slot Art & Color Mode")
abfOptions7Box3.TitleTxt:SetText("Slot Art One Color")
abfOptions7Box4.TitleTxt:SetText("Slot Art Gradient Color")
abfOptions7Box5.TitleTxt:SetText("Edge Art, Color Mode & Animation")
abfOptions7Box6.TitleTxt:SetText("Edge Art One Color")
abfOptions7Box7.TitleTxt:SetText("Edge Art Gradient Color")
abfOptions7Box8.TitleTxt:SetText("Border Visibility & Color Mode")
abfOptions7Box9.TitleTxt:SetText("Border One Color")
abfOptions7Box10.TitleTxt:SetText("Border Gradient Color")
-- Checking the Saved Variables --
local function CheckSavedVariables1()
-- Box 1, Pop out 1 --
	abfOptions7Box1PopOut1.Text:SetText(ABFactionBars["Bar7"]["HotKeyFonts"])
-- Box 1, Pop out 2 --
	abfOptions7Box1PopOut2.Text:SetText(ABFactionBars["Bar7"]["CountFonts"])
-- Box 1, Pop out 3 --
	abfOptions7Box1PopOut3.Text:SetText(ABFactionBars["Bar7"]["NameFonts"])
-- Box 1, Pop out 4 --
	abfOptions7Box1PopOut4.Text:SetText(ABFactionBars["Bar7"]["ColorCDoption"])
-- Box 2, Pop out 1 --
	abfOptions7Box2PopOut1.Text:SetText(ABFactionBars["Bar7"]["Slot"]["Art"])
-- Box 2, Pop out 2 --
	abfOptions7Box2PopOut2.Text:SetText(ABFactionBars["Bar7"]["Slot"]["ArtColorChoice"])
	if ABFactionBars["Bar7"]["Slot"]["ArtColorChoice"] == "One Color" then
		if not abfOptions7Box3:IsShown() then abfOptions7Box3:Show() end
		if abfOptions7Box4:IsShown() then abfOptions7Box4:Hide() end
	elseif ABFactionBars["Bar7"]["Slot"]["ArtColorChoice"] == "Gradient Color" then
		if not abfOptions7Box4:IsShown() then abfOptions7Box4:Show() end
		if abfOptions7Box3:IsShown() then abfOptions7Box3:Hide() end
	end
-- Box 3, Slider 1 --
	abfOptions7Box3Slider1.Slider:SetValue(ABFactionBars["Bar7"]["Slot"]["ArtColorDesaturation"] * 10)
-- Box 3, Pop out 1 --
	abfOptions7Box3PopOut1.Text:SetText(ABFactionBars["Bar7"]["Slot"]["ArtColorOptions"])
	if ABFactionBars["Bar7"]["Slot"]["ArtColorOptions"] == "Custom Color" then
		if not abfOptions7Box3Slider1:IsShown() then abfOptions7Box3Slider1:Show() end
	else
		if abfOptions7Box3Slider1:IsShown() then abfOptions7Box3Slider1:Hide() end
	end
-- Box 4, pop out 1 --
	abfOptions7Box4PopOut1.Text:SetText(ABFactionBars["Bar7"]["Slot"]["ArtGradientOptions1"])
-- Box 4, pop out 2 --
	abfOptions7Box4PopOut2.Text:SetText(ABFactionBars["Bar7"]["Slot"]["ArtGradientOptions2"])
-- Box 4, pop out 3 --
	abfOptions7Box4PopOut3.Text:SetText(ABFactionBars["Bar7"]["Slot"]["ArtGradientOrientation"])
-- Box 5,Pop out 1 --
	abfOptions7Box5PopOut1.Text:SetText(ABFactionBars["Bar7"]["Edge"]["Art"])
	if ABFactionBars["Bar7"]["Edge"]["Art"] == "Gryphon" or ABFactionBars["Bar7"]["Edge"]["Art"] == "Wyvern" then
		if not abfOptions7Box5PopOut3:IsShown() then abfOptions7Box5PopOut3:Show() end
		if not abfOptions7Box5PopOut4:IsShown() then abfOptions7Box5PopOut4:Show() end
	else
		if abfOptions7Box5PopOut3:IsShown() then abfOptions7Box5PopOut3:Hide() end
		if abfOptions7Box5PopOut4:IsShown() then abfOptions7Box5PopOut4:Hide() end
	end
-- Box 5, Pop out 2 --
	abfOptions7Box5PopOut2.Text:SetText(ABFactionBars["Bar7"]["Edge"]["ArtColorChoice"])
	if ABFactionBars["Bar7"]["Edge"]["ArtColorChoice"] == "One Color" then
		if not abfOptions7Box6:IsShown() then abfOptions7Box6:Show() end
		if abfOptions7Box7:IsShown() then abfOptions7Box7:Hide() end
	elseif ABFactionBars["Bar7"]["Edge"]["ArtColorChoice"] == "Gradient Color" then
		if not abfOptions7Box7:IsShown() then abfOptions7Box7:Show() end
		if abfOptions7Box6:IsShown() then abfOptions7Box6:Hide() end
	end
-- Box 5, Pop out 3 --
	if ABFactionBars["Bar7"]["Edge"]["Animation"] then
		abfOptions7Box5PopOut3.Text:SetText("Show")
	elseif not ABFactionBars["Bar7"]["Edge"]["Animation"] then
		abfOptions7Box5PopOut3.Text:SetText("Hide")
	end
-- Box 5, Pop out 4 --
	abfOptions7Box5PopOut4.Text:SetText(ABFactionBars["Bar7"]["Edge"]["AnimationColorOptions"])
end
local function CheckSavedVariables2()
-- Box 6, Slider 1 --
	if ABFactionBars["Bar7"]["Edge"]["ArtColorChoice"] == "One Color" then
		abfOptions7Box6Slider1:SetValue(ABFactionBars["Bar7"]["Edge"]["ArtColorDesaturation"] * 10)
	end
-- Box 6, Pop out 1 --
	abfOptions7Box6PopOut1.Text:SetText(ABFactionBars["Bar7"]["Edge"]["ArtColorOptions"])
	if ABFactionBars["Bar7"]["Edge"]["ArtColorOptions"] == "Custom Color" then
		if not abfOptions7Box6Slider1:IsShown() then abfOptions7Box6Slider1:Show() end
	else
		if abfOptions7Box6Slider1:IsShown() then abfOptions7Box6Slider1:Hide() end
	end
-- Box 7, pop out 1 --
	abfOptions7Box7PopOut1.Text:SetText(ABFactionBars["Bar7"]["Edge"]["ArtGradientOptions1"])
-- Box 7, pop out 2 --
	abfOptions7Box7PopOut2.Text:SetText(ABFactionBars["Bar7"]["Edge"]["ArtGradientOptions2"])
-- Box 7, pop out 3 --
	abfOptions7Box7PopOut3.Text:SetText(ABFactionBars["Bar7"]["Edge"]["ArtGradientOrientation"])
-- Box 8, Pop Out Button 1 --
	if ABFactionBars["Bar7"]["BorderVisibility"] then
		abfOptions7Box8PopOut1.Text:SetText("Show")
	elseif not ABFactionBars["Bar7"]["BorderVisibility"] then
		abfOptions7Box8PopOut1.Text:SetText("Hide")
	end
-- Box 8, Pop Out Button 2 --
	abfOptions7Box8PopOut2.Text:SetText(ABFactionBars["Bar7"]["BorderArtColorMode"])
	if ABFactionBars["Bar7"]["BorderArtColorMode"] == "One Color" then
		if not abfOptions7Box9:IsShown() then abfOptions7Box9:Show() end
		if abfOptions7Box10:IsShown() then abfOptions7Box10:Hide() end
	elseif ABFactionBars["Bar7"]["BorderArtColorMode"] == "Gradient Color" then
		if abfOptions7Box9:IsShown() then abfOptions7Box9:Hide() end
		if not abfOptions7Box10:IsShown() then abfOptions7Box10:Show() end
	end
-- Box 9, Pop Out Button 1 --
	abfOptions7Box9PopOut1.Text:SetText(ABFactionBars["Bar7"]["BorderArtColorOptions"])
-- Box 10, Pop Out Button 1 --
	abfOptions7Box10PopOut1.Text:SetText(ABFactionBars["Bar7"]["BorderArtGradientOptions1"])
-- Box 10, Pop Out Button 2 --
	abfOptions7Box10PopOut2.Text:SetText(ABFactionBars["Bar7"]["BorderArtGradientOptions2"])
-- Box 10, Pop Out Button 3 --
	abfOptions7Box10PopOut3.Text:SetText(ABFactionBars["Bar7"]["BorderArtGradientOrientation"])
end
-- Box 1, Texts Fonts & Cooldown Color --
-- Box 1, Pop Out Button 1, Hot Key Fonts --
-- enter --
abfOptions7Box1PopOut1:SetScript("OnEnter", function(self)
	abfEnteringMenus(self)
	GameTooltip:SetText("|T"..C_AddOns.GetAddOnMetadata("ABF", "IconTexture")..":16|t"..abfMainColor:WrapTextInColorCode(C_AddOns.GetAddOnMetadata("ABF", "Title")).."|nChoose fonts for|nthe Hot Key Text") 
end)
-- leave --
abfOptions7Box1PopOut1:SetScript("OnLeave", abfLeavingMenus)
-- drop down --
abfClickPopOut(abfOptions7Box1PopOut1, abfOptions7Box1PopOut1Choice0)
-- sort clicking --
for i = 1, 7, 1 do
	_G["abfOptions7Box1PopOut1Choice"..i]:SetParent(abfOptions7Box1PopOut1Choice0)
	_G["abfOptions7Box1PopOut1Choice"..i]:SetPoint("TOP", _G["abfOptions7Box1PopOut1Choice"..i-1], "BOTTOM", 0, 0)
end
-- naming at Options10 --
-- clicking --
for i = 0, 7, 1 do
	_G["abfOptions7Box1PopOut1Choice"..i]:HookScript("OnClick", function(self, button, down)
		if button == "LeftButton" and down == false then
			ABFactionBars["Bar7"]["HotKeyFonts"] = self.Text:GetText()
			abfOptions7Box1PopOut1.Text:SetText(self.Text:GetText())
			abfOptions7Box1PopOut1Choice0:Hide()
			abfSavedFonts("Bar7", MultiBar6)
		end
	end)
end
-- Box 1, Pop Out Button 2, Count Fonts --
-- enter --
abfOptions7Box1PopOut2:SetScript("OnEnter", function(self)
	abfEnteringMenus(self)
	GameTooltip:SetText("|T"..C_AddOns.GetAddOnMetadata("ABF", "IconTexture")..":16|t"..abfMainColor:WrapTextInColorCode(C_AddOns.GetAddOnMetadata("ABF", "Title")).."|nChoose fonts for|nthe Count Text") 
end)
-- leave --
abfOptions7Box1PopOut2:SetScript("OnLeave", abfLeavingMenus)
-- drop down --
abfClickPopOut(abfOptions7Box1PopOut2, abfOptions7Box1PopOut2Choice0)
-- sort clicking --
for i = 1, 7, 1 do
	_G["abfOptions7Box1PopOut2Choice"..i]:SetParent(abfOptions7Box1PopOut2Choice0)
	_G["abfOptions7Box1PopOut2Choice"..i]:SetPoint("TOP", _G["abfOptions7Box1PopOut2Choice"..i-1], "BOTTOM", 0, 0)
end
-- naming at Options10 --
-- clicking --
for i = 0, 7, 1 do
	_G["abfOptions7Box1PopOut2Choice"..i]:HookScript("OnClick", function(self, button, down)
		if button == "LeftButton" and down == false then
			ABFactionBars["Bar7"]["CountFonts"] = self.Text:GetText()
			abfOptions7Box1PopOut2.Text:SetText(self.Text:GetText())
			abfOptions7Box1PopOut2Choice0:Hide()
			abfSavedFonts("Bar7", MultiBar6)
		end
	end)
end
-- Box 1, Pop Out Button 3, Name Fonts --
-- enter --
abfOptions7Box1PopOut3:SetScript("OnEnter", function(self)
	abfEnteringMenus(self)
	GameTooltip:SetText("|T"..C_AddOns.GetAddOnMetadata("ABF", "IconTexture")..":16|t"..abfMainColor:WrapTextInColorCode(C_AddOns.GetAddOnMetadata("ABF", "Title")).."|nChoose fonts for|nthe Name Text") 
end)
-- leave --
abfOptions7Box1PopOut3:SetScript("OnLeave", abfLeavingMenus)
-- drop down --
abfClickPopOut(abfOptions7Box1PopOut3, abfOptions7Box1PopOut3Choice0)
-- sort clicking --
for i = 1, 7, 1 do
	_G["abfOptions7Box1PopOut3Choice"..i]:SetParent(abfOptions7Box1PopOut3Choice0)
	_G["abfOptions7Box1PopOut3Choice"..i]:SetPoint("TOP", _G["abfOptions7Box1PopOut3Choice"..i-1], "BOTTOM", 0, 0)
end
-- naming at Options10 --
-- clicking --
for i = 0, 7, 1 do
	_G["abfOptions7Box1PopOut3Choice"..i]:HookScript("OnClick", function(self, button, down)
		if button == "LeftButton" and down == false then
			ABFactionBars["Bar7"]["NameFonts"] = self.Text:GetText()
			abfOptions7Box1PopOut3.Text:SetText(self.Text:GetText())
			abfOptions7Box1PopOut3Choice0:Hide()
			abfSavedFonts("Bar7", MultiBar6)
		end
	end)
end
-- Box 1, Pop Out Button 4, Cooldown Color --
-- enter --
abfOptions7Box1PopOut4:SetScript("OnEnter", function(self)
	abfEnteringMenus(self)
	GameTooltip:SetText("|T"..C_AddOns.GetAddOnMetadata("ABF", "IconTexture")..":16|t"..abfMainColor:WrapTextInColorCode(C_AddOns.GetAddOnMetadata("ABF", "Title")).."|nChoose the color for|nthe Cooldown Swipe") 
end)
-- leave --
abfOptions7Box1PopOut4:SetScript("OnLeave", abfLeavingMenus)
-- drop down --
abfClickPopOut(abfOptions7Box1PopOut4, abfOptions7Box1PopOut4Choice0)
-- sort clicking --
for i = 1, 3, 1 do
	_G["abfOptions7Box1PopOut4Choice"..i]:SetParent(abfOptions7Box1PopOut4Choice0)
	_G["abfOptions7Box1PopOut4Choice"..i]:SetPoint("TOP", _G["abfOptions7Box1PopOut4Choice"..i-1], "BOTTOM", 0, 0)
end
-- naming at Options10 --
-- on click --
for i = 0, 3, 1 do
	_G["abfOptions7Box1PopOut4Choice"..i]:HookScript("OnClick", function(self, button, down)
		if button == "LeftButton" and down == false then
			ABFactionBars["Bar7"]["ColorCDoption"] = self.Text:GetText()
			abfOptions7Box1PopOut4.Text:SetText(self.Text:GetText())
			abfOptions7Box1PopOut4Choice0:Hide()
			if ABFactionBars["Bar7"]["ColorCDoption"] == "Default Color" then
				ABFactionBars["Bar7"]["ColorCD"] = {r = 0, g = 0, b = 0, a = 0.8,}
			elseif ABFactionBars["Bar7"]["ColorCDoption"] == "Class Color" then
				ABFactionBars["Bar7"]["ColorCD"] = CreateColor(abfClassColor:GetRGB())
			elseif ABFactionBars["Bar7"]["ColorCDoption"] == "Faction Color" then
				ABFactionBars["Bar7"]["ColorCD"] = CreateColor(_G["PLAYER_FACTION_COLOR_"..string.upper(abfFaction.name)]:GetRGB())
			elseif ABFactionBars["Bar7"]["ColorCDoption"] == "Custom Color" then
				abfShowColorPickerCD("Bar7", MultiBar6, "ColorCD", abfSavedCDcolor)
			end
			abfSavedCDcolor("Bar7", MultiBar6)
		end
	end)
end
-- Box 2 Slot Art --
-- pop out 1 Slot Art Choice --
-- enter --
abfOptions7Box2PopOut1:SetScript("OnEnter", function(self)
	abfEnteringMenus(self)
	GameTooltip:SetText("|T"..C_AddOns.GetAddOnMetadata("ABF", "IconTexture")..":16|t"..abfMainColor:WrapTextInColorCode(C_AddOns.GetAddOnMetadata("ABF", "Title")).."|nChoose the Slot Art for|nthe Action Bar 7") 
end)
-- leave --
abfOptions7Box2PopOut1:SetScript("OnLeave", abfLeavingMenus)
-- drop down --
abfClickPopOut(abfOptions7Box2PopOut1, abfOptions7Box2PopOut1Choice0)
-- sort clicking --
for i = 1, 6, 1 do
	_G["abfOptions7Box2PopOut1Choice"..i]:SetParent(abfOptions7Box2PopOut1Choice0)
	_G["abfOptions7Box2PopOut1Choice"..i]:SetPoint("TOP", _G["abfOptions7Box2PopOut1Choice"..i-1], "BOTTOM", 0, 0)
-- on leave --
	_G["abfOptions7Box2PopOut1Choice"..i]:HookScript("OnLeave", function(self) abfOptions7Box2PopOut1.Example:Hide() end)
end
-- naming at Options 10 --
-- clicking --
for i = 0, 6, 1 do
	_G["abfOptions7Box2PopOut1Choice"..i]:HookScript("OnClick", function(self, button, down)
		if button == "LeftButton" and down == false then
			ABFactionBars["Bar7"]["Slot"]["Art"] = self.Text:GetText()
			abfOptions7Box2PopOut1.Text:SetText(self.Text:GetText())
			abfOptions7Box2PopOut1Choice0:Hide()
			abfSavedArtSlot("Bar7", MultiBar6)
		end
	end)
end
-- entering the pop out buttons at Options 10 --
-- pop out 2 Slot Art Color Choice --
-- enter --
abfOptions7Box2PopOut2:SetScript("OnEnter", function(self)
	abfEnteringMenus(self)
	GameTooltip:SetText("|T"..C_AddOns.GetAddOnMetadata("ABF", "IconTexture")..":16|t"..abfMainColor:WrapTextInColorCode(C_AddOns.GetAddOnMetadata("ABF", "Title")).."|nChoose the mode color for|nthe Slot Art! (one color or gradient color)") 
end)
-- leave --
abfOptions7Box2PopOut2:SetScript("OnLeave", abfLeavingMenus)
-- drop down --
abfClickPopOut(abfOptions7Box2PopOut2, abfOptions7Box2PopOut2Choice0)
-- position --
abfOptions7Box2PopOut2Choice1:SetParent(abfOptions7Box2PopOut2Choice0)
abfOptions7Box2PopOut2Choice1:SetPoint("TOP", abfOptions7Box2PopOut2Choice0, "BOTTOM", 0, 0)
-- naming at Options 10 --
-- click --
for i = 0, 1, 1 do
	_G["abfOptions7Box2PopOut2Choice"..i]:HookScript("OnClick", function(self, button, down)
		if button == "LeftButton" and down == false then
			ABFactionBars["Bar7"]["Slot"]["ArtColorChoice"] = self.Text:GetText()
			abfOptions7Box2PopOut2.Text:SetText(self.Text:GetText())
			abfOptions7Box2PopOut2Choice0:Hide()
			if ABFactionBars["Bar7"]["Slot"]["ArtColorChoice"] == "One Color" then
				if not abfOptions7Box3:IsShown() then abfOptions7Box3:Show() end
				if abfOptions7Box4:IsShown() then abfOptions7Box4:Hide() end
				abfOptions7Box3Slider1:SetValue(ABFactionBars["Bar7"]["Slot"]["ArtColorDesaturation"] * 10)
			elseif ABFactionBars["Bar7"]["Slot"]["ArtColorChoice"] == "Gradient Color" then
				if not abfOptions7Box4:IsShown() then abfOptions7Box4:Show() end
				if abfOptions7Box3:IsShown() then abfOptions7Box3:Hide() end
			end
			abfSavedColorSlot("Bar7", MultiBar6)
		end
	end)
end
-- Box 3, color one --
-- Slider 1, Desaturation --
-- min max values --
abfOptions7Box3Slider1.MinText:SetText(0)
abfOptions7Box3Slider1.MaxText:SetText(1)
abfOptions7Box3Slider1.Slider:SetMinMaxValues(0, 10)
-- enter --
abfOptions7Box3Slider1.Slider:SetScript("OnEnter", function(self)
	abfEnteringMenus(self)
	GameTooltip:SetText("|T"..C_AddOns.GetAddOnMetadata("ABF", "IconTexture")..":16|t "..abfMainColor:WrapTextInColorCode(C_AddOns.GetAddOnMetadata("ABF", "Title")).."|nYou can also use your mousewheel|nor the buttons to the edge|nto change the value!") 
end)
-- leave --
abfOptions7Box3Slider1.Slider:SetScript("OnLeave", abfLeavingMenus)
-- on mouse wheel --
abfOptions7Box3Slider1.Slider:SetScript("OnMouseWheel", abfMouseWheelSlider)
-- On Value Changed --
abfOptions7Box3Slider1.Slider:SetScript("OnValueChanged", function (self, value, userInput)
	abfOptions7Box3Slider1.TopText:SetText("Desaturation of the Artwork: "..(self:GetValue()/10))
	ABFactionBars["Bar7"]["Slot"]["ArtColorDesaturation"] = self:GetValue()/10
	abfSavedColorSlot("Bar7", MultiBar6)
end)
-- pop out 1 color one choices --
-- enter --
abfOptions7Box3PopOut1:SetScript("OnEnter", function(self)
	abfEnteringMenus(self)
	GameTooltip:SetText("|T"..C_AddOns.GetAddOnMetadata("ABF", "IconTexture")..":16|t"..abfMainColor:WrapTextInColorCode(C_AddOns.GetAddOnMetadata("ABF", "Title")).."|nChoose the color for|nthe Slot Art") 
end)
-- leave --
abfOptions7Box3PopOut1:SetScript("OnLeave", abfLeavingMenus)
-- drop down --
abfClickPopOut(abfOptions7Box3PopOut1, abfOptions7Box3PopOut1Choice0)
-- sort --
for i = 1, 3, 1 do
	_G["abfOptions7Box3PopOut1Choice"..i]:SetParent(abfOptions7Box3PopOut1Choice0)
	_G["abfOptions7Box3PopOut1Choice"..i]:SetPoint("TOP", _G["abfOptions7Box3PopOut1Choice"..i-1], "BOTTOM", 0, 0)
end
-- naming at Options 10 --
-- click --
for i = 0, 3, 1 do
	_G["abfOptions7Box3PopOut1Choice"..i]:HookScript("OnClick", function(self, button, down)
		if button == "LeftButton" and down == false then
			ABFactionBars["Bar7"]["Slot"]["ArtColorOptions"] = self.Text:GetText()
			abfOptions7Box3PopOut1.Text:SetText(self.Text:GetText())
			abfOptions7Box3PopOut1Choice0:Hide()
			if ABFactionBars["Bar7"]["Slot"]["ArtColorOptions"] == "Default Color" then
				if abfOptions7Box3Slider1:IsShown() then abfOptions7Box3Slider1:Hide() end
				ABFactionBars["Bar7"]["Slot"]["ArtColor"] = {r = 1, g = 1, b = 1, a = 1,}
			elseif ABFactionBars["Bar7"]["Slot"]["ArtColorOptions"] == "Class Color" then
				if abfOptions7Box3Slider1:IsShown() then abfOptions7Box3Slider1:Hide() end
				ABFactionBars["Bar7"]["Slot"]["ArtColor"] = CreateColor(abfClassColor:GetRGB())
			elseif ABFactionBars["Bar7"]["Slot"]["ArtColorOptions"] == "Faction Color" then
				if abfOptions7Box3Slider1:IsShown() then abfOptions7Box3Slider1:Hide() end
				ABFactionBars["Bar7"]["Slot"]["ArtColor"] = CreateColor(_G["PLAYER_FACTION_COLOR_"..string.upper(abfFaction.name)]:GetRGB())
			elseif ABFactionBars["Bar7"]["Slot"]["ArtColorOptions"] == "Custom Color" then
				if not abfOptions7Box3Slider1:IsShown() then abfOptions7Box3Slider1:Show() end
				abfShowColorPicker("Bar7", MultiBar6, "Slot", abfSavedColorSlot, "ArtColor")
			end
			abfSavedColorSlot("Bar7", MultiBar6)
		end
	end)
end
-- Box 4, color Gradient --
-- pop out 1 color Gradient one choices --
-- enter --
abfOptions7Box4PopOut1:SetScript("OnEnter", function(self)
	abfEnteringMenus(self)
	GameTooltip:SetText("|T"..C_AddOns.GetAddOnMetadata("ABF", "IconTexture")..":16|t"..abfMainColor:WrapTextInColorCode(C_AddOns.GetAddOnMetadata("ABF", "Title")).."|nChoose the first gradient|ncolor for the Slot Art") 
end)
-- leave --
abfOptions7Box4PopOut1:SetScript("OnLeave", abfLeavingMenus)
-- drop down --
abfClickPopOut(abfOptions7Box4PopOut1, abfOptions7Box4PopOut1Choice0)
-- sort clicking --
for i = 1, 3, 1 do
	_G["abfOptions7Box4PopOut1Choice"..i]:SetParent(abfOptions7Box4PopOut1Choice0)
	_G["abfOptions7Box4PopOut1Choice"..i]:SetPoint("TOP", _G["abfOptions7Box4PopOut1Choice"..i-1], "BOTTOM", 0, 0)
end
-- naming at Options 10 --
-- click --
for i = 0, 3, 1 do
	_G["abfOptions7Box4PopOut1Choice"..i]:HookScript("OnClick", function(self, button, down)
		if button == "LeftButton" and down == false then
			ABFactionBars["Bar7"]["Slot"]["ArtGradientOptions1"] = self.Text:GetText()
			abfOptions7Box4PopOut1.Text:SetText(self.Text:GetText())
			abfOptions7Box4PopOut1Choice0:Hide()
			if ABFactionBars["Bar7"]["Slot"]["ArtGradientOptions1"] == "Default Color" then
				ABFactionBars["Bar7"]["Slot"]["ArtGradientColor1"] = {r = 1, g = 1, b = 1, a = 1,}
			elseif ABFactionBars["Bar7"]["Slot"]["ArtGradientOptions1"] == "Class Color" then
				ABFactionBars["Bar7"]["Slot"]["ArtGradientColor1"] = CreateColor(abfClassColor:GetRGB())
			elseif ABFactionBars["Bar7"]["Slot"]["ArtGradientOptions1"] == "Faction Color" then
				ABFactionBars["Bar7"]["Slot"]["ArtGradientColor1"] = CreateColor(_G["PLAYER_FACTION_COLOR_"..string.upper(abfFaction.name)]:GetRGB())
			elseif ABFactionBars["Bar7"]["Slot"]["ArtGradientOptions1"] == "Custom Color" then
				abfShowColorPicker("Bar7", MultiBar6, "Slot", abfSavedColorSlot, "ArtGradientColor1")
			end
			abfSavedColorSlot("Bar7", MultiBar6)
		end
	end)
end
-- pop out 2 color Gradient two choices --
-- enter --
abfOptions7Box4PopOut2:SetScript("OnEnter", function(self)
	abfEnteringMenus(self)
	GameTooltip:SetText("|T"..C_AddOns.GetAddOnMetadata("ABF", "IconTexture")..":16|t"..abfMainColor:WrapTextInColorCode(C_AddOns.GetAddOnMetadata("ABF", "Title")).."|nChoose the second gradient|ncolor for the Slot Art") 
end)
-- leave --
abfOptions7Box4PopOut2:SetScript("OnLeave", abfLeavingMenus)
-- drop down --
abfClickPopOut(abfOptions7Box4PopOut2, abfOptions7Box4PopOut2Choice0)
-- sort clicking --
for i = 1, 3, 1 do
	_G["abfOptions7Box4PopOut2Choice"..i]:SetParent(abfOptions7Box4PopOut2Choice0)
	_G["abfOptions7Box4PopOut2Choice"..i]:SetPoint("TOP", _G["abfOptions7Box4PopOut2Choice"..i-1], "BOTTOM", 0, 0)
end
-- naming at Options 10 --
-- click --
for i = 0, 3, 1 do
	_G["abfOptions7Box4PopOut2Choice"..i]:HookScript("OnClick", function(self, button, down)
		if button == "LeftButton" and down == false then
			ABFactionBars["Bar7"]["Slot"]["ArtGradientOptions2"] = self.Text:GetText()
			abfOptions7Box4PopOut2.Text:SetText(self.Text:GetText())
			abfOptions7Box4PopOut2Choice0:Hide()
			if ABFactionBars["Bar7"]["Slot"]["ArtGradientOptions2"] == "Default Color" then
				ABFactionBars["Bar7"]["Slot"]["ArtGradientColor2"] = {r = 1, g = 1, b = 1, a = 1,}
			elseif ABFactionBars["Bar7"]["Slot"]["ArtGradientOptions2"] == "Class Color" then
				ABFactionBars["Bar7"]["Slot"]["ArtGradientColor2"] = CreateColor(abfClassColor:GetRGB())
			elseif ABFactionBars["Bar7"]["Slot"]["ArtGradientOptions2"] == "Faction Color" then
				ABFactionBars["Bar7"]["Slot"]["ArtGradientColor2"] = CreateColor(_G["PLAYER_FACTION_COLOR_"..string.upper(abfFaction.name)]:GetRGB())
			elseif ABFactionBars["Bar7"]["Slot"]["ArtGradientOptions2"] == "Custom Color" then
				abfShowColorPicker("Bar7", MultiBar6, "Slot", abfSavedColorSlot, "ArtGradientColor2")
			end
			abfSavedColorSlot("Bar7", MultiBar6)
		end
	end)
end
-- pop out 3 color Gradient Orientation --
-- enter --
abfOptions7Box4PopOut3:SetScript("OnEnter", function(self)
	abfEnteringMenus(self)
	GameTooltip:SetText("|T"..C_AddOns.GetAddOnMetadata("ABF", "IconTexture")..":16|t"..abfMainColor:WrapTextInColorCode(C_AddOns.GetAddOnMetadata("ABF", "Title")).."|nChoose the orientation|nof the colors for the Slot Art") 
end)
-- leave --
abfOptions7Box4PopOut3:SetScript("OnLeave", abfLeavingMenus)
-- drop down --
abfClickPopOut(abfOptions7Box4PopOut3, abfOptions7Box4PopOut3Choice0)
-- sort --
abfOptions7Box4PopOut3Choice1:SetParent(abfOptions7Box4PopOut3Choice0)
abfOptions7Box4PopOut3Choice1:SetPoint("TOP", abfOptions7Box4PopOut3Choice0, "BOTTOM", 0, 0)
-- naming at Options 10 --
-- click --
for i = 0, 1, 1 do
	_G["abfOptions7Box4PopOut3Choice"..i]:HookScript("OnClick", function(self, button, down)
		if button == "LeftButton" and down == false then
			ABFactionBars["Bar7"]["Slot"]["ArtGradientOrientation"] = self.Text:GetText()
			abfOptions7Box4PopOut3.Text:SetText(self.Text:GetText())
			abfOptions7Box4PopOut3Choice0:Hide()
			abfSavedColorSlot("Bar7", MultiBar6)
		end
	end)
end
-- Box 5 Edge Art --
-- pop out 1 Edge Art Choice --
-- enter --
abfOptions7Box5PopOut1:SetScript("OnEnter", function(self)
	abfEnteringMenus(self)
	GameTooltip:SetText("|T"..C_AddOns.GetAddOnMetadata("ABF", "IconTexture")..":16|t"..abfMainColor:WrapTextInColorCode(C_AddOns.GetAddOnMetadata("ABF", "Title")).."|nChoose the Edge Art for|nthe Action Bar 7") 
end)
-- leave --
abfOptions7Box5PopOut1:SetScript("OnLeave", abfLeavingMenus)
-- drop down --
abfClickPopOut(abfOptions7Box5PopOut1, abfOptions7Box5PopOut1Choice0)
-- sort clicking --
for i = 1, 4, 1 do
	_G["abfOptions7Box5PopOut1Choice"..i]:SetParent(abfOptions7Box5PopOut1Choice0)
	_G["abfOptions7Box5PopOut1Choice"..i]:SetPoint("TOP", _G["abfOptions7Box5PopOut1Choice"..i-1], "BOTTOM", 0, 0)
-- on leave --
	_G["abfOptions7Box5PopOut1Choice"..i]:HookScript("OnLeave", function(self) abfOptions7Box5PopOut1.Example:Hide() end)
end
-- naming at Options 10 --
-- clicking --
for i = 0, 4, 1 do
	_G["abfOptions7Box5PopOut1Choice"..i]:HookScript("OnClick", function(self, button, down)
		if button == "LeftButton" and down == false then
			ABFactionBars["Bar7"]["Edge"]["Art"] = self.Text:GetText()
			abfOptions7Box5PopOut1.Text:SetText(self.Text:GetText())
			abfOptions7Box5PopOut1Choice0:Hide()
			if ABFactionBars["Bar7"]["Edge"]["Art"] == "Gryphon" or ABFactionBars["Bar7"]["Edge"]["Art"] == "Wyvern" then
				if not abfOptions7Box5PopOut3:IsShown() then abfOptions7Box5PopOut3:Show() end
				if not abfOptions7Box5PopOut4:IsShown() then abfOptions7Box5PopOut4:Show() end
			else
				if abfOptions7Box5PopOut3:IsShown() then abfOptions7Box5PopOut3:Hide() end
				if abfOptions7Box5PopOut4:IsShown() then abfOptions7Box5PopOut4:Hide() end
			end
			abfSavedArtEdge("Bar7", MultiBar6)
			abfSavedEdgeArtAnimation("Bar7", MultiBar6)
		end
	end)
end
-- entering the pop out buttons at Options 10 --
-- pop out 2 Edge Art Color Choice --
-- enter --
abfOptions7Box5PopOut2:SetScript("OnEnter", function(self)
	abfEnteringMenus(self)
	GameTooltip:SetText("|T"..C_AddOns.GetAddOnMetadata("ABF", "IconTexture")..":16|t"..abfMainColor:WrapTextInColorCode(C_AddOns.GetAddOnMetadata("ABF", "Title")).."|nChoose the mode color for|nthe Edge Art! (one color or gradient color)") 
end)
-- leave --
abfOptions7Box5PopOut2:SetScript("OnLeave", abfLeavingMenus)
-- drop down --
abfClickPopOut(abfOptions7Box5PopOut2, abfOptions7Box5PopOut2Choice0)
-- position --
abfOptions7Box5PopOut2Choice1:SetParent(abfOptions7Box5PopOut2Choice0)
abfOptions7Box5PopOut2Choice1:SetPoint("TOP", abfOptions7Box5PopOut2Choice0, "BOTTOM", 0, 0)
-- naming at Options 10 --
-- click --
for i = 0, 1, 1 do
	_G["abfOptions7Box5PopOut2Choice"..i]:HookScript("OnClick", function(self, button, down)
		if button == "LeftButton" and down == false then
			ABFactionBars["Bar7"]["Edge"]["ArtColorChoice"] = self.Text:GetText()
			abfOptions7Box5PopOut2.Text:SetText(self.Text:GetText())
			abfOptions7Box5PopOut2Choice0:Hide()
			if ABFactionBars["Bar7"]["Edge"]["ArtColorChoice"] == "One Color" then
				if not abfOptions7Box6:IsShown() then abfOptions7Box6:Show() end
				if abfOptions7Box7:IsShown() then abfOptions7Box7:Hide() end
				abfOptions7Box6Slider1:SetValue(ABFactionBars["Bar7"]["Edge"]["ArtColorDesaturation"] * 10)
			elseif ABFactionBars["Bar7"]["Edge"]["ArtColorChoice"] == "Gradient Color" then
				if not abfOptions7Box7:IsShown() then abfOptions7Box7:Show() end
				if abfOptions7Box6:IsShown() then abfOptions7Box6:Hide() end
			end
			abfSavedColorEdge("Bar7", MultiBar6)
			abfSavedEdgeArtAnimation("Bar7", MultiBar6)
		end
	end)
end
-- Box 5, Pop Out Button 3, Edge Art Animation --
-- enter --
abfOptions7Box5PopOut3:SetScript("OnEnter", function(self)
	abfEnteringMenus(self)
	GameTooltip:SetText("|T"..C_AddOns.GetAddOnMetadata("ABF", "IconTexture")..":16|t"..abfMainColor:WrapTextInColorCode(C_AddOns.GetAddOnMetadata("ABF", "Title")).."|nWhould you like the animation|nfor the Edge Art to be shown?") 
end)
-- leave --
abfOptions7Box5PopOut3:SetScript("OnLeave", abfLeavingMenus)
-- drop down --
abfClickPopOut(abfOptions7Box5PopOut3, abfOptions7Box5PopOut3Choice0)
-- naming at Options 10 --
-- sorting --
abfOptions7Box5PopOut3Choice1:SetParent(abfOptions7Box5PopOut3Choice0)
abfOptions7Box5PopOut3Choice1:SetPoint("TOP", abfOptions7Box5PopOut3Choice0, "BOTTOM", 0, 0)
-- click --
for i = 0, 1, 1 do
	_G["abfOptions7Box5PopOut3Choice"..i]:HookScript("OnClick", function(self, button, down)
		if button == "LeftButton" and down == false then
			abfOptions7Box5PopOut3.Text:SetText(self.Text:GetText())
			abfOptions7Box5PopOut3Choice0:Hide()
			if self.Text:GetText() == "Hide" then
				ABFactionBars["Bar7"]["Edge"]["Animation"] = false
			elseif self.Text:GetText() == "Show" then
				ABFactionBars["Bar7"]["Edge"]["Animation"] = true
			end
			abfSavedEdgeArtAnimation("Bar7", MultiBar6)
		end
	end)
end
-- Box 5, Pop Out Button 4, Edge Art Animation Color --
-- enter --
abfOptions7Box5PopOut4:SetScript("OnEnter", function(self)
	abfEnteringMenus(self)
	GameTooltip:SetText("|T"..C_AddOns.GetAddOnMetadata("ABF", "IconTexture")..":16|t"..abfMainColor:WrapTextInColorCode(C_AddOns.GetAddOnMetadata("ABF", "Title")).."|nChoose the color for the animation") 
end)
-- leave --
abfOptions7Box5PopOut4:SetScript("OnLeave", abfLeavingMenus)
-- drop down --
abfClickPopOut(abfOptions7Box5PopOut4, abfOptions7Box5PopOut4Choice0)
-- naming at Options 10 --
-- sorting --
for i = 1, 3, 1 do
	_G["abfOptions7Box5PopOut4Choice"..i]:SetParent(abfOptions7Box5PopOut4Choice0)
	_G["abfOptions7Box5PopOut4Choice"..i]:SetPoint("TOP", _G["abfOptions7Box5PopOut4Choice"..i-1], "BOTTOM", 0, 0)
end
-- click --
for i = 0, 3, 1 do
	_G["abfOptions7Box5PopOut4Choice"..i]:HookScript("OnClick", function(self, button, down)
		if button == "LeftButton" and down == false then
			ABFactionBars["Bar7"]["Edge"]["AnimationColorOptions"] = self.Text:GetText()
			abfOptions7Box5PopOut4.Text:SetText(self.Text:GetText())
			abfOptions7Box5PopOut4Choice0:Hide()
			if ABFactionBars["Bar7"]["Edge"]["AnimationColorOptions"] == "Default Color" then
				ABFactionBars["Bar7"]["Edge"]["AnimationColor"] = {r = 1, g = 1, b = 1, a = 1}
			elseif ABFactionBars["Bar7"]["Edge"]["AnimationColorOptions"] == "Class Color" then
				ABFactionBars["Bar7"]["Edge"]["AnimationColor"] = CreateColor(abfClassColor:GetRGB())
			elseif ABFactionBars["Bar7"]["Edge"]["AnimationColorOptions"] == "Faction Color" then
				ABFactionBars["Bar7"]["Edge"]["AnimationColor"] = CreateColor(_G["PLAYER_FACTION_COLOR_"..string.upper(abfFaction.name)]:GetRGB())
			elseif ABFactionBars["Bar7"]["Edge"]["AnimationColorOptions"] == "Custom Color" then
				abfShowColorPicker("Bar7", MultiBar6, "Edge", abfSavedEdgeArtAnimation, "AnimationColor")
			end
			abfSavedEdgeArtAnimation("Bar7", MultiBar6)
		end
	end)
end
-- Box 6, color one --
-- Slider 1, Desaturation --
-- min max values --
abfOptions7Box6Slider1.MinText:SetText(0)
abfOptions7Box6Slider1.MaxText:SetText(1)
abfOptions7Box6Slider1.Slider:SetMinMaxValues(0, 10)
-- enter --
abfOptions7Box6Slider1.Slider:SetScript("OnEnter", function(self)
	abfEnteringMenus(self)
	GameTooltip:SetText("|T"..C_AddOns.GetAddOnMetadata("ABF", "IconTexture")..":16|t "..abfMainColor:WrapTextInColorCode(C_AddOns.GetAddOnMetadata("ABF", "Title")).."|nYou can also use your mousewheel|nor the buttons to the edge|nto change the value!") 
end)
-- leave --
abfOptions7Box6Slider1.Slider:SetScript("OnLeave", abfLeavingMenus)
-- on mouse wheel --
abfOptions7Box6Slider1.Slider:SetScript("OnMouseWheel", abfMouseWheelSlider)
-- On Value Changed --
abfOptions7Box6Slider1.Slider:SetScript("OnValueChanged", function (self, value, userInput)
	abfOptions7Box6Slider1.TopText:SetText("Desaturation of the Artwork: "..(self:GetValue()/10))
	ABFactionBars["Bar7"]["Edge"]["ArtColorDesaturation"] = self:GetValue()/10
	abfSavedColorEdge("Bar7", MultiBar6)
end)
-- pop out 1 color one choices --
-- enter --
abfOptions7Box6PopOut1:SetScript("OnEnter", function(self)
	abfEnteringMenus(self)
	GameTooltip:SetText("|T"..C_AddOns.GetAddOnMetadata("ABF", "IconTexture")..":16|t"..abfMainColor:WrapTextInColorCode(C_AddOns.GetAddOnMetadata("ABF", "Title")).."|nChoose the color for|nthe Edge Art") 
end)
-- leave --
abfOptions7Box6PopOut1:SetScript("OnLeave", abfLeavingMenus)
-- drop down --
abfClickPopOut(abfOptions7Box6PopOut1, abfOptions7Box6PopOut1Choice0)
-- sort clicking --
for i = 1, 3, 1 do
	_G["abfOptions7Box6PopOut1Choice"..i]:SetParent(abfOptions7Box6PopOut1Choice0)
	_G["abfOptions7Box6PopOut1Choice"..i]:SetPoint("TOP", _G["abfOptions7Box6PopOut1Choice"..i-1], "BOTTOM", 0, 0)
end
-- naming at Options 10 --
-- click --
for i = 0, 3, 1 do
	_G["abfOptions7Box6PopOut1Choice"..i]:HookScript("OnClick", function(self, button, down)
		if button == "LeftButton" and down == false then
			ABFactionBars["Bar7"]["Edge"]["ArtColorOptions"] = self.Text:GetText()
			abfOptions7Box6PopOut1.Text:SetText(self.Text:GetText())
			abfOptions7Box6PopOut1Choice0:Hide()
			if ABFactionBars["Bar7"]["Edge"]["ArtColorOptions"] == "Default Color" then
				ABFactionBars["Bar7"]["Edge"]["ArtColor"] = {r = 1, g = 1, b = 1, a = 1,}
				if abfOptions7Box6Slider1:IsShown() then abfOptions7Box6Slider1:Hide() end
			elseif ABFactionBars["Bar7"]["Edge"]["ArtColorOptions"] == "Class Color" then
				ABFactionBars["Bar7"]["Edge"]["ArtColor"] = CreateColor(abfClassColor:GetRGB())
				if abfOptions7Box6Slider1:IsShown() then abfOptions7Box6Slider1:Hide() end
			elseif ABFactionBars["Bar7"]["Edge"]["ArtColorOptions"] == "Faction Color" then
				ABFactionBars["Bar7"]["Edge"]["ArtColor"] = CreateColor(_G["PLAYER_FACTION_COLOR_"..string.upper(abfFaction.name)]:GetRGB())
				if abfOptions7Box6Slider1:IsShown() then abfOptions7Box6Slider1:Hide() end
			elseif ABFactionBars["Bar7"]["Edge"]["ArtColorOptions"] == "Custom Color" then
				abfShowColorPicker("Bar7", MultiBar6, "Edge", abfSavedColorEdge, "ArtColor")
				if not abfOptions7Box6Slider1:IsShown() then abfOptions7Box6Slider1:Show() end
			end
			abfSavedColorEdge("Bar7", MultiBar6)
			abfSavedEdgeArtAnimation("Bar7", MultiBar6)
		end
	end)
end
-- Box 7, color Gradient --
-- pop out 1 color Gradient one choices --
-- enter --
abfOptions7Box7PopOut1:SetScript("OnEnter", function(self)
	abfEnteringMenus(self)
	GameTooltip:SetText("|T"..C_AddOns.GetAddOnMetadata("ABF", "IconTexture")..":16|t"..abfMainColor:WrapTextInColorCode(C_AddOns.GetAddOnMetadata("ABF", "Title")).."|nChoose the first gradient|ncolor for the Edge Art") 
end)
-- leave --
abfOptions7Box7PopOut1:SetScript("OnLeave", abfLeavingMenus)
-- drop down --
abfClickPopOut(abfOptions7Box7PopOut1, abfOptions7Box7PopOut1Choice0)
-- sort clicking --
for i = 1, 3, 1 do
	_G["abfOptions7Box7PopOut1Choice"..i]:SetParent(abfOptions7Box7PopOut1Choice0)
	_G["abfOptions7Box7PopOut1Choice"..i]:SetPoint("TOP", _G["abfOptions7Box7PopOut1Choice"..i-1], "BOTTOM", 0, 0)
end
-- naming at Options 10 --
-- click --
for i = 0, 3, 1 do
	_G["abfOptions7Box7PopOut1Choice"..i]:HookScript("OnClick", function(self, button, down)
		if button == "LeftButton" and down == false then
			ABFactionBars["Bar7"]["Edge"]["ArtGradientOptions1"] = self.Text:GetText()
			abfOptions7Box7PopOut1.Text:SetText(self.Text:GetText())
			abfOptions7Box7PopOut1Choice0:Hide()
			if ABFactionBars["Bar7"]["Edge"]["ArtGradientOptions1"] == "Default Color" then
				ABFactionBars["Bar7"]["Edge"]["ArtGradientColor1"] = {r = 1, g = 1, b = 1, a = 1,}
			elseif ABFactionBars["Bar7"]["Edge"]["ArtGradientOptions1"] == "Class Color" then
				ABFactionBars["Bar7"]["Edge"]["ArtGradientColor1"] = CreateColor(abfClassColor:GetRGB())
			elseif ABFactionBars["Bar7"]["Edge"]["ArtGradientOptions1"] == "Faction Color" then
				ABFactionBars["Bar7"]["Edge"]["ArtGradientColor1"] = CreateColor(_G["PLAYER_FACTION_COLOR_"..string.upper(abfFaction.name)]:GetRGB())
			elseif ABFactionBars["Bar7"]["Edge"]["ArtGradientOptions1"] == "Custom Color" then
				abfShowColorPicker("Bar7", MultiBar6, "Edge", abfSavedColorEdge, "ArtGradientColor1")
			end
			abfSavedColorEdge("Bar7", MultiBar6)
			abfSavedEdgeArtAnimation("Bar7", MultiBar6)
		end
	end)
end
-- pop out 2 color Gradient two choices --
-- enter --
abfOptions7Box7PopOut2:SetScript("OnEnter", function(self)
	abfEnteringMenus(self)
	GameTooltip:SetText("|T"..C_AddOns.GetAddOnMetadata("ABF", "IconTexture")..":16|t"..abfMainColor:WrapTextInColorCode(C_AddOns.GetAddOnMetadata("ABF", "Title")).."|nChoose the second gradient|ncolor for the Edge Art") 
end)
-- leave --
abfOptions7Box7PopOut2:SetScript("OnLeave", abfLeavingMenus)
-- drop down --
abfClickPopOut(abfOptions7Box7PopOut2, abfOptions7Box7PopOut2Choice0)
-- sort clicking --
for i = 1, 3, 1 do
	_G["abfOptions7Box7PopOut2Choice"..i]:SetParent(abfOptions7Box7PopOut2Choice0)
	_G["abfOptions7Box7PopOut2Choice"..i]:SetPoint("TOP", _G["abfOptions7Box7PopOut2Choice"..i-1], "BOTTOM", 0, 0)
end
-- naming at Options 10 --
-- click --
for i = 0, 3, 1 do
	_G["abfOptions7Box7PopOut2Choice"..i]:HookScript("OnClick", function(self, button, down)
		if button == "LeftButton" and down == false then
			ABFactionBars["Bar7"]["Edge"]["ArtGradientOptions2"] = self.Text:GetText()
			abfOptions7Box7PopOut2.Text:SetText(self.Text:GetText())
			abfOptions7Box7PopOut2Choice0:Hide()
			if ABFactionBars["Bar7"]["Edge"]["ArtGradientOptions2"] == "Default Color" then
				ABFactionBars["Bar7"]["Edge"]["ArtGradientColor2"] = {r = 1, g = 1, b = 1, a = 1,}
			elseif ABFactionBars["Bar7"]["Edge"]["ArtGradientOptions2"] == "Class Color" then
				ABFactionBars["Bar7"]["Edge"]["ArtGradientColor2"] = CreateColor(abfClassColor:GetRGB())
			elseif ABFactionBars["Bar7"]["Edge"]["ArtGradientOptions2"] == "Faction Color" then
				ABFactionBars["Bar7"]["Edge"]["ArtGradientColor2"] = CreateColor(_G["PLAYER_FACTION_COLOR_"..string.upper(abfFaction.name)]:GetRGB())
			elseif ABFactionBars["Bar7"]["Edge"]["ArtGradientOptions2"] == "Custom Color" then
				abfShowColorPicker("Bar7", MultiBar6, "Edge", abfSavedColorEdge, "ArtGradientColor2")
			end
			abfSavedColorEdge("Bar7", MultiBar6)
			abfSavedEdgeArtAnimation("Bar7", MultiBar6)
		end
	end)
end
-- pop out 3 color Gradient Orientation --
-- enter --
abfOptions7Box7PopOut3:SetScript("OnEnter", function(self)
	abfEnteringMenus(self)
	GameTooltip:SetText("|T"..C_AddOns.GetAddOnMetadata("ABF", "IconTexture")..":16|t"..abfMainColor:WrapTextInColorCode(C_AddOns.GetAddOnMetadata("ABF", "Title")).."|nChoose the orientation|nof the colors for the Edge Art") 
end)
-- leave --
abfOptions7Box7PopOut3:SetScript("OnLeave", abfLeavingMenus)
-- drop down --
abfClickPopOut(abfOptions7Box7PopOut3, abfOptions7Box7PopOut3Choice0)
-- sort clicking --
abfOptions7Box7PopOut3Choice1:SetParent(abfOptions7Box7PopOut3Choice0)
abfOptions7Box7PopOut3Choice1:SetPoint("TOP", abfOptions7Box7PopOut3Choice0, "BOTTOM", 0, 0)
-- naming at Options 10 --
-- click --
for i = 0, 1, 1 do
	_G["abfOptions7Box7PopOut3Choice"..i]:HookScript("OnClick", function(self, button, down)
		if button == "LeftButton" and down == false then
			ABFactionBars["Bar7"]["Edge"]["ArtGradientOrientation"] = self.Text:GetText()
			abfOptions7Box7PopOut3.Text:SetText(self.Text:GetText())
			abfOptions7Box7PopOut3Choice0:Hide()
			abfSavedColorEdge("Bar7", MultiBar6)
			abfSavedEdgeArtAnimation("Bar7", MultiBar6)
		end
	end)
end
-- Options Box 8, Border --
-- Box 8, Pop Out Button 1, Border Visibility --
-- enter --
abfOptions7Box8PopOut1:SetScript("OnEnter", function(self)
	abfEnteringMenus(self)
	GameTooltip:SetText("|T"..C_AddOns.GetAddOnMetadata("ABF", "IconTexture")..":16|t"..abfMainColor:WrapTextInColorCode(C_AddOns.GetAddOnMetadata("ABF", "Title")).."|nWhould you like the border of|nthe actionbar 7 to be shown?") 
end)
-- leave --
abfOptions7Box8PopOut1:SetScript("OnLeave", abfLeavingMenus)
-- drop down --
abfClickPopOut(abfOptions7Box8PopOut1, abfOptions7Box8PopOut1Choice0)
-- naming at Options 10 --
-- sort --
abfOptions7Box8PopOut1Choice1:SetParent(abfOptions7Box8PopOut1Choice0)
abfOptions7Box8PopOut1Choice1:SetPoint("TOP", abfOptions7Box8PopOut1Choice0, "BOTTOM", 0, 0)
-- click --
for i = 0, 1, 1 do
	_G["abfOptions7Box8PopOut1Choice"..i]:HookScript("OnClick", function(self, button, down)
		if button == "LeftButton" and down == false then
			abfOptions7Box8PopOut1.Text:SetText(self.Text:GetText())
			abfOptions7Box8PopOut1Choice0:Hide()
			if self.Text:GetText() == "Hide" then
				ABFactionBars["Bar7"]["BorderVisibility"] = false
			elseif self.Text:GetText() == "Show" then
				ABFactionBars["Bar7"]["BorderVisibility"] = true
			end
			abfSavedArtBorder("Bar7", MultiBar6)
		end
	end)
end
-- Box 8, Pop Out Button 2, Border Color Choice --
-- enter --
abfOptions7Box8PopOut2:SetScript("OnEnter", function(self)
	abfEnteringMenus(self)
	GameTooltip:SetText("|T"..C_AddOns.GetAddOnMetadata("ABF", "IconTexture")..":16|t"..abfMainColor:WrapTextInColorCode(C_AddOns.GetAddOnMetadata("ABF", "Title")).."|nChoose the mode color for|nthe Border! (one color or gradient color)") 
end)
-- leave --
abfOptions7Box8PopOut2:SetScript("OnLeave", abfLeavingMenus)
-- drop down --
abfClickPopOut(abfOptions7Box8PopOut2, abfOptions7Box8PopOut2Choice0)
-- naming at Options 10 --
-- sort --
abfOptions7Box8PopOut2Choice1:SetParent(abfOptions7Box8PopOut2Choice0)
abfOptions7Box8PopOut2Choice1:SetPoint("TOP", abfOptions7Box8PopOut2Choice0, "BOTTOM", 0, 0)
-- click --
for i = 0, 1, 1 do
	_G["abfOptions7Box8PopOut2Choice"..i]:HookScript("OnClick", function(self, button, down)
		if button == "LeftButton" and down == false then
			ABFactionBars["Bar7"]["BorderArtColorMode"] = self.Text:GetText()
			abfOptions7Box8PopOut2.Text:SetText(self.Text:GetText())
			abfOptions7Box8PopOut2Choice0:Hide()
			if ABFactionBars["Bar7"]["BorderArtColorMode"] == "One Color" then
				if not abfOptions7Box9:IsShown() then abfOptions7Box9:Show() end
				if abfOptions7Box10:IsShown() then abfOptions7Box10:Hide() end
			elseif ABFactionBars["Bar7"]["BorderArtColorMode"] == "Gradient Color" then
				if abfOptions7Box9:IsShown() then abfOptions7Box9:Hide() end
				if not abfOptions7Box10:IsShown() then abfOptions7Box10:Show() end
			end
			abfSavedColorBorder("Bar7", MultiBar6)
		end
	end)
end
-- Options Box 9, Border Color One --
-- Box 9, Pop Out Button 1, Border Color One Choices --
-- enter --
abfOptions7Box9PopOut1:SetScript("OnEnter", function(self)
	abfEnteringMenus(self)
	GameTooltip:SetText("|T"..C_AddOns.GetAddOnMetadata("ABF", "IconTexture")..":16|t"..abfMainColor:WrapTextInColorCode(C_AddOns.GetAddOnMetadata("ABF", "Title")).."|nChoose the color for|nthe Border") 
end)
-- leave --
abfOptions7Box9PopOut1:SetScript("OnLeave", abfLeavingMenus)
-- drop down --
abfClickPopOut(abfOptions7Box9PopOut1, abfOptions7Box9PopOut1Choice0)
-- naming at Options 10 --
-- sort --
for i = 1, 3, 1 do
	_G["abfOptions7Box9PopOut1Choice"..i]:SetParent(abfOptions7Box9PopOut1Choice0)
	_G["abfOptions7Box9PopOut1Choice"..i]:SetPoint("TOP", _G["abfOptions7Box9PopOut1Choice"..i-1], "BOTTOM", 0, 0)
end
-- click --
for i = 0, 3, 1 do
	_G["abfOptions7Box9PopOut1Choice"..i]:HookScript("OnClick", function(self, button, down)
		if button == "LeftButton" and down == false then
			ABFactionBars["Bar7"]["BorderArtColorOptions"] = self.Text:GetText()
			abfOptions7Box9PopOut1.Text:SetText(self.Text:GetText())
			abfOptions7Box9PopOut1Choice0:Hide()
			if ABFactionBars["Bar7"]["BorderArtColorOptions"] == "Default Color" then
				ABFactionBars["Bar7"]["BorderArtColor"] = {r = 1, g = 1, b = 1, a = 1,}
			elseif ABFactionBars["Bar7"]["BorderArtColorOptions"] == "Class Color" then
				ABFactionBars["Bar7"]["BorderArtColor"] = CreateColor(abfClassColor:GetRGB())
			elseif ABFactionBars["Bar7"]["BorderArtColorOptions"] == "Faction Color" then
				ABFactionBars["Bar7"]["BorderArtColor"] = CreateColor(_G["PLAYER_FACTION_COLOR_"..string.upper(abfFaction.name)]:GetRGB())
			elseif ABFactionBars["Bar7"]["BorderArtColorOptions"] == "Custom Color" then
				abfShowColorPickerCD("Bar7", MultiBar6, "BorderArtColor", abfSavedColorBorder)
			end
			abfSavedColorBorder("Bar7", MultiBar6)
		end
	end)
end
-- Options Box 10, Border Color Gradient --
-- Box 10, Pop Out Button 1, Border Color Gradient One --
-- enter --
abfOptions7Box10PopOut1:SetScript("OnEnter", function(self)
	abfEnteringMenus(self)
	GameTooltip:SetText("|T"..C_AddOns.GetAddOnMetadata("ABF", "IconTexture")..":16|t"..abfMainColor:WrapTextInColorCode(C_AddOns.GetAddOnMetadata("ABF", "Title")).."|nChoose the first gradient|ncolor for the Border") 
end)
-- leave --
abfOptions7Box10PopOut1:SetScript("OnLeave", abfLeavingMenus)
-- drop down --
abfClickPopOut(abfOptions7Box10PopOut1, abfOptions7Box10PopOut1Choice0)
-- naming at Options 10 --
-- sort --
for i = 1, 3, 1 do
	_G["abfOptions7Box10PopOut1Choice"..i]:SetParent(abfOptions7Box10PopOut1Choice0)
	_G["abfOptions7Box10PopOut1Choice"..i]:SetPoint("TOP", _G["abfOptions7Box10PopOut1Choice"..i-1], "BOTTOM", 0, 0)
end
-- click --
for i = 0, 3, 1 do
	_G["abfOptions7Box10PopOut1Choice"..i]:HookScript("OnClick", function(self, button, down)
		if button == "LeftButton" and down == false then
			ABFactionBars["Bar7"]["BorderArtGradientOptions1"] = self.Text:GetText()
			abfOptions7Box10PopOut1.Text:SetText(self.Text:GetText())
			abfOptions7Box10PopOut1Choice0:Hide()
			if ABFactionBars["Bar7"]["BorderArtGradientOptions1"] == "Default Color" then
				ABFactionBars["Bar7"]["BorderArtGradient1"] = {r = 1, g = 1, b = 1, a = 1,}
			elseif ABFactionBars["Bar7"]["BorderArtGradientOptions1"] == "Class Color" then
				ABFactionBars["Bar7"]["BorderArtGradient1"] = CreateColor(abfClassColor:GetRGB())
			elseif ABFactionBars["Bar7"]["BorderArtGradientOptions1"] == "Faction Color" then
				ABFactionBars["Bar7"]["BorderArtGradient1"] = CreateColor(_G["PLAYER_FACTION_COLOR_"..string.upper(abfFaction.name)]:GetRGB())
			elseif ABFactionBars["Bar7"]["BorderArtGradientOptions1"] == "Custom Color" then
				abfShowColorPickerCD("Bar7", MultiBar6, "BorderArtGradient1", abfSavedColorBorder)
			end
			abfSavedColorBorder("Bar7", MultiBar6)
		end
	end)
end
-- Box 10, Pop Out Button 2, Border Color Gradient Two --
-- enter --
abfOptions7Box10PopOut2:SetScript("OnEnter", function(self)
	abfEnteringMenus(self)
	GameTooltip:SetText("|T"..C_AddOns.GetAddOnMetadata("ABF", "IconTexture")..":16|t"..abfMainColor:WrapTextInColorCode(C_AddOns.GetAddOnMetadata("ABF", "Title")).."|nChoose the first gradient|ncolor for the Border") 
end)
-- leave --
abfOptions7Box10PopOut2:SetScript("OnLeave", abfLeavingMenus)
-- drop down --
abfClickPopOut(abfOptions7Box10PopOut2, abfOptions7Box10PopOut2Choice0)
-- naming at Options 10 --
-- sort --
for i = 1, 3, 1 do
	_G["abfOptions7Box10PopOut2Choice"..i]:SetParent(abfOptions7Box10PopOut2Choice0)
	_G["abfOptions7Box10PopOut2Choice"..i]:SetPoint("TOP", _G["abfOptions7Box10PopOut2Choice"..i-1], "BOTTOM", 0, 0)
end
-- click --
for i = 0, 3, 1 do
	_G["abfOptions7Box10PopOut2Choice"..i]:HookScript("OnClick", function(self, button, down)
		if button == "LeftButton" and down == false then
			ABFactionBars["Bar7"]["BorderArtGradientOptions2"] = self.Text:GetText()
			abfOptions7Box10PopOut2.Text:SetText(self.Text:GetText())
			abfOptions7Box10PopOut2Choice0:Hide()
			if ABFactionBars["Bar7"]["BorderArtGradientOptions2"] == "Default Color" then
				ABFactionBars["Bar7"]["BorderArtGradient2"] = {r = 1, g = 1, b = 1, a = 1,}
			elseif ABFactionBars["Bar7"]["BorderArtGradientOptions2"] == "Class Color" then
				ABFactionBars["Bar7"]["BorderArtGradient2"] = CreateColor(abfClassColor:GetRGB())
			elseif ABFactionBars["Bar7"]["BorderArtGradientOptions2"] == "Faction Color" then
				ABFactionBars["Bar7"]["BorderArtGradient2"] = CreateColor(_G["PLAYER_FACTION_COLOR_"..string.upper(abfFaction.name)]:GetRGB())
			elseif ABFactionBars["Bar7"]["BorderArtGradientOptions2"] == "Custom Color" then
				abfShowColorPickerCD("Bar7", MultiBar6, "BorderArtGradient2", abfSavedColorBorder)
			end
			abfSavedColorBorder("Bar7", MultiBar6)
		end
	end)
end
-- Box 10, Pop Out Button 3, Border Color Gradient Orientation --
-- enter --
abfOptions7Box10PopOut3:SetScript("OnEnter", function(self)
	abfEnteringMenus(self)
	GameTooltip:SetText("|T"..C_AddOns.GetAddOnMetadata("ABF", "IconTexture")..":16|t"..abfMainColor:WrapTextInColorCode(C_AddOns.GetAddOnMetadata("ABF", "Title")).."|nChoose the orientation|nof the colors for the Barder") 
end)
-- leave --
abfOptions7Box10PopOut3:SetScript("OnLeave", abfLeavingMenus)
-- drop down --
abfClickPopOut(abfOptions7Box10PopOut3, abfOptions7Box10PopOut3Choice0)
-- sort --
abfOptions7Box10PopOut3Choice1:SetParent(abfOptions7Box10PopOut3Choice0)
abfOptions7Box10PopOut3Choice1:SetPoint("TOP", abfOptions7Box10PopOut3Choice0, "BOTTOM", 0, 0)
-- naming at Options 10 --
-- click --
for i = 0, 1, 1 do
	_G["abfOptions7Box10PopOut3Choice"..i]:HookScript("OnClick", function(self, button, down)
		if button == "LeftButton" and down == false then
			ABFactionBars["Bar7"]["BorderArtGradientOrientation"] = self.Text:GetText()
			abfOptions7Box10PopOut3.Text:SetText(self.Text:GetText())
			abfOptions7Box10PopOut3Choice0:Hide()
			abfSavedColorBorder("Bar7", MultiBar6)
		end
	end)
end
-- Showing the panel --
abfOptions7:HookScript("OnShow", function(self)
	CheckSavedVariables1()
	CheckSavedVariables2()
-- panels --
	for i = 1, 8, 1 do
		if _G["abfOptions"..i.."a"]:IsShown() then _G["abfOptions"..i.."a"]:Hide() end
	end
	for i = 1, 6, 1 do
		if _G["abfOptions"..i]:IsShown() then _G["abfOptions"..i]:Hide() end
	end
	for i = 8, 10, 1 do
		if _G["abfOptions"..i]:IsShown() then _G["abfOptions"..i]:Hide() end
	end
-- tabs --
	abfOptions00Tab7.Text:SetTextColor(abfHighColor:GetRGB())
	for i = 1, 6, 1 do
		_G["abfOptions00Tab"..i].Text:SetTextColor(abfMainColor:GetRGB())
	end
	for i = 8, 10, 1 do
		_G["abfOptions00Tab"..i].Text:SetTextColor(abfMainColor:GetRGB())
	end
-- buttons --
	if not abfOptions00PageButton1g:IsShown() then abfOptions00PageButton1g:Show() end
	if not abfOptions00PageButton2g:IsShown() then abfOptions00PageButton2g:Show() end
	for i = 1, 6, 1 do
		if i == 1 then k = "a"
		elseif i == 2 then k = "b"
		elseif i == 3 then k = "c"
		elseif i == 4 then k = "d"
		elseif i == 5 then k = "e"
		elseif i == 6 then k = "f"
		end
		if _G["abfOptions00PageButton1"..k]:IsShown() then _G["abfOptions00PageButton1"..k]:Hide() end
		if _G["abfOptions00PageButton2"..k]:IsShown() then _G["abfOptions00PageButton2"..k]:Hide() end
	end
	if abfOptions00PageButton1h:IsShown() then abfOptions00PageButton1h:Hide() end
	if abfOptions00PageButton2h:IsShown() then abfOptions00PageButton2h:Hide() end
	abfOptions00PageButton1g.Text:SetTextColor(abfHighColor:GetRGB())
	abfOptions00PageButton2g.Text:SetTextColor(abfMainColor:GetRGB())
end)
