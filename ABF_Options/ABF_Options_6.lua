-- takeing care the rest boxes --
abfOptions6Box00:SetPoint("TOPLEFT", abfOptions6Box1, "BOTTOMLEFT", 0, 0)
abfOptions6Box3:SetPoint("TOPRIGHT", abfOptions6Box2, "BOTTOMRIGHT", 0, 6)
abfOptions6Box4:SetPoint("TOPRIGHT", abfOptions6Box2, "BOTTOMRIGHT", 0, 6)
abfOptions6Box01:SetPoint("TOPRIGHT", abfOptions6Box4, "BOTTOMRIGHT", 0, 0)
abfOptions6Box5:SetPoint("TOPLEFT", abfOptions6Box00, "BOTTOMLEFT", 0, 0)
abfOptions6Box6:SetPoint("TOPLEFT", abfOptions6Box5, "BOTTOMLEFT", 0, 6)
abfOptions6Box7:SetPoint("TOPLEFT", abfOptions6Box5, "BOTTOMLEFT", 0, 6)
abfOptions6Box8:SetPoint("TOPRIGHT", abfOptions6Box01, "BOTTOMRIGHT", 0, 0)
abfOptions6Box9:SetPoint("TOPRIGHT", abfOptions6Box8, "BOTTOMRIGHT", 0, 6)
abfOptions6Box10:SetPoint("TOPRIGHT", abfOptions6Box8, "BOTTOMRIGHT", 0, 6)
abfOptions6Box2.BorderBottom:Hide()
abfOptions6Box3.BorderTop:Hide()
abfOptions6Box4.BorderTop:Hide()
abfOptions6Box5.BorderBottom:Hide()
abfOptions6Box6.BorderTop:Hide()
abfOptions6Box7.BorderTop:Hide()
abfOptions6Box8.BorderBottom:Hide()
abfOptions6Box9.BorderTop:Hide()
abfOptions6Box10.BorderTop:Hide()
-- naming --
abfOptions6Box1.TitleTxt:SetText("Texts Fonts & Cooldown Color")
abfOptions6Box2.TitleTxt:SetText("Slot Art & Color Mode")
abfOptions6Box3.TitleTxt:SetText("Slot Art One Color")
abfOptions6Box4.TitleTxt:SetText("Slot Art Gradient Color")
abfOptions6Box5.TitleTxt:SetText("Edge Art, Color Mode & Animation")
abfOptions6Box6.TitleTxt:SetText("Edge Art One Color")
abfOptions6Box7.TitleTxt:SetText("Edge Art Gradient Color")
abfOptions6Box8.TitleTxt:SetText("Border Visibility & Color Mode")
abfOptions6Box9.TitleTxt:SetText("Border One Color")
abfOptions6Box10.TitleTxt:SetText("Border Gradient Color")
-- Checking the Saved Variables --
local function CheckSavedVariables1()
-- Box 1, Pop out 1 --
	abfOptions6Box1PopOut1.Text:SetText(ABFactionBars["Bar6"]["HotKeyFonts"])
-- Box 1, Pop out 2 --
	abfOptions6Box1PopOut2.Text:SetText(ABFactionBars["Bar6"]["CountFonts"])
-- Box 1, Pop out 3 --
	abfOptions6Box1PopOut3.Text:SetText(ABFactionBars["Bar6"]["NameFonts"])
-- Box 1, Pop out 4 --
	abfOptions6Box1PopOut4.Text:SetText(ABFactionBars["Bar6"]["ColorCDoption"])
-- Box 2, Pop out 1 --
	abfOptions6Box2PopOut1.Text:SetText(ABFactionBars["Bar6"]["Slot"]["Art"])
-- Box 2, Pop out 2 --
	abfOptions6Box2PopOut2.Text:SetText(ABFactionBars["Bar6"]["Slot"]["ArtColorChoice"])
	if ABFactionBars["Bar6"]["Slot"]["ArtColorChoice"] == "One Color" then
		if not abfOptions6Box3:IsShown() then abfOptions6Box3:Show() end
		if abfOptions6Box4:IsShown() then abfOptions6Box4:Hide() end
	elseif ABFactionBars["Bar6"]["Slot"]["ArtColorChoice"] == "Gradient Color" then
		if not abfOptions6Box4:IsShown() then abfOptions6Box4:Show() end
		if abfOptions6Box3:IsShown() then abfOptions6Box3:Hide() end
	end
-- Box 3, Slider 1 --
	abfOptions6Box3Slider1.Slider:SetValue(ABFactionBars["Bar6"]["Slot"]["ArtColorDesaturation"] * 10)
-- Box 3, Pop out 1 --
	abfOptions6Box3PopOut1.Text:SetText(ABFactionBars["Bar6"]["Slot"]["ArtColorOptions"])
	if ABFactionBars["Bar6"]["Slot"]["ArtColorOptions"] == "Custom Color" then
		if not abfOptions6Box3Slider1:IsShown() then abfOptions6Box3Slider1:Show() end
	else
		if abfOptions6Box3Slider1:IsShown() then abfOptions6Box3Slider1:Hide() end
	end
-- Box 4, pop out 1 --
	abfOptions6Box4PopOut1.Text:SetText(ABFactionBars["Bar6"]["Slot"]["ArtGradientOptions1"])
-- Box 4, pop out 2 --
	abfOptions6Box4PopOut2.Text:SetText(ABFactionBars["Bar6"]["Slot"]["ArtGradientOptions2"])
-- Box 4, pop out 3 --
	abfOptions6Box4PopOut3.Text:SetText(ABFactionBars["Bar6"]["Slot"]["ArtGradientOrientation"])
-- Box 5,Pop out 1 --
	abfOptions6Box5PopOut1.Text:SetText(ABFactionBars["Bar6"]["Edge"]["Art"])
	if ABFactionBars["Bar6"]["Edge"]["Art"] == "Gryphon" or ABFactionBars["Bar6"]["Edge"]["Art"] == "Wyvern" then
		if not abfOptions6Box5PopOut3:IsShown() then abfOptions6Box5PopOut3:Show() end
		if not abfOptions6Box5PopOut4:IsShown() then abfOptions6Box5PopOut4:Show() end
	else
		if abfOptions6Box5PopOut3:IsShown() then abfOptions6Box5PopOut3:Hide() end
		if abfOptions6Box5PopOut4:IsShown() then abfOptions6Box5PopOut4:Hide() end
	end
-- Box 5, Pop out 2 --
	abfOptions6Box5PopOut2.Text:SetText(ABFactionBars["Bar6"]["Edge"]["ArtColorChoice"])
	if ABFactionBars["Bar6"]["Edge"]["ArtColorChoice"] == "One Color" then
		if not abfOptions6Box6:IsShown() then abfOptions6Box6:Show() end
		if abfOptions6Box7:IsShown() then abfOptions6Box7:Hide() end
	elseif ABFactionBars["Bar6"]["Edge"]["ArtColorChoice"] == "Gradient Color" then
		if not abfOptions6Box7:IsShown() then abfOptions6Box7:Show() end
		if abfOptions6Box6:IsShown() then abfOptions6Box6:Hide() end
	end
-- Box 5, Pop out 3 --
	if ABFactionBars["Bar6"]["Edge"]["Animation"] then
		abfOptions6Box5PopOut3.Text:SetText("Show")
	elseif not ABFactionBars["Bar6"]["Edge"]["Animation"] then
		abfOptions6Box5PopOut3.Text:SetText("Hide")
	end
-- Box 5, Pop out 4 --
	abfOptions6Box5PopOut4.Text:SetText(ABFactionBars["Bar6"]["Edge"]["AnimationColorOptions"])
end
local function CheckSavedVariables2()
-- Box 6, Slider 1 --
	if ABFactionBars["Bar6"]["Edge"]["ArtColorChoice"] == "One Color" then
		abfOptions6Box6Slider1:SetValue(ABFactionBars["Bar6"]["Edge"]["ArtColorDesaturation"] * 10)
	end
-- Box 6, Pop out 1 --
	abfOptions6Box6PopOut1.Text:SetText(ABFactionBars["Bar6"]["Edge"]["ArtColorOptions"])
	if ABFactionBars["Bar6"]["Edge"]["ArtColorOptions"] == "Custom Color" then
		if not abfOptions6Box6Slider1:IsShown() then abfOptions6Box6Slider1:Show() end
	else
		if abfOptions6Box6Slider1:IsShown() then abfOptions6Box6Slider1:Hide() end
	end
-- Box 7, pop out 1 --
	abfOptions6Box7PopOut1.Text:SetText(ABFactionBars["Bar6"]["Edge"]["ArtGradientOptions1"])
-- Box 7, pop out 2 --
	abfOptions6Box7PopOut2.Text:SetText(ABFactionBars["Bar6"]["Edge"]["ArtGradientOptions2"])
