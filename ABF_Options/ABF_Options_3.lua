-- takeing care the rest boxes --
abfOptions3Box00:SetPoint("TOPLEFT", abfOptions3Box1, "BOTTOMLEFT", 0, 0)
abfOptions3Box3:SetPoint("TOPRIGHT", abfOptions3Box2, "BOTTOMRIGHT", 0, 6)
abfOptions3Box4:SetPoint("TOPRIGHT", abfOptions3Box2, "BOTTOMRIGHT", 0, 6)
abfOptions3Box01:SetPoint("TOPRIGHT", abfOptions3Box4, "BOTTOMRIGHT", 0, 0)
abfOptions3Box5:SetPoint("TOPLEFT", abfOptions3Box00, "BOTTOMLEFT", 0, 0)
abfOptions3Box6:SetPoint("TOPLEFT", abfOptions3Box5, "BOTTOMLEFT", 0, 6)
abfOptions3Box7:SetPoint("TOPLEFT", abfOptions3Box5, "BOTTOMLEFT", 0, 6)
abfOptions3Box8:SetPoint("TOPRIGHT", abfOptions3Box01, "BOTTOMRIGHT", 0, 0)
abfOptions3Box9:SetPoint("TOPRIGHT", abfOptions3Box8, "BOTTOMRIGHT", 0, 6)
abfOptions3Box10:SetPoint("TOPRIGHT", abfOptions3Box8, "BOTTOMRIGHT", 0, 6)
abfOptions3Box2.BorderBottom:Hide()
abfOptions3Box3.BorderTop:Hide()
abfOptions3Box4.BorderTop:Hide()
abfOptions3Box5.BorderBottom:Hide()
abfOptions3Box6.BorderTop:Hide()
abfOptions3Box7.BorderTop:Hide()
abfOptions3Box8.BorderBottom:Hide()
abfOptions3Box9.BorderTop:Hide()
abfOptions3Box10.BorderTop:Hide()
-- naming --
abfOptions3Box1.TitleTxt:SetText("Texts Fonts & Cooldown Color")
abfOptions3Box2.TitleTxt:SetText("Slot Art & Color Mode")
abfOptions3Box3.TitleTxt:SetText("Slot Art One Color")
abfOptions3Box4.TitleTxt:SetText("Slot Art Gradient Color")
abfOptions3Box5.TitleTxt:SetText("Edge Art, Color Mode & Animation")
abfOptions3Box6.TitleTxt:SetText("Edge Art One Color")
abfOptions3Box7.TitleTxt:SetText("Edge Art Gradient Color")
abfOptions3Box8.TitleTxt:SetText("Border Visibility & Color Mode")
abfOptions3Box9.TitleTxt:SetText("Border One Color")
abfOptions3Box10.TitleTxt:SetText("Border Gradient Color")
-- Checking the Saved Variables --
local function CheckSavedVariables1()
-- Box 1, Pop out 1 --
	abfOptions3Box1PopOut1.Text:SetText(ABFactionBars["Bar3"]["HotKeyFonts"])
-- Box 1, Pop out 2 --
	abfOptions3Box1PopOut2.Text:SetText(ABFactionBars["Bar3"]["CountFonts"])
-- Box 1, Pop out 3 --
	abfOptions3Box1PopOut3.Text:SetText(ABFactionBars["Bar3"]["NameFonts"])
-- Box 1, Pop out 4 --
	abfOptions3Box1PopOut4.Text:SetText(ABFactionBars["Bar3"]["ColorCDoption"])
-- Box 2, Pop out 1 --
	abfOptions3Box2PopOut1.Text:SetText(ABFactionBars["Bar3"]["Slot"]["Art"])
-- Box 2, Pop out 2 --
	abfOptions3Box2PopOut2.Text:SetText(ABFactionBars["Bar3"]["Slot"]["ArtColorChoice"])
	if ABFactionBars["Bar3"]["Slot"]["ArtColorChoice"] == "One Color" then
		if not abfOptions3Box3:IsShown() then abfOptions3Box3:Show() end
		if abfOptions3Box4:IsShown() then abfOptions3Box4:Hide() end
	elseif ABFactionBars["Bar3"]["Slot"]["ArtColorChoice"] == "Gradient Color" then
		if not abfOptions3Box4:IsShown() then abfOptions3Box4:Show() end
		if abfOptions3Box3:IsShown() then abfOptions3Box3:Hide() end
	end
-- Box 3, Slider 1 --
	abfOptions3Box3Slider1.Slider:SetValue(ABFactionBars["Bar3"]["Slot"]["ArtColorDesaturation"] * 10)
-- Box 3, Pop out 1 --
	abfOptions3Box3PopOut1.Text:SetText(ABFactionBars["Bar3"]["Slot"]["ArtColorOptions"])
	if ABFactionBars["Bar3"]["Slot"]["ArtColorOptions"] == "Custom Color" then
		if not abfOptions3Box3Slider1:IsShown() then abfOptions3Box3Slider1:Show() end
	else
		if abfOptions3Box3Slider1:IsShown() then abfOptions3Box3Slider1:Hide() end
	end
-- Box 4, pop out 1 --
	abfOptions3Box4PopOut1.Text:SetText(ABFactionBars["Bar3"]["Slot"]["ArtGradientOptions1"])
-- Box 4, pop out 2 --
	abfOptions3Box4PopOut2.Text:SetText(ABFactionBars["Bar3"]["Slot"]["ArtGradientOptions2"])
-- Box 4, pop out 3 --
	abfOptions3Box4PopOut3.Text:SetText(ABFactionBars["Bar3"]["Slot"]["ArtGradientOrientation"])
-- Box 5,Pop out 1 --
	abfOptions3Box5PopOut1.Text:SetText(ABFactionBars["Bar3"]["Edge"]["Art"])
	if ABFactionBars["Bar3"]["Edge"]["Art"] == "Gryphon" or ABFactionBars["Bar3"]["Edge"]["Art"] == "Wyvern" then
		if not abfOptions3Box5PopOut3:IsShown() then abfOptions3Box5PopOut3:Show() end
		if not abfOptions3Box5PopOut4:IsShown() then abfOptions3Box5PopOut4:Show() end
	else
		if abfOptions3Box5PopOut3:IsShown() then abfOptions3Box5PopOut3:Hide() end
		if abfOptions3Box5PopOut4:IsShown() then abfOptions3Box5PopOut4:Hide() end
	end
-- Box 5, Pop out 2 --
	abfOptions3Box5PopOut2.Text:SetText(ABFactionBars["Bar3"]["Edge"]["ArtColorChoice"])
	if ABFactionBars["Bar3"]["Edge"]["ArtColorChoice"] == "One Color" then
		if not abfOptions3Box6:IsShown() then abfOptions3Box6:Show() end
		if abfOptions3Box7:IsShown() then abfOptions3Box7:Hide() end
	elseif ABFactionBars["Bar3"]["Edge"]["ArtColorChoice"] == "Gradient Color" then
		if not abfOptions3Box7:IsShown() then abfOptions3Box7:Show() end
		if abfOptions3Box6:IsShown() then abfOptions3Box6:Hide() end
	end
-- Box 5, Pop out 3 --
	if ABFactionBars["Bar3"]["Edge"]["Animation"] then
		abfOptions3Box5PopOut3.Text:SetText("Show")
	elseif not ABFactionBars["Bar3"]["Edge"]["Animation"] then
		abfOptions3Box5PopOut3.Text:SetText("Hide")
	end
-- Box 5, Pop out 4 --
	abfOptions3Box5PopOut4.Text:SetText(ABFactionBars["Bar3"]["Edge"]["AnimationColorOptions"])
end
local function CheckSavedVariables2()
-- Box 6, Slider 1 --
	if ABFactionBars["Bar3"]["Edge"]["ArtColorChoice"] == "One Color" then
		abfOptions3Box6Slider1:SetValue(ABFactionBars["Bar3"]["Edge"]["ArtColorDesaturation"] * 10)
	end
-- Box 6, Pop out 1 --
	abfOptions3Box6PopOut1.Text:SetText(ABFactionBars["Bar3"]["Edge"]["ArtColorOptions"])
	if ABFactionBars["Bar3"]["Edge"]["ArtColorOptions"] == "Custom Color" then
		if not abfOptions3Box6Slider1:IsShown() then abfOptions3Box6Slider1:Show() end
	else
		if abfOptions3Box6Slider1:IsShown() then abfOptions3Box6Slider1:Hide() end
	end
-- Box 7, pop out 1 --
	abfOptions3Box7PopOut1.Text:SetText(ABFactionBars["Bar3"]["Edge"]["ArtGradientOptions1"])
-- Box 7, pop out 2 --
	abfOptions3Box7PopOut2.Text:SetText(ABFactionBars["Bar3"]["Edge"]["ArtGradientOptions2"])