-- Box 7, pop out 3 --
	abfOptions6Box7PopOut3.Text:SetText(ABFactionBars["Bar6"]["Edge"]["ArtGradientOrientation"])
-- Box 8, Pop Out Button 1 --
	if ABFactionBars["Bar6"]["BorderVisibility"] then
		abfOptions6Box8PopOut1.Text:SetText("Show")
	elseif not ABFactionBars["Bar6"]["BorderVisibility"] then
		abfOptions6Box8PopOut1.Text:SetText("Hide")
	end
-- Box 8, Pop Out Button 2 --
	abfOptions6Box8PopOut2.Text:SetText(ABFactionBars["Bar6"]["BorderArtColorMode"])
	if ABFactionBars["Bar6"]["BorderArtColorMode"] == "One Color" then
		if not abfOptions6Box9:IsShown() then abfOptions6Box9:Show() end
		if abfOptions6Box10:IsShown() then abfOptions6Box10:Hide() end
	elseif ABFactionBars["Bar6"]["BorderArtColorMode"] == "Gradient Color" then
		if abfOptions6Box9:IsShown() then abfOptions6Box9:Hide() end
		if not abfOptions6Box10:IsShown() then abfOptions6Box10:Show() end
	end
-- Box 9, Pop Out Button 1 --
	abfOptions6Box9PopOut1.Text:SetText(ABFactionBars["Bar6"]["BorderArtColorOptions"])
-- Box 10, Pop Out Button 1 --
	abfOptions6Box10PopOut1.Text:SetText(ABFactionBars["Bar6"]["BorderArtGradientOptions1"])
-- Box 10, Pop Out Button 2 --
	abfOptions6Box10PopOut2.Text:SetText(ABFactionBars["Bar6"]["BorderArtGradientOptions2"])
-- Box 10, Pop Out Button 3 --
	abfOptions6Box10PopOut3.Text:SetText(ABFactionBars["Bar6"]["BorderArtGradientOrientation"])
end
-- Box 1, Texts Fonts & Cooldown Color --
-- Box 1, Pop Out Button 1, Hot Key Fonts --
-- enter --
abfOptions6Box1PopOut1:SetScript("OnEnter", function(self)
	abfEnteringMenus(self)
	GameTooltip:SetText("|T"..C_AddOns.GetAddOnMetadata("ABF", "IconTexture")..":16|t"..abfMainColor:WrapTextInColorCode(C_AddOns.GetAddOnMetadata("ABF", "Title")).."|nChoose fonts for|nthe Hot Key Text") 
end)
-- leave --
abfOptions6Box1PopOut1:SetScript("OnLeave", abfLeavingMenus)
-- drop down --
abfClickPopOut(abfOptions6Box1PopOut1, abfOptions6Box1PopOut1Choice0)
-- sort clicking --
for i = 1, 7, 1 do
	_G["abfOptions6Box1PopOut1Choice"..i]:SetParent(abfOptions6Box1PopOut1Choice0)
	_G["abfOptions6Box1PopOut1Choice"..i]:SetPoint("TOP", _G["abfOptions6Box1PopOut1Choice"..i-1], "BOTTOM", 0, 0)
end
-- naming at Options10 --
-- clicking --
for i = 0, 7, 1 do
	_G["abfOptions6Box1PopOut1Choice"..i]:HookScript("OnClick", function(self, button, down)
		if button == "LeftButton" and down == false then
			ABFactionBars["Bar6"]["HotKeyFonts"] = self.Text:GetText()
			abfOptions6Box1PopOut1.Text:SetText(self.Text:GetText())
			abfOptions6Box1PopOut1Choice0:Hide()
			abfSavedFonts("Bar6", MultiBar5)
		end
	end)
end
-- Box 1, Pop Out Button 2, Count Fonts --
-- enter --
abfOptions6Box1PopOut2:SetScript("OnEnter", function(self)
	abfEnteringMenus(self)
	GameTooltip:SetText("|T"..C_AddOns.GetAddOnMetadata("ABF", "IconTexture")..":16|t"..abfMainColor:WrapTextInColorCode(C_AddOns.GetAddOnMetadata("ABF", "Title")).."|nChoose fonts for|nthe Count Text") 
end)
-- leave --
abfOptions6Box1PopOut2:SetScript("OnLeave", abfLeavingMenus)
-- drop down --
abfClickPopOut(abfOptions6Box1PopOut2, abfOptions6Box1PopOut2Choice0)
-- sort clicking --
for i = 1, 7, 1 do
	_G["abfOptions6Box1PopOut2Choice"..i]:SetParent(abfOptions6Box1PopOut2Choice0)
	_G["abfOptions6Box1PopOut2Choice"..i]:SetPoint("TOP", _G["abfOptions6Box1PopOut2Choice"..i-1], "BOTTOM", 0, 0)
end
-- naming at Options10 --
-- clicking --
for i = 0, 7, 1 do
	_G["abfOptions6Box1PopOut2Choice"..i]:HookScript("OnClick", function(self, button, down)
		if button == "LeftButton" and down == false then
			ABFactionBars["Bar6"]["CountFonts"] = self.Text:GetText()
			abfOptions6Box1PopOut2.Text:SetText(self.Text:GetText())
			abfOptions6Box1PopOut2Choice0:Hide()
			abfSavedFonts("Bar6", MultiBar5)
		end
	end)
end
-- Box 1, Pop Out Button 3, Name Fonts --
-- enter --
abfOptions6Box1PopOut3:SetScript("OnEnter", function(self)
	abfEnteringMenus(self)
	GameTooltip:SetText("|T"..C_AddOns.GetAddOnMetadata("ABF", "IconTexture")..":16|t"..abfMainColor:WrapTextInColorCode(C_AddOns.GetAddOnMetadata("ABF", "Title")).."|nChoose fonts for|nthe Name Text") 
end)
-- leave --
abfOptions6Box1PopOut3:SetScript("OnLeave", abfLeavingMenus)
-- drop down --
abfClickPopOut(abfOptions6Box1PopOut3, abfOptions6Box1PopOut3Choice0)
-- sort clicking --
for i = 1, 7, 1 do
	_G["abfOptions6Box1PopOut3Choice"..i]:SetParent(abfOptions6Box1PopOut3Choice0)
	_G["abfOptions6Box1PopOut3Choice"..i]:SetPoint("TOP", _G["abfOptions6Box1PopOut3Choice"..i-1], "BOTTOM", 0, 0)
end
-- naming at Options10 --
-- clicking --
for i = 0, 7, 1 do
	_G["abfOptions6Box1PopOut3Choice"..i]:HookScript("OnClick", function(self, button, down)
		if button == "LeftButton" and down == false then
			ABFactionBars["Bar6"]["NameFonts"] = self.Text:GetText()
			abfOptions6Box1PopOut3.Text:SetText(self.Text:GetText())
			abfOptions6Box1PopOut3Choice0:Hide()
			abfSavedFonts("Bar6", MultiBar5)
		end
	end)
end
-- Box 1, Pop Out Button 4, Cooldown Color --
-- enter --
abfOptions6Box1PopOut4:SetScript("OnEnter", function(self)
	abfEnteringMenus(self)
	GameTooltip:SetText("|T"..C_AddOns.GetAddOnMetadata("ABF", "IconTexture")..":16|t"..abfMainColor:WrapTextInColorCode(C_AddOns.GetAddOnMetadata("ABF", "Title")).."|nChoose the color for|nthe Cooldown Swipe") 
end)
-- leave --
abfOptions6Box1PopOut4:SetScript("OnLeave", abfLeavingMenus)
-- drop down --
abfClickPopOut(abfOptions6Box1PopOut4, abfOptions6Box1PopOut4Choice0)
-- sort clicking --
for i = 1, 3, 1 do
	_G["abfOptions6Box1PopOut4Choice"..i]:SetParent(abfOptions6Box1PopOut4Choice0)
	_G["abfOptions6Box1PopOut4Choice"..i]:SetPoint("TOP", _G["abfOptions6Box1PopOut4Choice"..i-1], "BOTTOM", 0, 0)
end
-- naming at Options10 --
-- on click --
for i = 0, 3, 1 do
	_G["abfOptions6Box1PopOut4Choice"..i]:HookScript("OnClick", function(self, button, down)
		if button == "LeftButton" and down == false then
			ABFactionBars["Bar6"]["ColorCDoption"] = self.Text:GetText()
			abfOptions6Box1PopOut4.Text:SetText(self.Text:GetText())
			abfOptions6Box1PopOut4Choice0:Hide()
			if ABFactionBars["Bar6"]["ColorCDoption"] == "Default Color" then
				ABFactionBars["Bar6"]["ColorCD"] = {r = 0, g = 0, b = 0, a = 0.8,}
			elseif ABFactionBars["Bar6"]["ColorCDoption"] == "Class Color" then
				ABFactionBars["Bar6"]["ColorCD"] = CreateColor(abfClassColor:GetRGB())
			elseif ABFactionBars["Bar6"]["ColorCDoption"] == "Faction Color" then
				ABFactionBars["Bar6"]["ColorCD"] = CreateColor(_G["PLAYER_FACTION_COLOR_"..string.upper(abfFaction.name)]:GetRGB())
			elseif ABFactionBars["Bar6"]["ColorCDoption"] == "Custom Color" then
				abfShowColorPickerCD("Bar6", MultiBar5, "ColorCD", abfSavedCDcolor)
			end
			abfSavedCDcolor("Bar6", MultiBar5)
		end
	end)