-- Box 7, pop out 3 --
	abfOptions3Box7PopOut3.Text:SetText(ABFactionBars["Bar3"]["Edge"]["ArtGradientOrientation"])
-- Box 8, Pop Out Button 1 --
	if ABFactionBars["Bar3"]["BorderVisibility"] then
		abfOptions3Box8PopOut1.Text:SetText("Show")
	elseif not ABFactionBars["Bar3"]["BorderVisibility"] then
		abfOptions3Box8PopOut1.Text:SetText("Hide")
	end
-- Box 8, Pop Out Button 2 --
	abfOptions3Box8PopOut2.Text:SetText(ABFactionBars["Bar3"]["BorderArtColorMode"])
	if ABFactionBars["Bar3"]["BorderArtColorMode"] == "One Color" then
		if not abfOptions3Box9:IsShown() then abfOptions3Box9:Show() end
		if abfOptions3Box10:IsShown() then abfOptions3Box10:Hide() end
	elseif ABFactionBars["Bar3"]["BorderArtColorMode"] == "Gradient Color" then
		if abfOptions3Box9:IsShown() then abfOptions3Box9:Hide() end
		if not abfOptions3Box10:IsShown() then abfOptions3Box10:Show() end
	end
-- Box 9, Pop Out Button 1 --
	abfOptions3Box9PopOut1.Text:SetText(ABFactionBars["Bar3"]["BorderArtColorOptions"])
-- Box 10, Pop Out Button 1 --
	abfOptions3Box10PopOut1.Text:SetText(ABFactionBars["Bar3"]["BorderArtGradientOptions1"])
-- Box 10, Pop Out Button 2 --
	abfOptions3Box10PopOut2.Text:SetText(ABFactionBars["Bar3"]["BorderArtGradientOptions2"])
-- Box 10, Pop Out Button 3 --
	abfOptions3Box10PopOut3.Text:SetText(ABFactionBars["Bar3"]["BorderArtGradientOrientation"])
end
-- Box 1, Texts Fonts & Cooldown Color --
-- Box 1, Pop Out Button 1, Hot Key Fonts --
-- enter --
abfOptions3Box1PopOut1:SetScript("OnEnter", function(self)
	abfEnteringMenus(self)
	GameTooltip:SetText("|T"..C_AddOns.GetAddOnMetadata("ABF", "IconTexture")..":16|t"..abfMainColor:WrapTextInColorCode(C_AddOns.GetAddOnMetadata("ABF", "Title")).."|nChoose fonts for|nthe Hot Key Text") 
end)
-- leave --
abfOptions3Box1PopOut1:SetScript("OnLeave", abfLeavingMenus)
-- drop down --
abfClickPopOut(abfOptions3Box1PopOut1, abfOptions3Box1PopOut1Choice0)
-- sort clicking --
for i = 1, 7, 1 do
	_G["abfOptions3Box1PopOut1Choice"..i]:SetParent(abfOptions3Box1PopOut1Choice0)
	_G["abfOptions3Box1PopOut1Choice"..i]:SetPoint("TOP", _G["abfOptions3Box1PopOut1Choice"..i-1], "BOTTOM", 0, 0)
end
-- naming at Options10 --
-- clicking --
for i = 0, 7, 1 do
	_G["abfOptions3Box1PopOut1Choice"..i]:HookScript("OnClick", function(self, button, down)
		if button == "LeftButton" and down == false then
			ABFactionBars["Bar3"]["HotKeyFonts"] = self.Text:GetText()
			abfOptions3Box1PopOut1.Text:SetText(self.Text:GetText())
			abfOptions3Box1PopOut1Choice0:Hide()
			abfSavedFonts("Bar3", MultiBarBottomRight)
		end
	end)
end
-- Box 1, Pop Out Button 2, Count Fonts --
-- enter --
abfOptions3Box1PopOut2:SetScript("OnEnter", function(self)
	abfEnteringMenus(self)
	GameTooltip:SetText("|T"..C_AddOns.GetAddOnMetadata("ABF", "IconTexture")..":16|t"..abfMainColor:WrapTextInColorCode(C_AddOns.GetAddOnMetadata("ABF", "Title")).."|nChoose fonts for|nthe Count Text") 
end)
-- leave --
abfOptions3Box1PopOut2:SetScript("OnLeave", abfLeavingMenus)
-- drop down --
abfClickPopOut(abfOptions3Box1PopOut2, abfOptions3Box1PopOut2Choice0)
-- sort clicking --
for i = 1, 7, 1 do
	_G["abfOptions3Box1PopOut2Choice"..i]:SetParent(abfOptions3Box1PopOut2Choice0)
	_G["abfOptions3Box1PopOut2Choice"..i]:SetPoint("TOP", _G["abfOptions3Box1PopOut2Choice"..i-1], "BOTTOM", 0, 0)
end
-- naming at Options10 --
-- clicking --
for i = 0, 7, 1 do
	_G["abfOptions3Box1PopOut2Choice"..i]:HookScript("OnClick", function(self, button, down)
		if button == "LeftButton" and down == false then
			ABFactionBars["Bar3"]["CountFonts"] = self.Text:GetText()
			abfOptions3Box1PopOut2.Text:SetText(self.Text:GetText())
			abfOptions3Box1PopOut2Choice0:Hide()
			abfSavedFonts("Bar3", MultiBarBottomRight)
		end
	end)
end
-- Box 1, Pop Out Button 3, Name Fonts --
-- enter --
abfOptions3Box1PopOut3:SetScript("OnEnter", function(self)
	abfEnteringMenus(self)
	GameTooltip:SetText("|T"..C_AddOns.GetAddOnMetadata("ABF", "IconTexture")..":16|t"..abfMainColor:WrapTextInColorCode(C_AddOns.GetAddOnMetadata("ABF", "Title")).."|nChoose fonts for|nthe Name Text") 
end)
-- leave --
abfOptions3Box1PopOut3:SetScript("OnLeave", abfLeavingMenus)
-- drop down --
abfClickPopOut(abfOptions3Box1PopOut3, abfOptions3Box1PopOut3Choice0)
-- sort clicking --
for i = 1, 7, 1 do
	_G["abfOptions3Box1PopOut3Choice"..i]:SetParent(abfOptions3Box1PopOut3Choice0)
	_G["abfOptions3Box1PopOut3Choice"..i]:SetPoint("TOP", _G["abfOptions3Box1PopOut3Choice"..i-1], "BOTTOM", 0, 0)
end
-- naming at Options10 --
-- clicking --
for i = 0, 7, 1 do
	_G["abfOptions3Box1PopOut3Choice"..i]:HookScript("OnClick", function(self, button, down)
		if button == "LeftButton" and down == false then
			ABFactionBars["Bar3"]["NameFonts"] = self.Text:GetText()
			abfOptions3Box1PopOut3.Text:SetText(self.Text:GetText())
			abfOptions3Box1PopOut3Choice0:Hide()
			abfSavedFonts("Bar3", MultiBarBottomRight)
		end
	end)
end
-- Box 1, Pop Out Button 4, Cooldown Color --
-- enter --
abfOptions3Box1PopOut4:SetScript("OnEnter", function(self)
	abfEnteringMenus(self)
	GameTooltip:SetText("|T"..C_AddOns.GetAddOnMetadata("ABF", "IconTexture")..":16|t"..abfMainColor:WrapTextInColorCode(C_AddOns.GetAddOnMetadata("ABF", "Title")).."|nChoose the color for|nthe Cooldown Swipe") 
end)
-- leave --
abfOptions3Box1PopOut4:SetScript("OnLeave", abfLeavingMenus)
-- drop down --
abfClickPopOut(abfOptions3Box1PopOut4, abfOptions3Box1PopOut4Choice0)
-- sort clicking --
for i = 1, 3, 1 do
	_G["abfOptions3Box1PopOut4Choice"..i]:SetParent(abfOptions3Box1PopOut4Choice0)
	_G["abfOptions3Box1PopOut4Choice"..i]:SetPoint("TOP", _G["abfOptions3Box1PopOut4Choice"..i-1], "BOTTOM", 0, 0)
end
-- naming at Options10 --
-- on click --
for i = 0, 3, 1 do
	_G["abfOptions3Box1PopOut4Choice"..i]:HookScript("OnClick", function(self, button, down)
		if button == "LeftButton" and down == false then
			ABFactionBars["Bar3"]["ColorCDoption"] = self.Text:GetText()
			abfOptions3Box1PopOut4.Text:SetText(self.Text:GetText())
			abfOptions3Box1PopOut4Choice0:Hide()
			if ABFactionBars["Bar3"]["ColorCDoption"] == "Default Color" then
				ABFactionBars["Bar3"]["ColorCD"] = {r = 0, g = 0, b = 0, a = 0.8,}
			elseif ABFactionBars["Bar3"]["ColorCDoption"] == "Class Color" then
				ABFactionBars["Bar3"]["ColorCD"] = CreateColor(abfClassColor:GetRGB())
			elseif ABFactionBars["Bar3"]["ColorCDoption"] == "Faction Color" then
				ABFactionBars["Bar3"]["ColorCD"] = CreateColor(abfFactionColor:GetRGB())
			elseif ABFactionBars["Bar3"]["ColorCDoption"] == "Custom Color" then
				abfShowColorPickerCD("Bar3", MultiBarBottomRight, "ColorCD", abfSavedCDcolor)
			end
			abfSavedCDcolor("Bar3", MultiBarBottomRight)
		end
	end)