end
-- Box 2 Slot Art --
-- pop out 1 Slot Art Choice --
-- enter --
abfOptions6Box2PopOut1:SetScript("OnEnter", function(self)
	abfEnteringMenus(self)
	GameTooltip:SetText("|T"..C_AddOns.GetAddOnMetadata("ABF", "IconTexture")..":16|t"..abfMainColor:WrapTextInColorCode(C_AddOns.GetAddOnMetadata("ABF", "Title")).."|nChoose the Slot Art for|nthe Action Bar 6") 
end)
-- leave --
abfOptions6Box2PopOut1:SetScript("OnLeave", abfLeavingMenus)
-- drop down --
abfClickPopOut(abfOptions6Box2PopOut1, abfOptions6Box2PopOut1Choice0)
-- sort clicking --
for i = 1, 6, 1 do
	_G["abfOptions6Box2PopOut1Choice"..i]:SetParent(abfOptions6Box2PopOut1Choice0)
	_G["abfOptions6Box2PopOut1Choice"..i]:SetPoint("TOP", _G["abfOptions6Box2PopOut1Choice"..i-1], "BOTTOM", 0, 0)
-- on leave --
	_G["abfOptions6Box2PopOut1Choice"..i]:HookScript("OnLeave", function(self) abfOptions6Box2PopOut1.Example:Hide() end)
end
-- naming at Options 10 --
-- clicking --
for i = 0, 6, 1 do
	_G["abfOptions6Box2PopOut1Choice"..i]:HookScript("OnClick", function(self, button, down)
		if button == "LeftButton" and down == false then
			ABFactionBars["Bar6"]["Slot"]["Art"] = self.Text:GetText()
			abfOptions6Box2PopOut1.Text:SetText(self.Text:GetText())
			abfOptions6Box2PopOut1Choice0:Hide()
			abfSavedArtSlot("Bar6", MultiBar5)
		end
	end)
end
-- entering the pop out buttons at Options 10 --
-- pop out 2 Slot Art Color Choice --
-- enter --
abfOptions6Box2PopOut2:SetScript("OnEnter", function(self)
	abfEnteringMenus(self)
	GameTooltip:SetText("|T"..C_AddOns.GetAddOnMetadata("ABF", "IconTexture")..":16|t"..abfMainColor:WrapTextInColorCode(C_AddOns.GetAddOnMetadata("ABF", "Title")).."|nChoose the mode color for|nthe Slot Art! (one color or gradient color)") 
end)
-- leave --
abfOptions6Box2PopOut2:SetScript("OnLeave", abfLeavingMenus)
-- drop down --
abfClickPopOut(abfOptions6Box2PopOut2, abfOptions6Box2PopOut2Choice0)
-- position --
abfOptions6Box2PopOut2Choice1:SetParent(abfOptions6Box2PopOut2Choice0)
abfOptions6Box2PopOut2Choice1:SetPoint("TOP", abfOptions6Box2PopOut2Choice0, "BOTTOM", 0, 0)
-- naming at Options 10 --
-- click --
for i = 0, 1, 1 do
	_G["abfOptions6Box2PopOut2Choice"..i]:HookScript("OnClick", function(self, button, down)
		if button == "LeftButton" and down == false then
			ABFactionBars["Bar6"]["Slot"]["ArtColorChoice"] = self.Text:GetText()
			abfOptions6Box2PopOut2.Text:SetText(self.Text:GetText())
			abfOptions6Box2PopOut2Choice0:Hide()
			if ABFactionBars["Bar6"]["Slot"]["ArtColorChoice"] == "One Color" then
				if not abfOptions6Box3:IsShown() then abfOptions6Box3:Show() end
				if abfOptions6Box4:IsShown() then abfOptions6Box4:Hide() end
				abfOptions6Box3Slider1:SetValue(ABFactionBars["Bar6"]["Slot"]["ArtColorDesaturation"] * 10)
			elseif ABFactionBars["Bar6"]["Slot"]["ArtColorChoice"] == "Gradient Color" then
				if not abfOptions6Box4:IsShown() then abfOptions6Box4:Show() end
				if abfOptions6Box3:IsShown() then abfOptions6Box3:Hide() end
			end
			abfSavedColorSlot("Bar6", MultiBar5)
		end
	end)
end
-- Box 3, color one --
-- Slider 1, Desaturation --
-- min max values --
abfOptions6Box3Slider1.MinText:SetText(0)
abfOptions6Box3Slider1.MaxText:SetText(1)
abfOptions6Box3Slider1.Slider:SetMinMaxValues(0, 10)
-- enter --
abfOptions6Box3Slider1.Slider:SetScript("OnEnter", function(self)
	abfEnteringMenus(self)
	GameTooltip:SetText("|T"..C_AddOns.GetAddOnMetadata("ABF", "IconTexture")..":16|t "..abfMainColor:WrapTextInColorCode(C_AddOns.GetAddOnMetadata("ABF", "Title")).."|nYou can also use your mousewheel|nor the buttons to the edge|nto change the value!") 
end)
-- leave --
abfOptions6Box3Slider1.Slider:SetScript("OnLeave", abfLeavingMenus)
-- on mouse wheel --
abfOptions6Box3Slider1.Slider:SetScript("OnMouseWheel", abfMouseWheelSlider)
-- On Value Changed --
abfOptions6Box3Slider1.Slider:SetScript("OnValueChanged", function (self, value, userInput)
	abfOptions6Box3Slider1.TopText:SetText("Desaturation of the Artwork: "..(self:GetValue()/10))
	ABFactionBars["Bar6"]["Slot"]["ArtColorDesaturation"] = self:GetValue()/10
	abfSavedColorSlot("Bar6", MultiBar5)
end)
-- pop out 1 color one choices --
-- enter --
abfOptions6Box3PopOut1:SetScript("OnEnter", function(self)
	abfEnteringMenus(self)
	GameTooltip:SetText("|T"..C_AddOns.GetAddOnMetadata("ABF", "IconTexture")..":16|t"..abfMainColor:WrapTextInColorCode(C_AddOns.GetAddOnMetadata("ABF", "Title")).."|nChoose the color for|nthe Slot Art") 
end)
-- leave --
abfOptions6Box3PopOut1:SetScript("OnLeave", abfLeavingMenus)
-- drop down --
abfClickPopOut(abfOptions6Box3PopOut1, abfOptions6Box3PopOut1Choice0)
-- sort --
for i = 1, 3, 1 do
	_G["abfOptions6Box3PopOut1Choice"..i]:SetParent(abfOptions6Box3PopOut1Choice0)
	_G["abfOptions6Box3PopOut1Choice"..i]:SetPoint("TOP", _G["abfOptions6Box3PopOut1Choice"..i-1], "BOTTOM", 0, 0)
end
-- naming at Options 10 --
-- click --
for i = 0, 3, 1 do
	_G["abfOptions6Box3PopOut1Choice"..i]:HookScript("OnClick", function(self, button, down)
		if button == "LeftButton" and down == false then
			ABFactionBars["Bar6"]["Slot"]["ArtColorOptions"] = self.Text:GetText()
			abfOptions6Box3PopOut1.Text:SetText(self.Text:GetText())
			abfOptions6Box3PopOut1Choice0:Hide()
			if ABFactionBars["Bar6"]["Slot"]["ArtColorOptions"] == "Default Color" then
				if abfOptions6Box3Slider1:IsShown() then abfOptions6Box3Slider1:Hide() end
				ABFactionBars["Bar6"]["Slot"]["ArtColor"] = {r = 1, g = 1, b = 1, a = 1,}
			elseif ABFactionBars["Bar6"]["Slot"]["ArtColorOptions"] == "Class Color" then
				if abfOptions6Box3Slider1:IsShown() then abfOptions6Box3Slider1:Hide() end
				ABFactionBars["Bar6"]["Slot"]["ArtColor"] = CreateColor(abfClassColor:GetRGB())
			elseif ABFactionBars["Bar6"]["Slot"]["ArtColorOptions"] == "Faction Color" then
				if abfOptions6Box3Slider1:IsShown() then abfOptions6Box3Slider1:Hide() end
				ABFactionBars["Bar6"]["Slot"]["ArtColor"] = CreateColor(_G["PLAYER_FACTION_COLOR_"..string.upper(abfFaction.name)]:GetRGB())
			elseif ABFactionBars["Bar6"]["Slot"]["ArtColorOptions"] == "Custom Color" then
				if not abfOptions6Box3Slider1:IsShown() then abfOptions6Box3Slider1:Show() end
				abfShowColorPicker("Bar6", MultiBar5, "Slot", abfSavedColorSlot, "ArtColor")
			end
			abfSavedColorSlot("Bar6", MultiBar5)
		end
	end)