end
-- Box 2 Slot Art --
-- pop out 1 Slot Art Choice --
-- enter --
abfOptions3Box2PopOut1:SetScript("OnEnter", function(self)
	abfEnteringMenus(self)
	GameTooltip:SetText("|T"..C_AddOns.GetAddOnMetadata("ABF", "IconTexture")..":16|t"..abfMainColor:WrapTextInColorCode(C_AddOns.GetAddOnMetadata("ABF", "Title")).."|nChoose the Slot Art for|nthe Action Bar 3") 
end)
-- leave --
abfOptions3Box2PopOut1:SetScript("OnLeave", abfLeavingMenus)
-- drop down --
abfClickPopOut(abfOptions3Box2PopOut1, abfOptions3Box2PopOut1Choice0)
-- sort clicking --
for i = 1, 6, 1 do
	_G["abfOptions3Box2PopOut1Choice"..i]:SetParent(abfOptions3Box2PopOut1Choice0)
	_G["abfOptions3Box2PopOut1Choice"..i]:SetPoint("TOP", _G["abfOptions3Box2PopOut1Choice"..i-1], "BOTTOM", 0, 0)
-- on leave --
	_G["abfOptions3Box2PopOut1Choice"..i]:HookScript("OnLeave", function(self) abfOptions3Box2PopOut1.Example:Hide() end)
end
-- naming at Options 10 --
-- clicking --
for i = 0, 6, 1 do
	_G["abfOptions3Box2PopOut1Choice"..i]:HookScript("OnClick", function(self, button, down)
		if button == "LeftButton" and down == false then
			ABFactionBars["Bar3"]["Slot"]["Art"] = self.Text:GetText()
			abfOptions3Box2PopOut1.Text:SetText(self.Text:GetText())
			abfOptions3Box2PopOut1Choice0:Hide()
			abfSavedArtSlot("Bar3", MultiBarBottomRight)
		end
	end)
end
-- entering the pop out buttons at Options 10 --
-- pop out 2 Slot Art Color Choice --
-- enter --
abfOptions3Box2PopOut2:SetScript("OnEnter", function(self)
	abfEnteringMenus(self)
	GameTooltip:SetText("|T"..C_AddOns.GetAddOnMetadata("ABF", "IconTexture")..":16|t"..abfMainColor:WrapTextInColorCode(C_AddOns.GetAddOnMetadata("ABF", "Title")).."|nChoose the mode color for|nthe Slot Art! (one color or gradient color)") 
end)
-- leave --
abfOptions3Box2PopOut2:SetScript("OnLeave", abfLeavingMenus)
-- drop down --
abfClickPopOut(abfOptions3Box2PopOut2, abfOptions3Box2PopOut2Choice0)
-- position --
abfOptions3Box2PopOut2Choice1:SetParent(abfOptions3Box2PopOut2Choice0)
abfOptions3Box2PopOut2Choice1:SetPoint("TOP", abfOptions3Box2PopOut2Choice0, "BOTTOM", 0, 0)
-- naming at Options 10 --
-- click --
for i = 0, 1, 1 do
	_G["abfOptions3Box2PopOut2Choice"..i]:HookScript("OnClick", function(self, button, down)
		if button == "LeftButton" and down == false then
			ABFactionBars["Bar3"]["Slot"]["ArtColorChoice"] = self.Text:GetText()
			abfOptions3Box2PopOut2.Text:SetText(self.Text:GetText())
			abfOptions3Box2PopOut2Choice0:Hide()
			if ABFactionBars["Bar3"]["Slot"]["ArtColorChoice"] == "One Color" then
				if not abfOptions3Box3:IsShown() then abfOptions3Box3:Show() end
				if abfOptions3Box4:IsShown() then abfOptions3Box4:Hide() end
				abfOptions3Box3Slider1:SetValue(ABFactionBars["Bar3"]["Slot"]["ArtColorDesaturation"] * 10)
			elseif ABFactionBars["Bar3"]["Slot"]["ArtColorChoice"] == "Gradient Color" then
				if not abfOptions3Box4:IsShown() then abfOptions3Box4:Show() end
				if abfOptions3Box3:IsShown() then abfOptions3Box3:Hide() end
			end
			abfSavedColorSlot("Bar3", MultiBarBottomRight)
		end
	end)
end
-- Box 3, color one --
-- Slider 1, Desaturation --
-- min max values --
abfOptions3Box3Slider1.MinText:SetText(0)
abfOptions3Box3Slider1.MaxText:SetText(1)
abfOptions3Box3Slider1.Slider:SetMinMaxValues(0, 10)
-- enter --
abfOptions3Box3Slider1.Slider:SetScript("OnEnter", function(self)
	abfEnteringMenus(self)
	GameTooltip:SetText("|T"..C_AddOns.GetAddOnMetadata("ABF", "IconTexture")..":16|t "..abfMainColor:WrapTextInColorCode(C_AddOns.GetAddOnMetadata("ABF", "Title")).."|nYou can also use your mousewheel|nor the buttons to the edge|nto change the value!") 
end)
-- leave --
abfOptions3Box3Slider1.Slider:SetScript("OnLeave", abfLeavingMenus)
-- on mouse wheel --
abfOptions3Box3Slider1.Slider:SetScript("OnMouseWheel", abfMouseWheelSlider)
-- On Value Changed --
abfOptions3Box3Slider1.Slider:SetScript("OnValueChanged", function (self, value, userInput)
	abfOptions3Box3Slider1.TopText:SetText("Desaturation of the Artwork: "..(self:GetValue()/10))
	ABFactionBars["Bar3"]["Slot"]["ArtColorDesaturation"] = self:GetValue()/10
	abfSavedColorSlot("Bar3", MultiBarBottomRight)
end)
-- pop out 1 color one choices --
-- enter --
abfOptions3Box3PopOut1:SetScript("OnEnter", function(self)
	abfEnteringMenus(self)
	GameTooltip:SetText("|T"..C_AddOns.GetAddOnMetadata("ABF", "IconTexture")..":16|t"..abfMainColor:WrapTextInColorCode(C_AddOns.GetAddOnMetadata("ABF", "Title")).."|nChoose the color for|nthe Slot Art") 
end)
-- leave --
abfOptions3Box3PopOut1:SetScript("OnLeave", abfLeavingMenus)
-- drop down --
abfClickPopOut(abfOptions3Box3PopOut1, abfOptions3Box3PopOut1Choice0)
-- sort --
for i = 1, 3, 1 do
	_G["abfOptions3Box3PopOut1Choice"..i]:SetParent(abfOptions3Box3PopOut1Choice0)
	_G["abfOptions3Box3PopOut1Choice"..i]:SetPoint("TOP", _G["abfOptions3Box3PopOut1Choice"..i-1], "BOTTOM", 0, 0)
end
-- naming at Options 10 --
-- click --
for i = 0, 3, 1 do
	_G["abfOptions3Box3PopOut1Choice"..i]:HookScript("OnClick", function(self, button, down)
		if button == "LeftButton" and down == false then
			ABFactionBars["Bar3"]["Slot"]["ArtColorOptions"] = self.Text:GetText()
			abfOptions3Box3PopOut1.Text:SetText(self.Text:GetText())
			abfOptions3Box3PopOut1Choice0:Hide()
			if ABFactionBars["Bar3"]["Slot"]["ArtColorOptions"] == "Default Color" then
				if abfOptions3Box3Slider1:IsShown() then abfOptions3Box3Slider1:Hide() end
				ABFactionBars["Bar3"]["Slot"]["ArtColor"] = {r = 1, g = 1, b = 1, a = 1,}
			elseif ABFactionBars["Bar3"]["Slot"]["ArtColorOptions"] == "Class Color" then
				if abfOptions3Box3Slider1:IsShown() then abfOptions3Box3Slider1:Hide() end
				ABFactionBars["Bar3"]["Slot"]["ArtColor"] = CreateColor(abfClassColor:GetRGB())
			elseif ABFactionBars["Bar3"]["Slot"]["ArtColorOptions"] == "Faction Color" then
				if abfOptions3Box3Slider1:IsShown() then abfOptions3Box3Slider1:Hide() end
				ABFactionBars["Bar3"]["Slot"]["ArtColor"] = CreateColor(abfFactionColor:GetRGB())
			elseif ABFactionBars["Bar3"]["Slot"]["ArtColorOptions"] == "Custom Color" then
				if not abfOptions3Box3Slider1:IsShown() then abfOptions3Box3Slider1:Show() end
				abfShowColorPicker("Bar3", MultiBarBottomRight, "Slot", abfSavedColorSlot, "ArtColor")
			end
			abfSavedColorSlot("Bar3", MultiBarBottomRight)
		end
	end)