end
-- Box 4, color Gradient --
-- pop out 1 color Gradient one choices --
-- enter --
abfOptions6Box4PopOut1:SetScript("OnEnter", function(self)
	abfEnteringMenus(self)
	GameTooltip:SetText("|T"..C_AddOns.GetAddOnMetadata("ABF", "IconTexture")..":16|t"..abfMainColor:WrapTextInColorCode(C_AddOns.GetAddOnMetadata("ABF", "Title")).."|nChoose the first gradient|ncolor for the Slot Art") 
end)
-- leave --
abfOptions6Box4PopOut1:SetScript("OnLeave", abfLeavingMenus)
-- drop down --
abfClickPopOut(abfOptions6Box4PopOut1, abfOptions6Box4PopOut1Choice0)
-- sort clicking --
for i = 1, 3, 1 do
	_G["abfOptions6Box4PopOut1Choice"..i]:SetParent(abfOptions6Box4PopOut1Choice0)
	_G["abfOptions6Box4PopOut1Choice"..i]:SetPoint("TOP", _G["abfOptions6Box4PopOut1Choice"..i-1], "BOTTOM", 0, 0)
end
-- naming at Options 10 --
-- click --
for i = 0, 3, 1 do
	_G["abfOptions6Box4PopOut1Choice"..i]:HookScript("OnClick", function(self, button, down)
		if button == "LeftButton" and down == false then
			ABFactionBars["Bar6"]["Slot"]["ArtGradientOptions1"] = self.Text:GetText()
			abfOptions6Box4PopOut1.Text:SetText(self.Text:GetText())
			abfOptions6Box4PopOut1Choice0:Hide()
			if ABFactionBars["Bar6"]["Slot"]["ArtGradientOptions1"] == "Default Color" then
				ABFactionBars["Bar6"]["Slot"]["ArtGradientColor1"] = {r = 1, g = 1, b = 1, a = 1,}
			elseif ABFactionBars["Bar6"]["Slot"]["ArtGradientOptions1"] == "Class Color" then
				ABFactionBars["Bar6"]["Slot"]["ArtGradientColor1"] = CreateColor(abfClassColor:GetRGB())
			elseif ABFactionBars["Bar6"]["Slot"]["ArtGradientOptions1"] == "Faction Color" then
				ABFactionBars["Bar6"]["Slot"]["ArtGradientColor1"] = CreateColor(_G["PLAYER_FACTION_COLOR_"..string.upper(abfFaction.name)]:GetRGB())
			elseif ABFactionBars["Bar6"]["Slot"]["ArtGradientOptions1"] == "Custom Color" then
				abfShowColorPicker("Bar6", MultiBar5, "Slot", abfSavedColorSlot, "ArtGradientColor1")
			end
			abfSavedColorSlot("Bar6", MultiBar5)
		end
	end)
end
-- pop out 2 color Gradient two choices --
-- enter --
abfOptions6Box4PopOut2:SetScript("OnEnter", function(self)
	abfEnteringMenus(self)
	GameTooltip:SetText("|T"..C_AddOns.GetAddOnMetadata("ABF", "IconTexture")..":16|t"..abfMainColor:WrapTextInColorCode(C_AddOns.GetAddOnMetadata("ABF", "Title")).."|nChoose the second gradient|ncolor for the Slot Art") 
end)
-- leave --
abfOptions6Box4PopOut2:SetScript("OnLeave", abfLeavingMenus)
-- drop down --
abfClickPopOut(abfOptions6Box4PopOut2, abfOptions6Box4PopOut2Choice0)
-- sort clicking --
for i = 1, 3, 1 do
	_G["abfOptions6Box4PopOut2Choice"..i]:SetParent(abfOptions6Box4PopOut2Choice0)
	_G["abfOptions6Box4PopOut2Choice"..i]:SetPoint("TOP", _G["abfOptions6Box4PopOut2Choice"..i-1], "BOTTOM", 0, 0)
end
-- naming at Options 10 --
-- click --
for i = 0, 3, 1 do
	_G["abfOptions6Box4PopOut2Choice"..i]:HookScript("OnClick", function(self, button, down)
		if button == "LeftButton" and down == false then
			ABFactionBars["Bar6"]["Slot"]["ArtGradientOptions2"] = self.Text:GetText()
			abfOptions6Box4PopOut2.Text:SetText(self.Text:GetText())
			abfOptions6Box4PopOut2Choice0:Hide()
			if ABFactionBars["Bar6"]["Slot"]["ArtGradientOptions2"] == "Default Color" then
				ABFactionBars["Bar6"]["Slot"]["ArtGradientColor2"] = {r = 1, g = 1, b = 1, a = 1,}
			elseif ABFactionBars["Bar6"]["Slot"]["ArtGradientOptions2"] == "Class Color" then
				ABFactionBars["Bar6"]["Slot"]["ArtGradientColor2"] = CreateColor(abfClassColor:GetRGB())
			elseif ABFactionBars["Bar6"]["Slot"]["ArtGradientOptions2"] == "Faction Color" then
				ABFactionBars["Bar6"]["Slot"]["ArtGradientColor2"] = CreateColor(_G["PLAYER_FACTION_COLOR_"..string.upper(abfFaction.name)]:GetRGB())
			elseif ABFactionBars["Bar6"]["Slot"]["ArtGradientOptions2"] == "Custom Color" then
				abfShowColorPicker("Bar6", MultiBar5, "Slot", abfSavedColorSlot, "ArtGradientColor2")
			end
			abfSavedColorSlot("Bar6", MultiBar5)
		end
	end)
end
-- pop out 3 color Gradient Orientation --
-- enter --
abfOptions6Box4PopOut3:SetScript("OnEnter", function(self)
	abfEnteringMenus(self)
	GameTooltip:SetText("|T"..C_AddOns.GetAddOnMetadata("ABF", "IconTexture")..":16|t"..abfMainColor:WrapTextInColorCode(C_AddOns.GetAddOnMetadata("ABF", "Title")).."|nChoose the orientation|nof the colors for the Slot Art") 
end)
-- leave --
abfOptions6Box4PopOut3:SetScript("OnLeave", abfLeavingMenus)
-- drop down --
abfClickPopOut(abfOptions6Box4PopOut3, abfOptions6Box4PopOut3Choice0)
-- sort --
abfOptions6Box4PopOut3Choice1:SetParent(abfOptions6Box4PopOut3Choice0)
abfOptions6Box4PopOut3Choice1:SetPoint("TOP", abfOptions6Box4PopOut3Choice0, "BOTTOM", 0, 0)
-- naming at Options 10 --
-- click --
for i = 0, 1, 1 do
	_G["abfOptions6Box4PopOut3Choice"..i]:HookScript("OnClick", function(self, button, down)
		if button == "LeftButton" and down == false then
			ABFactionBars["Bar6"]["Slot"]["ArtGradientOrientation"] = self.Text:GetText()
			abfOptions6Box4PopOut3.Text:SetText(self.Text:GetText())
			abfOptions6Box4PopOut3Choice0:Hide()
			abfSavedColorSlot("Bar6", MultiBar5)
		end
	end)
end
-- Box 5 Edge Art --
-- pop out 1 Edge Art Choice --
-- enter --
abfOptions6Box5PopOut1:SetScript("OnEnter", function(self)
	abfEnteringMenus(self)
	GameTooltip:SetText("|T"..C_AddOns.GetAddOnMetadata("ABF", "IconTexture")..":16|t"..abfMainColor:WrapTextInColorCode(C_AddOns.GetAddOnMetadata("ABF", "Title")).."|nChoose the Edge Art for|nthe Action Bar 6") 
end)
-- leave --
abfOptions6Box5PopOut1:SetScript("OnLeave", abfLeavingMenus)
-- drop down --
abfClickPopOut(abfOptions6Box5PopOut1, abfOptions6Box5PopOut1Choice0)
-- sort clicking --
for i = 1, 4, 1 do
	_G["abfOptions6Box5PopOut1Choice"..i]:SetParent(abfOptions6Box5PopOut1Choice0)
	_G["abfOptions6Box5PopOut1Choice"..i]:SetPoint("TOP", _G["abfOptions6Box5PopOut1Choice"..i-1], "BOTTOM", 0, 0)
-- on leave --
	_G["abfOptions6Box5PopOut1Choice"..i]:HookScript("OnLeave", function(self) abfOptions6Box5PopOut1.Example:Hide() end)