end
-- Box 4, color Gradient --
-- pop out 1 color Gradient one choices --
-- enter --
abfOptions3Box4PopOut1:SetScript("OnEnter", function(self)
	abfEnteringMenus(self)
	GameTooltip:SetText("|T"..C_AddOns.GetAddOnMetadata("ABF", "IconTexture")..":16|t"..abfMainColor:WrapTextInColorCode(C_AddOns.GetAddOnMetadata("ABF", "Title")).."|nChoose the first gradient|ncolor for the Slot Art") 
end)
-- leave --
abfOptions3Box4PopOut1:SetScript("OnLeave", abfLeavingMenus)
-- drop down --
abfClickPopOut(abfOptions3Box4PopOut1, abfOptions3Box4PopOut1Choice0)
-- sort clicking --
for i = 1, 3, 1 do
	_G["abfOptions3Box4PopOut1Choice"..i]:SetParent(abfOptions3Box4PopOut1Choice0)
	_G["abfOptions3Box4PopOut1Choice"..i]:SetPoint("TOP", _G["abfOptions3Box4PopOut1Choice"..i-1], "BOTTOM", 0, 0)
end
-- naming at Options 10 --
-- click --
for i = 0, 3, 1 do
	_G["abfOptions3Box4PopOut1Choice"..i]:HookScript("OnClick", function(self, button, down)
		if button == "LeftButton" and down == false then
			ABFactionBars["Bar3"]["Slot"]["ArtGradientOptions1"] = self.Text:GetText()
			abfOptions3Box4PopOut1.Text:SetText(self.Text:GetText())
			abfOptions3Box4PopOut1Choice0:Hide()
			if ABFactionBars["Bar3"]["Slot"]["ArtGradientOptions1"] == "Default Color" then
				ABFactionBars["Bar3"]["Slot"]["ArtGradientColor1"] = {r = 1, g = 1, b = 1, a = 1,}
			elseif ABFactionBars["Bar3"]["Slot"]["ArtGradientOptions1"] == "Class Color" then
				ABFactionBars["Bar3"]["Slot"]["ArtGradientColor1"] = CreateColor(abfClassColor:GetRGB())
			elseif ABFactionBars["Bar3"]["Slot"]["ArtGradientOptions1"] == "Faction Color" then
				ABFactionBars["Bar3"]["Slot"]["ArtGradientColor1"] = CreateColor(abfFactionColor:GetRGB())
			elseif ABFactionBars["Bar3"]["Slot"]["ArtGradientOptions1"] == "Custom Color" then
				abfShowColorPicker("Bar3", MultiBarBottomRight, "Slot", abfSavedColorSlot, "ArtGradientColor1")
			end
			abfSavedColorSlot("Bar3", MultiBarBottomRight)
		end
	end)
end
-- pop out 2 color Gradient two choices --
-- enter --
abfOptions3Box4PopOut2:SetScript("OnEnter", function(self)
	abfEnteringMenus(self)
	GameTooltip:SetText("|T"..C_AddOns.GetAddOnMetadata("ABF", "IconTexture")..":16|t"..abfMainColor:WrapTextInColorCode(C_AddOns.GetAddOnMetadata("ABF", "Title")).."|nChoose the second gradient|ncolor for the Slot Art") 
end)
-- leave --
abfOptions3Box4PopOut2:SetScript("OnLeave", abfLeavingMenus)
-- drop down --
abfClickPopOut(abfOptions3Box4PopOut2, abfOptions3Box4PopOut2Choice0)
-- sort clicking --
for i = 1, 3, 1 do
	_G["abfOptions3Box4PopOut2Choice"..i]:SetParent(abfOptions3Box4PopOut2Choice0)
	_G["abfOptions3Box4PopOut2Choice"..i]:SetPoint("TOP", _G["abfOptions3Box4PopOut2Choice"..i-1], "BOTTOM", 0, 0)
end
-- naming at Options 10 --
-- click --
for i = 0, 3, 1 do
	_G["abfOptions3Box4PopOut2Choice"..i]:HookScript("OnClick", function(self, button, down)
		if button == "LeftButton" and down == false then
			ABFactionBars["Bar3"]["Slot"]["ArtGradientOptions2"] = self.Text:GetText()
			abfOptions3Box4PopOut2.Text:SetText(self.Text:GetText())
			abfOptions3Box4PopOut2Choice0:Hide()
			if ABFactionBars["Bar3"]["Slot"]["ArtGradientOptions2"] == "Default Color" then
				ABFactionBars["Bar3"]["Slot"]["ArtGradientColor2"] = {r = 1, g = 1, b = 1, a = 1,}
			elseif ABFactionBars["Bar3"]["Slot"]["ArtGradientOptions2"] == "Class Color" then
				ABFactionBars["Bar3"]["Slot"]["ArtGradientColor2"] = CreateColor(abfClassColor:GetRGB())
			elseif ABFactionBars["Bar3"]["Slot"]["ArtGradientOptions2"] == "Faction Color" then
				ABFactionBars["Bar3"]["Slot"]["ArtGradientColor2"] = CreateColor(abfFactionColor:GetRGB())
			elseif ABFactionBars["Bar3"]["Slot"]["ArtGradientOptions2"] == "Custom Color" then
				abfShowColorPicker("Bar3", MultiBarBottomRight, "Slot", abfSavedColorSlot, "ArtGradientColor2")
			end
			abfSavedColorSlot("Bar3", MultiBarBottomRight)
		end
	end)
end
-- pop out 3 color Gradient Orientation --
-- enter --
abfOptions3Box4PopOut3:SetScript("OnEnter", function(self)
	abfEnteringMenus(self)
	GameTooltip:SetText("|T"..C_AddOns.GetAddOnMetadata("ABF", "IconTexture")..":16|t"..abfMainColor:WrapTextInColorCode(C_AddOns.GetAddOnMetadata("ABF", "Title")).."|nChoose the orientation|nof the colors for the Slot Art") 
end)
-- leave --
abfOptions3Box4PopOut3:SetScript("OnLeave", abfLeavingMenus)
-- drop down --
abfClickPopOut(abfOptions3Box4PopOut3, abfOptions3Box4PopOut3Choice0)
-- sort --
abfOptions3Box4PopOut3Choice1:SetParent(abfOptions3Box4PopOut3Choice0)
abfOptions3Box4PopOut3Choice1:SetPoint("TOP", abfOptions3Box4PopOut3Choice0, "BOTTOM", 0, 0)
-- naming at Options 10 --
-- click --
for i = 0, 1, 1 do
	_G["abfOptions3Box4PopOut3Choice"..i]:HookScript("OnClick", function(self, button, down)
		if button == "LeftButton" and down == false then
			ABFactionBars["Bar3"]["Slot"]["ArtGradientOrientation"] = self.Text:GetText()
			abfOptions3Box4PopOut3.Text:SetText(self.Text:GetText())
			abfOptions3Box4PopOut3Choice0:Hide()
			abfSavedColorSlot("Bar3", MultiBarBottomRight)
		end
	end)
end
-- Box 5 Edge Art --
-- pop out 1 Edge Art Choice --
-- enter --
abfOptions3Box5PopOut1:SetScript("OnEnter", function(self)
	abfEnteringMenus(self)
	GameTooltip:SetText("|T"..C_AddOns.GetAddOnMetadata("ABF", "IconTexture")..":16|t"..abfMainColor:WrapTextInColorCode(C_AddOns.GetAddOnMetadata("ABF", "Title")).."|nChoose the Edge Art for|nthe Action Bar 3") 
end)
-- leave --
abfOptions3Box5PopOut1:SetScript("OnLeave", abfLeavingMenus)
-- drop down --
abfClickPopOut(abfOptions3Box5PopOut1, abfOptions3Box5PopOut1Choice0)
-- sort clicking --
for i = 1, 4, 1 do
	_G["abfOptions3Box5PopOut1Choice"..i]:SetParent(abfOptions3Box5PopOut1Choice0)
	_G["abfOptions3Box5PopOut1Choice"..i]:SetPoint("TOP", _G["abfOptions3Box5PopOut1Choice"..i-1], "BOTTOM", 0, 0)
-- on leave --
	_G["abfOptions3Box5PopOut1Choice"..i]:HookScript("OnLeave", function(self) abfOptions3Box5PopOut1.Example:Hide() end)