end
-- naming at Options 10 --
-- clicking --
for i = 0, 4, 1 do
	_G["abfOptions6Box5PopOut1Choice"..i]:HookScript("OnClick", function(self, button, down)
		if button == "LeftButton" and down == false then
			ABFactionBars["Bar6"]["Edge"]["Art"] = self.Text:GetText()
			abfOptions6Box5PopOut1.Text:SetText(self.Text:GetText())
			abfOptions6Box5PopOut1Choice0:Hide()
			if ABFactionBars["Bar6"]["Edge"]["Art"] == "Gryphon" or ABFactionBars["Bar6"]["Edge"]["Art"] == "Wyvern" then
				if not abfOptions6Box5PopOut3:IsShown() then abfOptions6Box5PopOut3:Show() end
				if not abfOptions6Box5PopOut4:IsShown() then abfOptions6Box5PopOut4:Show() end
			else
				if abfOptions6Box5PopOut3:IsShown() then abfOptions6Box5PopOut3:Hide() end
				if abfOptions6Box5PopOut4:IsShown() then abfOptions6Box5PopOut4:Hide() end
			end
			abfSavedArtEdge("Bar6", MultiBar5)
			abfSavedEdgeArtAnimation("Bar6", MultiBar5)
		end
	end)
end
-- entering the pop out buttons at Options 10 --
-- pop out 2 Edge Art Color Choice --
-- enter --
abfOptions6Box5PopOut2:SetScript("OnEnter", function(self)
	abfEnteringMenus(self)
	GameTooltip:SetText("|T"..C_AddOns.GetAddOnMetadata("ABF", "IconTexture")..":16|t"..abfMainColor:WrapTextInColorCode(C_AddOns.GetAddOnMetadata("ABF", "Title")).."|nChoose the mode color for|nthe Edge Art! (one color or gradient color)") 
end)
-- leave --
abfOptions6Box5PopOut2:SetScript("OnLeave", abfLeavingMenus)
-- drop down --
abfClickPopOut(abfOptions6Box5PopOut2, abfOptions6Box5PopOut2Choice0)
-- position --
abfOptions6Box5PopOut2Choice1:SetParent(abfOptions6Box5PopOut2Choice0)
abfOptions6Box5PopOut2Choice1:SetPoint("TOP", abfOptions6Box5PopOut2Choice0, "BOTTOM", 0, 0)
-- naming at Options 10 --
-- click --
for i = 0, 1, 1 do
	_G["abfOptions6Box5PopOut2Choice"..i]:HookScript("OnClick", function(self, button, down)
		if button == "LeftButton" and down == false then
			ABFactionBars["Bar6"]["Edge"]["ArtColorChoice"] = self.Text:GetText()
			abfOptions6Box5PopOut2.Text:SetText(self.Text:GetText())
			abfOptions6Box5PopOut2Choice0:Hide()
			if ABFactionBars["Bar6"]["Edge"]["ArtColorChoice"] == "One Color" then
				if not abfOptions6Box6:IsShown() then abfOptions6Box6:Show() end
				if abfOptions6Box7:IsShown() then abfOptions6Box7:Hide() end
				abfOptions6Box6Slider1:SetValue(ABFactionBars["Bar6"]["Edge"]["ArtColorDesaturation"] * 10)
			elseif ABFactionBars["Bar6"]["Edge"]["ArtColorChoice"] == "Gradient Color" then
				if not abfOptions6Box7:IsShown() then abfOptions6Box7:Show() end
				if abfOptions6Box6:IsShown() then abfOptions6Box6:Hide() end
			end
			abfSavedColorEdge("Bar6", MultiBar5)
			abfSavedEdgeArtAnimation("Bar6", MultiBar5)
		end
	end)
end
-- Box 5, Pop Out Button 3, Edge Art Animation --
-- enter --
abfOptions6Box5PopOut3:SetScript("OnEnter", function(self)
	abfEnteringMenus(self)
	GameTooltip:SetText("|T"..C_AddOns.GetAddOnMetadata("ABF", "IconTexture")..":16|t"..abfMainColor:WrapTextInColorCode(C_AddOns.GetAddOnMetadata("ABF", "Title")).."|nWhould you like the animation|nfor the Edge Art to be shown?") 
end)
-- leave --
abfOptions6Box5PopOut3:SetScript("OnLeave", abfLeavingMenus)
-- drop down --
abfClickPopOut(abfOptions6Box5PopOut3, abfOptions6Box5PopOut3Choice0)
-- naming at Options 10 --
-- sorting --
abfOptions6Box5PopOut3Choice1:SetParent(abfOptions6Box5PopOut3Choice0)
abfOptions6Box5PopOut3Choice1:SetPoint("TOP", abfOptions6Box5PopOut3Choice0, "BOTTOM", 0, 0)
-- click --
for i = 0, 1, 1 do
	_G["abfOptions6Box5PopOut3Choice"..i]:HookScript("OnClick", function(self, button, down)
		if button == "LeftButton" and down == false then
			abfOptions6Box5PopOut3.Text:SetText(self.Text:GetText())
			abfOptions6Box5PopOut3Choice0:Hide()
			if self.Text:GetText() == "Hide" then
				ABFactionBars["Bar6"]["Edge"]["Animation"] = false
			elseif self.Text:GetText() == "Show" then
				ABFactionBars["Bar6"]["Edge"]["Animation"] = true
			end
			abfSavedEdgeArtAnimation("Bar6", MultiBar5)
		end
	end)
end
-- Box 5, Pop Out Button 4, Edge Art Animation Color --
-- enter --
abfOptions6Box5PopOut4:SetScript("OnEnter", function(self)
	abfEnteringMenus(self)
	GameTooltip:SetText("|T"..C_AddOns.GetAddOnMetadata("ABF", "IconTexture")..":16|t"..abfMainColor:WrapTextInColorCode(C_AddOns.GetAddOnMetadata("ABF", "Title")).."|nChoose the color for the animation") 
end)
-- leave --
abfOptions6Box5PopOut4:SetScript("OnLeave", abfLeavingMenus)
-- drop down --
abfClickPopOut(abfOptions6Box5PopOut4, abfOptions6Box5PopOut4Choice0)
-- naming at Options 10 --
-- sorting --
for i = 1, 3, 1 do
	_G["abfOptions6Box5PopOut4Choice"..i]:SetParent(abfOptions6Box5PopOut4Choice0)
	_G["abfOptions6Box5PopOut4Choice"..i]:SetPoint("TOP", _G["abfOptions6Box5PopOut4Choice"..i-1], "BOTTOM", 0, 0)
end
-- click --
for i = 0, 3, 1 do
	_G["abfOptions6Box5PopOut4Choice"..i]:HookScript("OnClick", function(self, button, down)
		if button == "LeftButton" and down == false then
			ABFactionBars["Bar6"]["Edge"]["AnimationColorOptions"] = self.Text:GetText()
			abfOptions6Box5PopOut4.Text:SetText(self.Text:GetText())
			abfOptions6Box5PopOut4Choice0:Hide()
			if ABFactionBars["Bar6"]["Edge"]["AnimationColorOptions"] == "Default Color" then
				ABFactionBars["Bar6"]["Edge"]["AnimationColor"] = {r = 1, g = 1, b = 1, a = 1}
			elseif ABFactionBars["Bar6"]["Edge"]["AnimationColorOptions"] == "Class Color" then
				ABFactionBars["Bar6"]["Edge"]["AnimationColor"] = CreateColor(abfClassColor:GetRGB())
			elseif ABFactionBars["Bar6"]["Edge"]["AnimationColorOptions"] == "Faction Color" then
				ABFactionBars["Bar6"]["Edge"]["AnimationColor"] = CreateColor(_G["PLAYER_FACTION_COLOR_"..string.upper(abfFaction.name)]:GetRGB())
			elseif ABFactionBars["Bar6"]["Edge"]["AnimationColorOptions"] == "Custom Color" then
				abfShowColorPicker("Bar6", MultiBar5, "Edge", abfSavedEdgeArtAnimation, "AnimationColor")
			end
			abfSavedEdgeArtAnimation("Bar6", MultiBar5)
		end
	end)