end
-- naming at Options 10 --
-- clicking --
for i = 0, 4, 1 do
	_G["abfOptions3Box5PopOut1Choice"..i]:HookScript("OnClick", function(self, button, down)
		if button == "LeftButton" and down == false then
			ABFactionBars["Bar3"]["Edge"]["Art"] = self.Text:GetText()
			abfOptions3Box5PopOut1.Text:SetText(self.Text:GetText())
			abfOptions3Box5PopOut1Choice0:Hide()
			if ABFactionBars["Bar3"]["Edge"]["Art"] == "Gryphon" or ABFactionBars["Bar3"]["Edge"]["Art"] == "Wyvern" then
				if not abfOptions3Box5PopOut3:IsShown() then abfOptions3Box5PopOut3:Show() end
				if not abfOptions3Box5PopOut4:IsShown() then abfOptions3Box5PopOut4:Show() end
			else
				if abfOptions3Box5PopOut3:IsShown() then abfOptions3Box5PopOut3:Hide() end
				if abfOptions3Box5PopOut4:IsShown() then abfOptions3Box5PopOut4:Hide() end
			end
			abfSavedArtEdge("Bar3", MultiBarBottomRight)
			abfSavedEdgeArtAnimation("Bar3", MultiBarBottomRight)
		end
	end)
end
-- entering the pop out buttons at Options 10 --
-- pop out 2 Edge Art Color Choice --
-- enter --
abfOptions3Box5PopOut2:SetScript("OnEnter", function(self)
	abfEnteringMenus(self)
	GameTooltip:SetText("|T"..C_AddOns.GetAddOnMetadata("ABF", "IconTexture")..":16|t"..abfMainColor:WrapTextInColorCode(C_AddOns.GetAddOnMetadata("ABF", "Title")).."|nChoose the mode color for|nthe Edge Art! (one color or gradient color)") 
end)
-- leave --
abfOptions3Box5PopOut2:SetScript("OnLeave", abfLeavingMenus)
-- drop down --
abfClickPopOut(abfOptions3Box5PopOut2, abfOptions3Box5PopOut2Choice0)
-- position --
abfOptions3Box5PopOut2Choice1:SetParent(abfOptions3Box5PopOut2Choice0)
abfOptions3Box5PopOut2Choice1:SetPoint("TOP", abfOptions3Box5PopOut2Choice0, "BOTTOM", 0, 0)
-- naming at Options 10 --
-- click --
for i = 0, 1, 1 do
	_G["abfOptions3Box5PopOut2Choice"..i]:HookScript("OnClick", function(self, button, down)
		if button == "LeftButton" and down == false then
			ABFactionBars["Bar3"]["Edge"]["ArtColorChoice"] = self.Text:GetText()
			abfOptions3Box5PopOut2.Text:SetText(self.Text:GetText())
			abfOptions3Box5PopOut2Choice0:Hide()
			if ABFactionBars["Bar3"]["Edge"]["ArtColorChoice"] == "One Color" then
				if not abfOptions3Box6:IsShown() then abfOptions3Box6:Show() end
				if abfOptions3Box7:IsShown() then abfOptions3Box7:Hide() end
				abfOptions3Box6Slider1:SetValue(ABFactionBars["Bar3"]["Edge"]["ArtColorDesaturation"] * 10)
			elseif ABFactionBars["Bar3"]["Edge"]["ArtColorChoice"] == "Gradient Color" then
				if not abfOptions3Box7:IsShown() then abfOptions3Box7:Show() end
				if abfOptions3Box6:IsShown() then abfOptions3Box6:Hide() end
			end
			abfSavedColorEdge("Bar3", MultiBarBottomRight)
			abfSavedEdgeArtAnimation("Bar3", MultiBarBottomRight)
		end
	end)
end
-- Box 5, Pop Out Button 3, Edge Art Animation --
-- enter --
abfOptions3Box5PopOut3:SetScript("OnEnter", function(self)
	abfEnteringMenus(self)
	GameTooltip:SetText("|T"..C_AddOns.GetAddOnMetadata("ABF", "IconTexture")..":16|t"..abfMainColor:WrapTextInColorCode(C_AddOns.GetAddOnMetadata("ABF", "Title")).."|nWhould you like the animation|nfor the Edge Art to be shown?") 
end)
-- leave --
abfOptions3Box5PopOut3:SetScript("OnLeave", abfLeavingMenus)
-- drop down --
abfClickPopOut(abfOptions3Box5PopOut3, abfOptions3Box5PopOut3Choice0)
-- naming at Options 10 --
-- sorting --
abfOptions3Box5PopOut3Choice1:SetParent(abfOptions3Box5PopOut3Choice0)
abfOptions3Box5PopOut3Choice1:SetPoint("TOP", abfOptions3Box5PopOut3Choice0, "BOTTOM", 0, 0)
-- click --
for i = 0, 1, 1 do
	_G["abfOptions3Box5PopOut3Choice"..i]:HookScript("OnClick", function(self, button, down)
		if button == "LeftButton" and down == false then
			abfOptions3Box5PopOut3.Text:SetText(self.Text:GetText())
			abfOptions3Box5PopOut3Choice0:Hide()
			if self.Text:GetText() == "Hide" then
				ABFactionBars["Bar3"]["Edge"]["Animation"] = false
			elseif self.Text:GetText() == "Show" then
				ABFactionBars["Bar3"]["Edge"]["Animation"] = true
			end
			abfSavedEdgeArtAnimation("Bar3", MultiBarBottomRight)
		end
	end)
end
-- Box 5, Pop Out Button 4, Edge Art Animation Color --
-- enter --
abfOptions3Box5PopOut4:SetScript("OnEnter", function(self)
	abfEnteringMenus(self)
	GameTooltip:SetText("|T"..C_AddOns.GetAddOnMetadata("ABF", "IconTexture")..":16|t"..abfMainColor:WrapTextInColorCode(C_AddOns.GetAddOnMetadata("ABF", "Title")).."|nChoose the color for the animation") 
end)
-- leave --
abfOptions3Box5PopOut4:SetScript("OnLeave", abfLeavingMenus)
-- drop down --
abfClickPopOut(abfOptions3Box5PopOut4, abfOptions3Box5PopOut4Choice0)
-- naming at Options 10 --
-- sorting --
for i = 1, 3, 1 do
	_G["abfOptions3Box5PopOut4Choice"..i]:SetParent(abfOptions3Box5PopOut4Choice0)
	_G["abfOptions3Box5PopOut4Choice"..i]:SetPoint("TOP", _G["abfOptions3Box5PopOut4Choice"..i-1], "BOTTOM", 0, 0)
end
-- click --
for i = 0, 3, 1 do
	_G["abfOptions3Box5PopOut4Choice"..i]:HookScript("OnClick", function(self, button, down)
		if button == "LeftButton" and down == false then
			ABFactionBars["Bar3"]["Edge"]["AnimationColorOptions"] = self.Text:GetText()
			abfOptions3Box5PopOut4.Text:SetText(self.Text:GetText())
			abfOptions3Box5PopOut4Choice0:Hide()
			if ABFactionBars["Bar3"]["Edge"]["AnimationColorOptions"] == "Default Color" then
				ABFactionBars["Bar3"]["Edge"]["AnimationColor"] = {r = 1, g = 1, b = 1, a = 1}
			elseif ABFactionBars["Bar3"]["Edge"]["AnimationColorOptions"] == "Class Color" then
				ABFactionBars["Bar3"]["Edge"]["AnimationColor"] = CreateColor(abfClassColor:GetRGB())
			elseif ABFactionBars["Bar3"]["Edge"]["AnimationColorOptions"] == "Faction Color" then
				ABFactionBars["Bar3"]["Edge"]["AnimationColor"] = CreateColor(abfFactionColor:GetRGB())
			elseif ABFactionBars["Bar3"]["Edge"]["AnimationColorOptions"] == "Custom Color" then
				abfShowColorPicker("Bar3", MultiBarBottomRight, "Edge", abfSavedEdgeArtAnimation, "AnimationColor")
			end
			abfSavedEdgeArtAnimation("Bar3", MultiBarBottomRight)
		end
	end)