end
-- Box 6, color one --
-- Slider 1, Desaturation --
-- min max values --
abfOptions6Box6Slider1.MinText:SetText(0)
abfOptions6Box6Slider1.MaxText:SetText(1)
abfOptions6Box6Slider1.Slider:SetMinMaxValues(0, 10)
-- enter --
abfOptions6Box6Slider1.Slider:SetScript("OnEnter", function(self)
	abfEnteringMenus(self)
	GameTooltip:SetText("|T"..C_AddOns.GetAddOnMetadata("ABF", "IconTexture")..":16|t "..abfMainColor:WrapTextInColorCode(C_AddOns.GetAddOnMetadata("ABF", "Title")).."|nYou can also use your mousewheel|nor the buttons to the edge|nto change the value!") 
end)
-- leave --
abfOptions6Box6Slider1.Slider:SetScript("OnLeave", abfLeavingMenus)
-- on mouse wheel --
abfOptions6Box6Slider1.Slider:SetScript("OnMouseWheel", abfMouseWheelSlider)
-- On Value Changed --
abfOptions6Box6Slider1.Slider:SetScript("OnValueChanged", function (self, value, userInput)
	abfOptions6Box6Slider1.TopText:SetText("Desaturation of the Artwork: "..(self:GetValue()/10))
	ABFactionBars["Bar6"]["Edge"]["ArtColorDesaturation"] = self:GetValue()/10
	abfSavedColorEdge("Bar6", MultiBar5)
end)
-- pop out 1 color one choices --
-- enter --
abfOptions6Box6PopOut1:SetScript("OnEnter", function(self)
	abfEnteringMenus(self)
	GameTooltip:SetText("|T"..C_AddOns.GetAddOnMetadata("ABF", "IconTexture")..":16|t"..abfMainColor:WrapTextInColorCode(C_AddOns.GetAddOnMetadata("ABF", "Title")).."|nChoose the color for|nthe Edge Art") 
end)
-- leave --
abfOptions6Box6PopOut1:SetScript("OnLeave", abfLeavingMenus)
-- drop down --
abfClickPopOut(abfOptions6Box6PopOut1, abfOptions6Box6PopOut1Choice0)
-- sort clicking --
for i = 1, 3, 1 do
	_G["abfOptions6Box6PopOut1Choice"..i]:SetParent(abfOptions6Box6PopOut1Choice0)
	_G["abfOptions6Box6PopOut1Choice"..i]:SetPoint("TOP", _G["abfOptions6Box6PopOut1Choice"..i-1], "BOTTOM", 0, 0)
end
-- naming at Options 10 --
-- click --
for i = 0, 3, 1 do
	_G["abfOptions6Box6PopOut1Choice"..i]:HookScript("OnClick", function(self, button, down)
		if button == "LeftButton" and down == false then
			ABFactionBars["Bar6"]["Edge"]["ArtColorOptions"] = self.Text:GetText()
			abfOptions6Box6PopOut1.Text:SetText(self.Text:GetText())
			abfOptions6Box6PopOut1Choice0:Hide()
			if ABFactionBars["Bar6"]["Edge"]["ArtColorOptions"] == "Default Color" then
				ABFactionBars["Bar6"]["Edge"]["ArtColor"] = {r = 1, g = 1, b = 1, a = 1,}
				if abfOptions6Box6Slider1:IsShown() then abfOptions6Box6Slider1:Hide() end
			elseif ABFactionBars["Bar6"]["Edge"]["ArtColorOptions"] == "Class Color" then
				ABFactionBars["Bar6"]["Edge"]["ArtColor"] = CreateColor(abfClassColor:GetRGB())
				if abfOptions6Box6Slider1:IsShown() then abfOptions6Box6Slider1:Hide() end
			elseif ABFactionBars["Bar6"]["Edge"]["ArtColorOptions"] == "Faction Color" then
				ABFactionBars["Bar6"]["Edge"]["ArtColor"] = CreateColor(_G["PLAYER_FACTION_COLOR_"..string.upper(abfFaction.name)]:GetRGB())
				if abfOptions6Box6Slider1:IsShown() then abfOptions6Box6Slider1:Hide() end
			elseif ABFactionBars["Bar6"]["Edge"]["ArtColorOptions"] == "Custom Color" then
				abfShowColorPicker("Bar6", MultiBar5, "Edge", abfSavedColorEdge, "ArtColor")
				if not abfOptions6Box6Slider1:IsShown() then abfOptions6Box6Slider1:Show() end
			end
			abfSavedColorEdge("Bar6", MultiBar5)
			abfSavedEdgeArtAnimation("Bar6", MultiBar5)
		end
	end)
end
-- Box 7, color Gradient --
-- pop out 1 color Gradient one choices --
-- enter --
abfOptions6Box7PopOut1:SetScript("OnEnter", function(self)
	abfEnteringMenus(self)
	GameTooltip:SetText("|T"..C_AddOns.GetAddOnMetadata("ABF", "IconTexture")..":16|t"..abfMainColor:WrapTextInColorCode(C_AddOns.GetAddOnMetadata("ABF", "Title")).."|nChoose the first gradient|ncolor for the Edge Art") 
end)
-- leave --
abfOptions6Box7PopOut1:SetScript("OnLeave", abfLeavingMenus)
-- drop down --
abfClickPopOut(abfOptions6Box7PopOut1, abfOptions6Box7PopOut1Choice0)
-- sort clicking --
for i = 1, 3, 1 do
	_G["abfOptions6Box7PopOut1Choice"..i]:SetParent(abfOptions6Box7PopOut1Choice0)
	_G["abfOptions6Box7PopOut1Choice"..i]:SetPoint("TOP", _G["abfOptions6Box7PopOut1Choice"..i-1], "BOTTOM", 0, 0)
end
-- naming at Options 10 --
-- click --
for i = 0, 3, 1 do
	_G["abfOptions6Box7PopOut1Choice"..i]:HookScript("OnClick", function(self, button, down)
		if button == "LeftButton" and down == false then
			ABFactionBars["Bar6"]["Edge"]["ArtGradientOptions1"] = self.Text:GetText()
			abfOptions6Box7PopOut1.Text:SetText(self.Text:GetText())
			abfOptions6Box7PopOut1Choice0:Hide()
			if ABFactionBars["Bar6"]["Edge"]["ArtGradientOptions1"] == "Default Color" then
				ABFactionBars["Bar6"]["Edge"]["ArtGradientColor1"] = {r = 1, g = 1, b = 1, a = 1,}
			elseif ABFactionBars["Bar6"]["Edge"]["ArtGradientOptions1"] == "Class Color" then
				ABFactionBars["Bar6"]["Edge"]["ArtGradientColor1"] = CreateColor(abfClassColor:GetRGB())
			elseif ABFactionBars["Bar6"]["Edge"]["ArtGradientOptions1"] == "Faction Color" then
				ABFactionBars["Bar6"]["Edge"]["ArtGradientColor1"] = CreateColor(_G["PLAYER_FACTION_COLOR_"..string.upper(abfFaction.name)]:GetRGB())
			elseif ABFactionBars["Bar6"]["Edge"]["ArtGradientOptions1"] == "Custom Color" then
				abfShowColorPicker("Bar6", MultiBar5, "Edge", abfSavedColorEdge, "ArtGradientColor1")
			end
			abfSavedColorEdge("Bar6", MultiBar5)
			abfSavedEdgeArtAnimation("Bar6", MultiBar5)
		end
	end)
end
-- pop out 2 color Gradient two choices --
-- enter --
abfOptions6Box7PopOut2:SetScript("OnEnter", function(self)
	abfEnteringMenus(self)
	GameTooltip:SetText("|T"..C_AddOns.GetAddOnMetadata("ABF", "IconTexture")..":16|t"..abfMainColor:WrapTextInColorCode(C_AddOns.GetAddOnMetadata("ABF", "Title")).."|nChoose the second gradient|ncolor for the Edge Art") 
end)
-- leave --
abfOptions6Box7PopOut2:SetScript("OnLeave", abfLeavingMenus)
-- drop down --
abfClickPopOut(abfOptions6Box7PopOut2, abfOptions6Box7PopOut2Choice0)
-- sort clicking --
for i = 1, 3, 1 do
	_G["abfOptions6Box7PopOut2Choice"..i]:SetParent(abfOptions6Box7PopOut2Choice0)
	_G["abfOptions6Box7PopOut2Choice"..i]:SetPoint("TOP", _G["abfOptions6Box7PopOut2Choice"..i-1], "BOTTOM", 0, 0)
end
-- naming at Options 10 --
-- click --
for i = 0, 3, 1 do
	_G["abfOptions6Box7PopOut2Choice"..i]:HookScript("OnClick", function(self, button, down)
		if button == "LeftButton" and down == false then
			ABFactionBars["Bar6"]["Edge"]["ArtGradientOptions2"] = self.Text:GetText()
			abfOptions6Box7PopOut2.Text:SetText(self.Text:GetText())
			abfOptions6Box7PopOut2Choice0:Hide()
			if ABFactionBars["Bar6"]["Edge"]["ArtGradientOptions2"] == "Default Color" then
				ABFactionBars["Bar6"]["Edge"]["ArtGradientColor2"] = {r = 1, g = 1, b = 1, a = 1,}
			elseif ABFactionBars["Bar6"]["Edge"]["ArtGradientOptions2"] == "Class Color" then
				ABFactionBars["Bar6"]["Edge"]["ArtGradientColor2"] = CreateColor(abfClassColor:GetRGB())
			elseif ABFactionBars["Bar6"]["Edge"]["ArtGradientOptions2"] == "Faction Color" then
				ABFactionBars["Bar6"]["Edge"]["ArtGradientColor2"] = CreateColor(_G["PLAYER_FACTION_COLOR_"..string.upper(abfFaction.name)]:GetRGB())
			elseif ABFactionBars["Bar6"]["Edge"]["ArtGradientOptions2"] == "Custom Color" then
				abfShowColorPicker("Bar6", MultiBar5, "Edge", abfSavedColorEdge, "ArtGradientColor2")
			end
			abfSavedColorEdge("Bar6", MultiBar5)
			abfSavedEdgeArtAnimation("Bar6", MultiBar5)
		end
	end)