end
-- Box 6, color one --
-- Slider 1, Desaturation --
-- min max values --
abfOptions3Box6Slider1.MinText:SetText(0)
abfOptions3Box6Slider1.MaxText:SetText(1)
abfOptions3Box6Slider1.Slider:SetMinMaxValues(0, 10)
-- enter --
abfOptions3Box6Slider1.Slider:SetScript("OnEnter", function(self)
	abfEnteringMenus(self)
	GameTooltip:SetText("|T"..C_AddOns.GetAddOnMetadata("ABF", "IconTexture")..":16|t "..abfMainColor:WrapTextInColorCode(C_AddOns.GetAddOnMetadata("ABF", "Title")).."|nYou can also use your mousewheel|nor the buttons to the edge|nto change the value!") 
end)
-- leave --
abfOptions3Box6Slider1.Slider:SetScript("OnLeave", abfLeavingMenus)
-- on mouse wheel --
abfOptions3Box6Slider1.Slider:SetScript("OnMouseWheel", abfMouseWheelSlider)
-- On Value Changed --
abfOptions3Box6Slider1.Slider:SetScript("OnValueChanged", function (self, value, userInput)
	abfOptions3Box6Slider1.TopText:SetText("Desaturation of the Artwork: "..(self:GetValue()/10))
	ABFactionBars["Bar3"]["Edge"]["ArtColorDesaturation"] = self:GetValue()/10
	abfSavedColorEdge("Bar3", MultiBarBottomRight)
end)
-- pop out 1 color one choices --
-- enter --
abfOptions3Box6PopOut1:SetScript("OnEnter", function(self)
	abfEnteringMenus(self)
	GameTooltip:SetText("|T"..C_AddOns.GetAddOnMetadata("ABF", "IconTexture")..":16|t"..abfMainColor:WrapTextInColorCode(C_AddOns.GetAddOnMetadata("ABF", "Title")).."|nChoose the color for|nthe Edge Art") 
end)
-- leave --
abfOptions3Box6PopOut1:SetScript("OnLeave", abfLeavingMenus)
-- drop down --
abfClickPopOut(abfOptions3Box6PopOut1, abfOptions3Box6PopOut1Choice0)
-- sort clicking --
for i = 1, 3, 1 do
	_G["abfOptions3Box6PopOut1Choice"..i]:SetParent(abfOptions3Box6PopOut1Choice0)
	_G["abfOptions3Box6PopOut1Choice"..i]:SetPoint("TOP", _G["abfOptions3Box6PopOut1Choice"..i-1], "BOTTOM", 0, 0)
end
-- naming at Options 10 --
-- click --
for i = 0, 3, 1 do
	_G["abfOptions3Box6PopOut1Choice"..i]:HookScript("OnClick", function(self, button, down)
		if button == "LeftButton" and down == false then
			ABFactionBars["Bar3"]["Edge"]["ArtColorOptions"] = self.Text:GetText()
			abfOptions3Box6PopOut1.Text:SetText(self.Text:GetText())
			abfOptions3Box6PopOut1Choice0:Hide()
			if ABFactionBars["Bar3"]["Edge"]["ArtColorOptions"] == "Default Color" then
				ABFactionBars["Bar3"]["Edge"]["ArtColor"] = {r = 1, g = 1, b = 1, a = 1,}
				if abfOptions3Box6Slider1:IsShown() then abfOptions3Box6Slider1:Hide() end
			elseif ABFactionBars["Bar3"]["Edge"]["ArtColorOptions"] == "Class Color" then
				ABFactionBars["Bar3"]["Edge"]["ArtColor"] = CreateColor(abfClassColor:GetRGB())
				if abfOptions3Box6Slider1:IsShown() then abfOptions3Box6Slider1:Hide() end
			elseif ABFactionBars["Bar3"]["Edge"]["ArtColorOptions"] == "Faction Color" then
				ABFactionBars["Bar3"]["Edge"]["ArtColor"] = CreateColor(abfFactionColor:GetRGB())
				if abfOptions3Box6Slider1:IsShown() then abfOptions3Box6Slider1:Hide() end
			elseif ABFactionBars["Bar3"]["Edge"]["ArtColorOptions"] == "Custom Color" then
				abfShowColorPicker("Bar3", MultiBarBottomRight, "Edge", abfSavedColorEdge, "ArtColor")
				if not abfOptions3Box6Slider1:IsShown() then abfOptions3Box6Slider1:Show() end
			end
			abfSavedColorEdge("Bar3", MultiBarBottomRight)
			abfSavedEdgeArtAnimation("Bar3", MultiBarBottomRight)
		end
	end)
end
-- Box 7, color Gradient --
-- pop out 1 color Gradient one choices --
-- enter --
abfOptions3Box7PopOut1:SetScript("OnEnter", function(self)
	abfEnteringMenus(self)
	GameTooltip:SetText("|T"..C_AddOns.GetAddOnMetadata("ABF", "IconTexture")..":16|t"..abfMainColor:WrapTextInColorCode(C_AddOns.GetAddOnMetadata("ABF", "Title")).."|nChoose the first gradient|ncolor for the Edge Art") 
end)
-- leave --
abfOptions3Box7PopOut1:SetScript("OnLeave", abfLeavingMenus)
-- drop down --
abfClickPopOut(abfOptions3Box7PopOut1, abfOptions3Box7PopOut1Choice0)
-- sort clicking --
for i = 1, 3, 1 do
	_G["abfOptions3Box7PopOut1Choice"..i]:SetParent(abfOptions3Box7PopOut1Choice0)
	_G["abfOptions3Box7PopOut1Choice"..i]:SetPoint("TOP", _G["abfOptions3Box7PopOut1Choice"..i-1], "BOTTOM", 0, 0)
end
-- naming at Options 10 --
-- click --
for i = 0, 3, 1 do
	_G["abfOptions3Box7PopOut1Choice"..i]:HookScript("OnClick", function(self, button, down)
		if button == "LeftButton" and down == false then
			ABFactionBars["Bar3"]["Edge"]["ArtGradientOptions1"] = self.Text:GetText()
			abfOptions3Box7PopOut1.Text:SetText(self.Text:GetText())
			abfOptions3Box7PopOut1Choice0:Hide()
			if ABFactionBars["Bar3"]["Edge"]["ArtGradientOptions1"] == "Default Color" then
				ABFactionBars["Bar3"]["Edge"]["ArtGradientColor1"] = {r = 1, g = 1, b = 1, a = 1,}
			elseif ABFactionBars["Bar3"]["Edge"]["ArtGradientOptions1"] == "Class Color" then
				ABFactionBars["Bar3"]["Edge"]["ArtGradientColor1"] = CreateColor(abfClassColor:GetRGB())
			elseif ABFactionBars["Bar3"]["Edge"]["ArtGradientOptions1"] == "Faction Color" then
				ABFactionBars["Bar3"]["Edge"]["ArtGradientColor1"] = CreateColor(abfFactionColor:GetRGB())
			elseif ABFactionBars["Bar3"]["Edge"]["ArtGradientOptions1"] == "Custom Color" then
				abfShowColorPicker("Bar3", MultiBarBottomRight, "Edge", abfSavedColorEdge, "ArtGradientColor1")
			end
			abfSavedColorEdge("Bar3", MultiBarBottomRight)
			abfSavedEdgeArtAnimation("Bar3", MultiBarBottomRight)
		end
	end)
end
-- pop out 2 color Gradient two choices --
-- enter --
abfOptions3Box7PopOut2:SetScript("OnEnter", function(self)
	abfEnteringMenus(self)
	GameTooltip:SetText("|T"..C_AddOns.GetAddOnMetadata("ABF", "IconTexture")..":16|t"..abfMainColor:WrapTextInColorCode(C_AddOns.GetAddOnMetadata("ABF", "Title")).."|nChoose the second gradient|ncolor for the Edge Art") 
end)
-- leave --
abfOptions3Box7PopOut2:SetScript("OnLeave", abfLeavingMenus)
-- drop down --
abfClickPopOut(abfOptions3Box7PopOut2, abfOptions3Box7PopOut2Choice0)
-- sort clicking --
for i = 1, 3, 1 do
	_G["abfOptions3Box7PopOut2Choice"..i]:SetParent(abfOptions3Box7PopOut2Choice0)
	_G["abfOptions3Box7PopOut2Choice"..i]:SetPoint("TOP", _G["abfOptions3Box7PopOut2Choice"..i-1], "BOTTOM", 0, 0)
end
-- naming at Options 10 --
-- click --
for i = 0, 3, 1 do
	_G["abfOptions3Box7PopOut2Choice"..i]:HookScript("OnClick", function(self, button, down)
		if button == "LeftButton" and down == false then
			ABFactionBars["Bar3"]["Edge"]["ArtGradientOptions2"] = self.Text:GetText()
			abfOptions3Box7PopOut2.Text:SetText(self.Text:GetText())
			abfOptions3Box7PopOut2Choice0:Hide()
			if ABFactionBars["Bar3"]["Edge"]["ArtGradientOptions2"] == "Default Color" then
				ABFactionBars["Bar3"]["Edge"]["ArtGradientColor2"] = {r = 1, g = 1, b = 1, a = 1,}
			elseif ABFactionBars["Bar3"]["Edge"]["ArtGradientOptions2"] == "Class Color" then
				ABFactionBars["Bar3"]["Edge"]["ArtGradientColor2"] = CreateColor(abfClassColor:GetRGB())
			elseif ABFactionBars["Bar3"]["Edge"]["ArtGradientOptions2"] == "Faction Color" then
				ABFactionBars["Bar3"]["Edge"]["ArtGradientColor2"] = CreateColor(abfFactionColor:GetRGB())
			elseif ABFactionBars["Bar3"]["Edge"]["ArtGradientOptions2"] == "Custom Color" then
				abfShowColorPicker("Bar3", MultiBarBottomRight, "Edge", abfSavedColorEdge, "ArtGradientColor2")
			end
			abfSavedColorEdge("Bar3", MultiBarBottomRight)
			abfSavedEdgeArtAnimation("Bar3", MultiBarBottomRight)
		end
	end)
end
-- pop out 3 color Gradient Orientation --
-- enter --
abfOptions3Box7PopOut3:SetScript("OnEnter", function(self)
	abfEnteringMenus(self)
	GameTooltip:SetText("|T"..C_AddOns.GetAddOnMetadata("ABF", "IconTexture")..":16|t"..abfMainColor:WrapTextInColorCode(C_AddOns.GetAddOnMetadata("ABF", "Title")).."|nChoose the orientation|nof the colors for the Edge Art") 
end)
-- leave --
abfOptions3Box7PopOut3:SetScript("OnLeave", abfLeavingMenus)
-- drop down --
abfClickPopOut(abfOptions3Box7PopOut3, abfOptions3Box7PopOut3Choice0)
-- sort clicking --
abfOptions3Box7PopOut3Choice1:SetParent(abfOptions3Box7PopOut3Choice0)
abfOptions3Box7PopOut3Choice1:SetPoint("TOP", abfOptions3Box7PopOut3Choice0, "BOTTOM", 0, 0)
-- naming at Options 10 --
-- click --
for i = 0, 1, 1 do
	_G["abfOptions3Box7PopOut3Choice"..i]:HookScript("OnClick", function(self, button, down)
		if button == "LeftButton" and down == false then
			ABFactionBars["Bar3"]["Edge"]["ArtGradientOrientation"] = self.Text:GetText()
			abfOptions3Box7PopOut3.Text:SetText(self.Text:GetText())
			abfOptions3Box7PopOut3Choice0:Hide()
			abfSavedColorEdge("Bar3", MultiBarBottomRight)
			abfSavedEdgeArtAnimation("Bar3", MultiBarBottomRight)
		end
	end)
end
-- Options Box 8, Border --
-- Box 8, Pop Out Button 1, Border Visibility --
-- enter --
abfOptions3Box8PopOut1:SetScript("OnEnter", function(self)
	abfEnteringMenus(self)
	GameTooltip:SetText("|T"..C_AddOns.GetAddOnMetadata("ABF", "IconTexture")..":16|t"..abfMainColor:WrapTextInColorCode(C_AddOns.GetAddOnMetadata("ABF", "Title")).."|nWhould you like the border of|nthe actionbar 3 to be shown?") 
end)
-- leave --
abfOptions3Box8PopOut1:SetScript("OnLeave", abfLeavingMenus)
-- drop down --
abfClickPopOut(abfOptions3Box8PopOut1, abfOptions3Box8PopOut1Choice0)
-- naming at Options 10 --
-- sort --
abfOptions3Box8PopOut1Choice1:SetParent(abfOptions3Box8PopOut1Choice0)
abfOptions3Box8PopOut1Choice1:SetPoint("TOP", abfOptions3Box8PopOut1Choice0, "BOTTOM", 0, 0)
-- click --
for i = 0, 1, 1 do
	_G["abfOptions3Box8PopOut1Choice"..i]:HookScript("OnClick", function(self, button, down)
		if button == "LeftButton" and down == false then
			abfOptions3Box8PopOut1.Text:SetText(self.Text:GetText())
			abfOptions3Box8PopOut1Choice0:Hide()
			if self.Text:GetText() == "Hide" then
				ABFactionBars["Bar3"]["BorderVisibility"] = false
			elseif self.Text:GetText() == "Show" then
				ABFactionBars["Bar3"]["BorderVisibility"] = true
			end
			abfSavedArtBorder("Bar3", MultiBarBottomRight)
		end
	end)
end
-- Box 8, Pop Out Button 2, Border Color Choice --
-- enter --
abfOptions3Box8PopOut2:SetScript("OnEnter", function(self)
	abfEnteringMenus(self)
	GameTooltip:SetText("|T"..C_AddOns.GetAddOnMetadata("ABF", "IconTexture")..":16|t"..abfMainColor:WrapTextInColorCode(C_AddOns.GetAddOnMetadata("ABF", "Title")).."|nChoose the mode color for|nthe Border! (one color or gradient color)") 
end)
-- leave --
abfOptions3Box8PopOut2:SetScript("OnLeave", abfLeavingMenus)
-- drop down --
abfClickPopOut(abfOptions3Box8PopOut2, abfOptions3Box8PopOut2Choice0)
-- naming at Options 10 --
-- sort --
abfOptions3Box8PopOut2Choice1:SetParent(abfOptions3Box8PopOut2Choice0)
abfOptions3Box8PopOut2Choice1:SetPoint("TOP", abfOptions3Box8PopOut2Choice0, "BOTTOM", 0, 0)
-- click --
for i = 0, 1, 1 do
	_G["abfOptions3Box8PopOut2Choice"..i]:HookScript("OnClick", function(self, button, down)
		if button == "LeftButton" and down == false then
			ABFactionBars["Bar3"]["BorderArtColorMode"] = self.Text:GetText()
			abfOptions3Box8PopOut2.Text:SetText(self.Text:GetText())
			abfOptions3Box8PopOut2Choice0:Hide()
			if ABFactionBars["Bar3"]["BorderArtColorMode"] == "One Color" then
				if not abfOptions3Box9:IsShown() then abfOptions3Box9:Show() end
				if abfOptions3Box10:IsShown() then abfOptions3Box10:Hide() end
			elseif ABFactionBars["Bar3"]["BorderArtColorMode"] == "Gradient Color" then
				if abfOptions3Box9:IsShown() then abfOptions3Box9:Hide() end
				if not abfOptions3Box10:IsShown() then abfOptions3Box10:Show() end
			end
			abfSavedColorBorder("Bar3", MultiBarBottomRight)
		end
	end)
end
-- Options Box 9, Border Color One --
-- Box 9, Pop Out Button 1, Border Color One Choices --
-- enter --
abfOptions3Box9PopOut1:SetScript("OnEnter", function(self)
	abfEnteringMenus(self)
	GameTooltip:SetText("|T"..C_AddOns.GetAddOnMetadata("ABF", "IconTexture")..":16|t"..abfMainColor:WrapTextInColorCode(C_AddOns.GetAddOnMetadata("ABF", "Title")).."|nChoose the color for|nthe Border") 
end)
-- leave --
abfOptions3Box9PopOut1:SetScript("OnLeave", abfLeavingMenus)
-- drop down --
abfClickPopOut(abfOptions3Box9PopOut1, abfOptions3Box9PopOut1Choice0)
-- naming at Options 10 --
-- sort --
for i = 1, 3, 1 do
	_G["abfOptions3Box9PopOut1Choice"..i]:SetParent(abfOptions3Box9PopOut1Choice0)
	_G["abfOptions3Box9PopOut1Choice"..i]:SetPoint("TOP", _G["abfOptions3Box9PopOut1Choice"..i-1], "BOTTOM", 0, 0)
end
-- click --
for i = 0, 3, 1 do
	_G["abfOptions3Box9PopOut1Choice"..i]:HookScript("OnClick", function(self, button, down)
		if button == "LeftButton" and down == false then
			ABFactionBars["Bar3"]["BorderArtColorOptions"] = self.Text:GetText()
			abfOptions3Box9PopOut1.Text:SetText(self.Text:GetText())
			abfOptions3Box9PopOut1Choice0:Hide()
			if ABFactionBars["Bar3"]["BorderArtColorOptions"] == "Default Color" then
				ABFactionBars["Bar3"]["BorderArtColor"] = {r = 1, g = 1, b = 1, a = 1,}
			elseif ABFactionBars["Bar3"]["BorderArtColorOptions"] == "Class Color" then
				ABFactionBars["Bar3"]["BorderArtColor"] = CreateColor(abfClassColor:GetRGB())
			elseif ABFactionBars["Bar3"]["BorderArtColorOptions"] == "Faction Color" then
				ABFactionBars["Bar3"]["BorderArtColor"] = CreateColor(abfFactionColor:GetRGB())
			elseif ABFactionBars["Bar3"]["BorderArtColorOptions"] == "Custom Color" then
				abfShowColorPickerCD("Bar3", MultiBarBottomRight, "BorderArtColor", abfSavedColorBorder)
			end
			abfSavedColorBorder("Bar3", MultiBarBottomRight)
		end
	end)