end
-- pop out 3 color Gradient Orientation --
-- enter --
abfOptions6Box7PopOut3:SetScript("OnEnter", function(self)
	abfEnteringMenus(self)
	GameTooltip:SetText("|T"..C_AddOns.GetAddOnMetadata("ABF", "IconTexture")..":16|t"..abfMainColor:WrapTextInColorCode(C_AddOns.GetAddOnMetadata("ABF", "Title")).."|nChoose the orientation|nof the colors for the Edge Art") 
end)
-- leave --
abfOptions6Box7PopOut3:SetScript("OnLeave", abfLeavingMenus)
-- drop down --
abfClickPopOut(abfOptions6Box7PopOut3, abfOptions6Box7PopOut3Choice0)
-- sort clicking --
abfOptions6Box7PopOut3Choice1:SetParent(abfOptions6Box7PopOut3Choice0)
abfOptions6Box7PopOut3Choice1:SetPoint("TOP", abfOptions6Box7PopOut3Choice0, "BOTTOM", 0, 0)
-- naming at Options 10 --
-- click --
for i = 0, 1, 1 do
	_G["abfOptions6Box7PopOut3Choice"..i]:HookScript("OnClick", function(self, button, down)
		if button == "LeftButton" and down == false then
			ABFactionBars["Bar6"]["Edge"]["ArtGradientOrientation"] = self.Text:GetText()
			abfOptions6Box7PopOut3.Text:SetText(self.Text:GetText())
			abfOptions6Box7PopOut3Choice0:Hide()
			abfSavedColorEdge("Bar6", MultiBar5)
			abfSavedEdgeArtAnimation("Bar6", MultiBar5)
		end
	end)
end
-- Options Box 8, Border --
-- Box 8, Pop Out Button 1, Border Visibility --
-- enter --
abfOptions6Box8PopOut1:SetScript("OnEnter", function(self)
	abfEnteringMenus(self)
	GameTooltip:SetText("|T"..C_AddOns.GetAddOnMetadata("ABF", "IconTexture")..":16|t"..abfMainColor:WrapTextInColorCode(C_AddOns.GetAddOnMetadata("ABF", "Title")).."|nWhould you like the border of|nthe actionbar 6 to be shown?") 
end)
-- leave --
abfOptions6Box8PopOut1:SetScript("OnLeave", abfLeavingMenus)
-- drop down --
abfClickPopOut(abfOptions6Box8PopOut1, abfOptions6Box8PopOut1Choice0)
-- naming at Options 10 --
-- sort --
abfOptions6Box8PopOut1Choice1:SetParent(abfOptions6Box8PopOut1Choice0)
abfOptions6Box8PopOut1Choice1:SetPoint("TOP", abfOptions6Box8PopOut1Choice0, "BOTTOM", 0, 0)
-- click --
for i = 0, 1, 1 do
	_G["abfOptions6Box8PopOut1Choice"..i]:HookScript("OnClick", function(self, button, down)
		if button == "LeftButton" and down == false then
			abfOptions6Box8PopOut1.Text:SetText(self.Text:GetText())
			abfOptions6Box8PopOut1Choice0:Hide()
			if self.Text:GetText() == "Hide" then
				ABFactionBars["Bar6"]["BorderVisibility"] = false
			elseif self.Text:GetText() == "Show" then
				ABFactionBars["Bar6"]["BorderVisibility"] = true
			end
			abfSavedArtBorder("Bar6", MultiBar5)
		end
	end)
end
-- Box 8, Pop Out Button 2, Border Color Choice --
-- enter --
abfOptions6Box8PopOut2:SetScript("OnEnter", function(self)
	abfEnteringMenus(self)
	GameTooltip:SetText("|T"..C_AddOns.GetAddOnMetadata("ABF", "IconTexture")..":16|t"..abfMainColor:WrapTextInColorCode(C_AddOns.GetAddOnMetadata("ABF", "Title")).."|nChoose the mode color for|nthe Border! (one color or gradient color)") 
end)
-- leave --
abfOptions6Box8PopOut2:SetScript("OnLeave", abfLeavingMenus)
-- drop down --
abfClickPopOut(abfOptions6Box8PopOut2, abfOptions6Box8PopOut2Choice0)
-- naming at Options 10 --
-- sort --
abfOptions6Box8PopOut2Choice1:SetParent(abfOptions6Box8PopOut2Choice0)
abfOptions6Box8PopOut2Choice1:SetPoint("TOP", abfOptions6Box8PopOut2Choice0, "BOTTOM", 0, 0)
-- click --
for i = 0, 1, 1 do
	_G["abfOptions6Box8PopOut2Choice"..i]:HookScript("OnClick", function(self, button, down)
		if button == "LeftButton" and down == false then
			ABFactionBars["Bar6"]["BorderArtColorMode"] = self.Text:GetText()
			abfOptions6Box8PopOut2.Text:SetText(self.Text:GetText())
			abfOptions6Box8PopOut2Choice0:Hide()
			if ABFactionBars["Bar6"]["BorderArtColorMode"] == "One Color" then
				if not abfOptions6Box9:IsShown() then abfOptions6Box9:Show() end
				if abfOptions6Box10:IsShown() then abfOptions6Box10:Hide() end
			elseif ABFactionBars["Bar6"]["BorderArtColorMode"] == "Gradient Color" then
				if abfOptions6Box9:IsShown() then abfOptions6Box9:Hide() end
				if not abfOptions6Box10:IsShown() then abfOptions6Box10:Show() end
			end
			abfSavedColorBorder("Bar6", MultiBar5)
		end
	end)
end
-- Options Box 9, Border Color One --
-- Box 9, Pop Out Button 1, Border Color One Choices --
-- enter --
abfOptions6Box9PopOut1:SetScript("OnEnter", function(self)
	abfEnteringMenus(self)
	GameTooltip:SetText("|T"..C_AddOns.GetAddOnMetadata("ABF", "IconTexture")..":16|t"..abfMainColor:WrapTextInColorCode(C_AddOns.GetAddOnMetadata("ABF", "Title")).."|nChoose the color for|nthe Border") 
end)
-- leave --
abfOptions6Box9PopOut1:SetScript("OnLeave", abfLeavingMenus)
-- drop down --
abfClickPopOut(abfOptions6Box9PopOut1, abfOptions6Box9PopOut1Choice0)
-- naming at Options 10 --
-- sort --
for i = 1, 3, 1 do
	_G["abfOptions6Box9PopOut1Choice"..i]:SetParent(abfOptions6Box9PopOut1Choice0)
	_G["abfOptions6Box9PopOut1Choice"..i]:SetPoint("TOP", _G["abfOptions6Box9PopOut1Choice"..i-1], "BOTTOM", 0, 0)
end
-- click --
for i = 0, 3, 1 do
	_G["abfOptions6Box9PopOut1Choice"..i]:HookScript("OnClick", function(self, button, down)
		if button == "LeftButton" and down == false then
			ABFactionBars["Bar6"]["BorderArtColorOptions"] = self.Text:GetText()
			abfOptions6Box9PopOut1.Text:SetText(self.Text:GetText())
			abfOptions6Box9PopOut1Choice0:Hide()
			if ABFactionBars["Bar6"]["BorderArtColorOptions"] == "Default Color" then
				ABFactionBars["Bar6"]["BorderArtColor"] = {r = 1, g = 1, b = 1, a = 1,}
			elseif ABFactionBars["Bar6"]["BorderArtColorOptions"] == "Class Color" then
				ABFactionBars["Bar6"]["BorderArtColor"] = CreateColor(abfClassColor:GetRGB())
			elseif ABFactionBars["Bar6"]["BorderArtColorOptions"] == "Faction Color" then
				ABFactionBars["Bar6"]["BorderArtColor"] = CreateColor(_G["PLAYER_FACTION_COLOR_"..string.upper(abfFaction.name)]:GetRGB())
			elseif ABFactionBars["Bar6"]["BorderArtColorOptions"] == "Custom Color" then
				abfShowColorPickerCD("Bar6", MultiBar5, "BorderArtColor", abfSavedColorBorder)
			end
			abfSavedColorBorder("Bar6", MultiBar5)
		end
	end)