end
-- Options Box 10, Border Color Gradient --
-- Box 10, Pop Out Button 1, Border Color Gradient One --
-- enter --
abfOptions3Box10PopOut1:SetScript("OnEnter", function(self)
	abfEnteringMenus(self)
	GameTooltip:SetText("|T"..C_AddOns.GetAddOnMetadata("ABF", "IconTexture")..":16|t"..abfMainColor:WrapTextInColorCode(C_AddOns.GetAddOnMetadata("ABF", "Title")).."|nChoose the first gradient|ncolor for the Border") 
end)
-- leave --
abfOptions3Box10PopOut1:SetScript("OnLeave", abfLeavingMenus)
-- drop down --
abfClickPopOut(abfOptions3Box10PopOut1, abfOptions3Box10PopOut1Choice0)
-- naming at Options 10 --
-- sort --
for i = 1, 3, 1 do
	_G["abfOptions3Box10PopOut1Choice"..i]:SetParent(abfOptions3Box10PopOut1Choice0)
	_G["abfOptions3Box10PopOut1Choice"..i]:SetPoint("TOP", _G["abfOptions3Box10PopOut1Choice"..i-1], "BOTTOM", 0, 0)
end
-- click --
for i = 0, 3, 1 do
	_G["abfOptions3Box10PopOut1Choice"..i]:HookScript("OnClick", function(self, button, down)
		if button == "LeftButton" and down == false then
			ABFactionBars["Bar3"]["BorderArtGradientOptions1"] = self.Text:GetText()
			abfOptions3Box10PopOut1.Text:SetText(self.Text:GetText())
			abfOptions3Box10PopOut1Choice0:Hide()
			if ABFactionBars["Bar3"]["BorderArtGradientOptions1"] == "Default Color" then
				ABFactionBars["Bar3"]["BorderArtGradient1"] = {r = 1, g = 1, b = 1, a = 1,}
			elseif ABFactionBars["Bar3"]["BorderArtGradientOptions1"] == "Class Color" then
				ABFactionBars["Bar3"]["BorderArtGradient1"] = CreateColor(abfClassColor:GetRGB())
			elseif ABFactionBars["Bar3"]["BorderArtGradientOptions1"] == "Faction Color" then
				ABFactionBars["Bar3"]["BorderArtGradient1"] = CreateColor(abfFactionColor:GetRGB())
			elseif ABFactionBars["Bar3"]["BorderArtGradientOptions1"] == "Custom Color" then
				abfShowColorPickerCD("Bar3", MultiBarBottomRight, "BorderArtGradient1", abfSavedColorBorder)
			end
			abfSavedColorBorder("Bar3", MultiBarBottomRight)
		end
	end)
end
-- Box 10, Pop Out Button 2, Border Color Gradient Two --
-- enter --
abfOptions3Box10PopOut2:SetScript("OnEnter", function(self)
	abfEnteringMenus(self)
	GameTooltip:SetText("|T"..C_AddOns.GetAddOnMetadata("ABF", "IconTexture")..":16|t"..abfMainColor:WrapTextInColorCode(C_AddOns.GetAddOnMetadata("ABF", "Title")).."|nChoose the first gradient|ncolor for the Border") 
end)
-- leave --
abfOptions3Box10PopOut2:SetScript("OnLeave", abfLeavingMenus)
-- drop down --
abfClickPopOut(abfOptions3Box10PopOut2, abfOptions3Box10PopOut2Choice0)
-- naming at Options 10 --
-- sort --
for i = 1, 3, 1 do
	_G["abfOptions3Box10PopOut2Choice"..i]:SetParent(abfOptions3Box10PopOut2Choice0)
	_G["abfOptions3Box10PopOut2Choice"..i]:SetPoint("TOP", _G["abfOptions3Box10PopOut2Choice"..i-1], "BOTTOM", 0, 0)
end
-- click --
for i = 0, 3, 1 do
	_G["abfOptions3Box10PopOut2Choice"..i]:HookScript("OnClick", function(self, button, down)
		if button == "LeftButton" and down == false then
			ABFactionBars["Bar3"]["BorderArtGradientOptions2"] = self.Text:GetText()
			abfOptions3Box10PopOut2.Text:SetText(self.Text:GetText())
			abfOptions3Box10PopOut2Choice0:Hide()
			if ABFactionBars["Bar3"]["BorderArtGradientOptions2"] == "Default Color" then
				ABFactionBars["Bar3"]["BorderArtGradient2"] = {r = 1, g = 1, b = 1, a = 1,}
			elseif ABFactionBars["Bar3"]["BorderArtGradientOptions2"] == "Class Color" then
				ABFactionBars["Bar3"]["BorderArtGradient2"] = CreateColor(abfClassColor:GetRGB())
			elseif ABFactionBars["Bar3"]["BorderArtGradientOptions2"] == "Faction Color" then
				ABFactionBars["Bar3"]["BorderArtGradient2"] = CreateColor(abfFactionColor:GetRGB())
			elseif ABFactionBars["Bar3"]["BorderArtGradientOptions2"] == "Custom Color" then
				abfShowColorPickerCD("Bar3", MultiBarBottomRight, "BorderArtGradient2", abfSavedColorBorder)
			end
			abfSavedColorBorder("Bar3", MultiBarBottomRight)
		end
	end)
end
-- Box 10, Pop Out Button 3, Border Color Gradient Orientation --
-- enter --
abfOptions3Box10PopOut3:SetScript("OnEnter", function(self)
	abfEnteringMenus(self)
	GameTooltip:SetText("|T"..C_AddOns.GetAddOnMetadata("ABF", "IconTexture")..":16|t"..abfMainColor:WrapTextInColorCode(C_AddOns.GetAddOnMetadata("ABF", "Title")).."|nChoose the orientation|nof the colors for the Barder") 
end)
-- leave --
abfOptions3Box10PopOut3:SetScript("OnLeave", abfLeavingMenus)
-- drop down --
abfClickPopOut(abfOptions3Box10PopOut3, abfOptions3Box10PopOut3Choice0)
-- sort --
abfOptions3Box10PopOut3Choice1:SetParent(abfOptions3Box10PopOut3Choice0)
abfOptions3Box10PopOut3Choice1:SetPoint("TOP", abfOptions3Box10PopOut3Choice0, "BOTTOM", 0, 0)
-- naming at Options 10 --
-- click --
for i = 0, 1, 1 do
	_G["abfOptions3Box10PopOut3Choice"..i]:HookScript("OnClick", function(self, button, down)
		if button == "LeftButton" and down == false then
			ABFactionBars["Bar3"]["BorderArtGradientOrientation"] = self.Text:GetText()
			abfOptions3Box10PopOut3.Text:SetText(self.Text:GetText())
			abfOptions3Box10PopOut3Choice0:Hide()
			abfSavedColorBorder("Bar3", MultiBarBottomRight)
		end
	end)
end
-- Showing the panel --
abfOptions3:HookScript("OnShow", function(self)
	CheckSavedVariables1()
	CheckSavedVariables2()
-- panels --
	for i = 1, 8, 1 do
		if _G["abfOptions"..i.."a"]:IsShown() then _G["abfOptions"..i.."a"]:Hide() end
	end
	if abfOptions1:IsShown() then abfOptions1:Hide() end
	if abfOptions2:IsShown() then abfOptions2:Hide() end
	for i = 4, 10, 1 do
		if _G["abfOptions"..i]:IsShown() then _G["abfOptions"..i]:Hide() end
	end
-- tabs --
	abfOptions00Tab3.Text:SetTextColor(abfHighColor:GetRGB())
	for i = 1, 2, 1 do
		_G["abfOptions00Tab"..i].Text:SetTextColor(abfMainColor:GetRGB())
	end
	for i = 4, 10, 1 do
		_G["abfOptions00Tab"..i].Text:SetTextColor(abfMainColor:GetRGB())
	end
-- buttons --
	if not abfOptions00PageButton1c:IsShown() then abfOptions00PageButton1c:Show() end
	if not abfOptions00PageButton2c:IsShown() then abfOptions00PageButton2c:Show() end
	if abfOptions00PageButton1a:IsShown() then abfOptions00PageButton1a:Hide() end
	if abfOptions00PageButton2a:IsShown() then abfOptions00PageButton2a:Hide() end
	if abfOptions00PageButton1b:IsShown() then abfOptions00PageButton1b:Hide() end
	if abfOptions00PageButton2b:IsShown() then abfOptions00PageButton2b:Hide() end
	for i = 4, 8, 1 do
		if i == 4 then k = "d"
		elseif i == 5 then k = "e"
		elseif i == 6 then k = "f"
		elseif i == 7 then k = "g"
		elseif i == 8 then k = "h"
		end
		if _G["abfOptions00PageButton1"..k]:IsShown() then _G["abfOptions00PageButton1"..k]:Hide() end
		if _G["abfOptions00PageButton2"..k]:IsShown() then _G["abfOptions00PageButton2"..k]:Hide() end
	end
	abfOptions00PageButton1c.Text:SetTextColor(abfHighColor:GetRGB())
	abfOptions00PageButton2c.Text:SetTextColor(abfMainColor:GetRGB())
end)