end
-- Options Box 10, Border Color Gradient --
-- Box 10, Pop Out Button 1, Border Color Gradient One --
-- enter --
abfOptions6Box10PopOut1:SetScript("OnEnter", function(self)
	abfEnteringMenus(self)
	GameTooltip:SetText("|T"..C_AddOns.GetAddOnMetadata("ABF", "IconTexture")..":16|t"..abfMainColor:WrapTextInColorCode(C_AddOns.GetAddOnMetadata("ABF", "Title")).."|nChoose the first gradient|ncolor for the Border") 
end)
-- leave --
abfOptions6Box10PopOut1:SetScript("OnLeave", abfLeavingMenus)
-- drop down --
abfClickPopOut(abfOptions6Box10PopOut1, abfOptions6Box10PopOut1Choice0)
-- naming at Options 10 --
-- sort --
for i = 1, 3, 1 do
	_G["abfOptions6Box10PopOut1Choice"..i]:SetParent(abfOptions6Box10PopOut1Choice0)
	_G["abfOptions6Box10PopOut1Choice"..i]:SetPoint("TOP", _G["abfOptions6Box10PopOut1Choice"..i-1], "BOTTOM", 0, 0)
end
-- click --
for i = 0, 3, 1 do
	_G["abfOptions6Box10PopOut1Choice"..i]:HookScript("OnClick", function(self, button, down)
		if button == "LeftButton" and down == false then
			ABFactionBars["Bar6"]["BorderArtGradientOptions1"] = self.Text:GetText()
			abfOptions6Box10PopOut1.Text:SetText(self.Text:GetText())
			abfOptions6Box10PopOut1Choice0:Hide()
			if ABFactionBars["Bar6"]["BorderArtGradientOptions1"] == "Default Color" then
				ABFactionBars["Bar6"]["BorderArtGradient1"] = {r = 1, g = 1, b = 1, a = 1,}
			elseif ABFactionBars["Bar6"]["BorderArtGradientOptions1"] == "Class Color" then
				ABFactionBars["Bar6"]["BorderArtGradient1"] = CreateColor(abfClassColor:GetRGB())
			elseif ABFactionBars["Bar6"]["BorderArtGradientOptions1"] == "Faction Color" then
				ABFactionBars["Bar6"]["BorderArtGradient1"] = CreateColor(_G["PLAYER_FACTION_COLOR_"..string.upper(abfFaction.name)]:GetRGB())
			elseif ABFactionBars["Bar6"]["BorderArtGradientOptions1"] == "Custom Color" then
				abfShowColorPickerCD("Bar6", MultiBar5, "BorderArtGradient1", abfSavedColorBorder)
			end
			abfSavedColorBorder("Bar6", MultiBar5)
		end
	end)
end
-- Box 10, Pop Out Button 2, Border Color Gradient Two --
-- enter --
abfOptions6Box10PopOut2:SetScript("OnEnter", function(self)
	abfEnteringMenus(self)
	GameTooltip:SetText("|T"..C_AddOns.GetAddOnMetadata("ABF", "IconTexture")..":16|t"..abfMainColor:WrapTextInColorCode(C_AddOns.GetAddOnMetadata("ABF", "Title")).."|nChoose the first gradient|ncolor for the Border") 
end)
-- leave --
abfOptions6Box10PopOut2:SetScript("OnLeave", abfLeavingMenus)
-- drop down --
abfClickPopOut(abfOptions6Box10PopOut2, abfOptions6Box10PopOut2Choice0)
-- naming at Options 10 --
-- sort --
for i = 1, 3, 1 do
	_G["abfOptions6Box10PopOut2Choice"..i]:SetParent(abfOptions6Box10PopOut2Choice0)
	_G["abfOptions6Box10PopOut2Choice"..i]:SetPoint("TOP", _G["abfOptions6Box10PopOut2Choice"..i-1], "BOTTOM", 0, 0)
end
-- click --
for i = 0, 3, 1 do
	_G["abfOptions6Box10PopOut2Choice"..i]:HookScript("OnClick", function(self, button, down)
		if button == "LeftButton" and down == false then
			ABFactionBars["Bar6"]["BorderArtGradientOptions2"] = self.Text:GetText()
			abfOptions6Box10PopOut2.Text:SetText(self.Text:GetText())
			abfOptions6Box10PopOut2Choice0:Hide()
			if ABFactionBars["Bar6"]["BorderArtGradientOptions2"] == "Default Color" then
				ABFactionBars["Bar6"]["BorderArtGradient2"] = {r = 1, g = 1, b = 1, a = 1,}
			elseif ABFactionBars["Bar6"]["BorderArtGradientOptions2"] == "Class Color" then
				ABFactionBars["Bar6"]["BorderArtGradient2"] = CreateColor(abfClassColor:GetRGB())
			elseif ABFactionBars["Bar6"]["BorderArtGradientOptions2"] == "Faction Color" then
				ABFactionBars["Bar6"]["BorderArtGradient2"] = CreateColor(_G["PLAYER_FACTION_COLOR_"..string.upper(abfFaction.name)]:GetRGB())
			elseif ABFactionBars["Bar6"]["BorderArtGradientOptions2"] == "Custom Color" then
				abfShowColorPickerCD("Bar6", MultiBar5, "BorderArtGradient2", abfSavedColorBorder)
			end
			abfSavedColorBorder("Bar6", MultiBar5)
		end
	end)
end
-- Box 10, Pop Out Button 3, Border Color Gradient Orientation --
-- enter --
abfOptions6Box10PopOut3:SetScript("OnEnter", function(self)
	abfEnteringMenus(self)
	GameTooltip:SetText("|T"..C_AddOns.GetAddOnMetadata("ABF", "IconTexture")..":16|t"..abfMainColor:WrapTextInColorCode(C_AddOns.GetAddOnMetadata("ABF", "Title")).."|nChoose the orientation|nof the colors for the Barder") 
end)
-- leave --
abfOptions6Box10PopOut3:SetScript("OnLeave", abfLeavingMenus)
-- drop down --
abfClickPopOut(abfOptions6Box10PopOut3, abfOptions6Box10PopOut3Choice0)
-- sort --
abfOptions6Box10PopOut3Choice1:SetParent(abfOptions6Box10PopOut3Choice0)
abfOptions6Box10PopOut3Choice1:SetPoint("TOP", abfOptions6Box10PopOut3Choice0, "BOTTOM", 0, 0)
-- naming at Options 10 --
-- click --
for i = 0, 1, 1 do
	_G["abfOptions6Box10PopOut3Choice"..i]:HookScript("OnClick", function(self, button, down)
		if button == "LeftButton" and down == false then
			ABFactionBars["Bar6"]["BorderArtGradientOrientation"] = self.Text:GetText()
			abfOptions6Box10PopOut3.Text:SetText(self.Text:GetText())
			abfOptions6Box10PopOut3Choice0:Hide()
			abfSavedColorBorder("Bar6", MultiBar5)
		end
	end)
end
-- Showing the panel --
abfOptions6:HookScript("OnShow", function(self)
	CheckSavedVariables1()
	CheckSavedVariables2()
-- panels --
	for i = 1, 8, 1 do
		if _G["abfOptions"..i.."a"]:IsShown() then _G["abfOptions"..i.."a"]:Hide() end
	end
	for i = 1, 5, 1 do
		if _G["abfOptions"..i]:IsShown() then _G["abfOptions"..i]:Hide() end
	end
	for i = 7, 10, 1 do
		if _G["abfOptions"..i]:IsShown() then _G["abfOptions"..i]:Hide() end
	end
-- tabs --
	abfOptions00Tab6.Text:SetTextColor(abfHighColor:GetRGB())
	for i = 1, 5, 1 do
		_G["abfOptions00Tab"..i].Text:SetTextColor(abfMainColor:GetRGB())
	end
	for i = 7, 10, 1 do
		_G["abfOptions00Tab"..i].Text:SetTextColor(abfMainColor:GetRGB())
	end
-- buttons --
	if not abfOptions00PageButton1f:IsShown() then abfOptions00PageButton1f:Show() end
	if not abfOptions00PageButton2f:IsShown() then abfOptions00PageButton2f:Show() end
	for i = 1, 5, 1 do
		if i == 1 then k = "a"
		elseif i == 2 then k = "b"
		elseif i == 3 then k = "c"
		elseif i == 4 then k = "d"
		elseif i == 5 then k = "e"
		end
		if _G["abfOptions00PageButton1"..k]:IsShown() then _G["abfOptions00PageButton1"..k]:Hide() end
		if _G["abfOptions00PageButton2"..k]:IsShown() then _G["abfOptions00PageButton2"..k]:Hide() end
	end
	if abfOptions00PageButton1g:IsShown() then abfOptions00PageButton1g:Hide() end
	if abfOptions00PageButton2g:IsShown() then abfOptions00PageButton2g:Hide() end
	if abfOptions00PageButton1h:IsShown() then abfOptions00PageButton1h:Hide() end
	if abfOptions00PageButton2h:IsShown() then abfOptions00PageButton2h:Hide() end
	abfOptions00PageButton1f.Text:SetTextColor(abfHighColor:GetRGB())
	abfOptions00PageButton2f.Text:SetTextColor(abfMainColor:GetRGB())
end)
