-- takeing care the rest boxes --
abfOptions4Box00:SetPoint("TOPLEFT", abfOptions4Box1, "BOTTOMLEFT", 0, 0)
abfOptions4Box3:SetPoint("TOPRIGHT", abfOptions4Box2, "BOTTOMRIGHT", 0, 6)
abfOptions4Box4:SetPoint("TOPRIGHT", abfOptions4Box2, "BOTTOMRIGHT", 0, 6)
abfOptions4Box01:SetPoint("TOPRIGHT", abfOptions4Box4, "BOTTOMRIGHT", 0, 0)
abfOptions4Box5:SetPoint("TOPLEFT", abfOptions4Box00, "BOTTOMLEFT", 0, 0)
abfOptions4Box6:SetPoint("TOPLEFT", abfOptions4Box5, "BOTTOMLEFT", 0, 6)
abfOptions4Box7:SetPoint("TOPLEFT", abfOptions4Box5, "BOTTOMLEFT", 0, 6)
abfOptions4Box8:SetPoint("TOPRIGHT", abfOptions4Box01, "BOTTOMRIGHT", 0, 0)
abfOptions4Box9:SetPoint("TOPRIGHT", abfOptions4Box8, "BOTTOMRIGHT", 0, 6)
abfOptions4Box10:SetPoint("TOPRIGHT", abfOptions4Box8, "BOTTOMRIGHT", 0, 6)
abfOptions4Box2.BorderBottom:Hide()
abfOptions4Box3.BorderTop:Hide()
abfOptions4Box4.BorderTop:Hide()
abfOptions4Box5.BorderBottom:Hide()
abfOptions4Box6.BorderTop:Hide()
abfOptions4Box7.BorderTop:Hide()
abfOptions4Box8.BorderBottom:Hide()
abfOptions4Box9.BorderTop:Hide()
abfOptions4Box10.BorderTop:Hide()
-- naming --
abfOptions4Box1.TitleTxt:SetText("Texts Fonts & Cooldown Color")
abfOptions4Box2.TitleTxt:SetText("Slot Art & Color Mode")
abfOptions4Box3.TitleTxt:SetText("Slot Art One Color")
abfOptions4Box4.TitleTxt:SetText("Slot Art Gradient Color")
abfOptions4Box5.TitleTxt:SetText("Edge Art, Color Mode & Animation")
abfOptions4Box6.TitleTxt:SetText("Edge Art One Color")
abfOptions4Box7.TitleTxt:SetText("Edge Art Gradient Color")
abfOptions4Box8.TitleTxt:SetText("Border Visibility & Color Mode")
abfOptions4Box9.TitleTxt:SetText("Border One Color")
abfOptions4Box10.TitleTxt:SetText("Border Gradient Color")
-- Checking the Saved Variables --
local function CheckSavedVariables1()
-- Box 1, Pop out 1 --
	abfOptions4Box1PopOut1.Text:SetText(ABFactionBars["Bar4"]["HotKeyFonts"])
-- Box 1, Pop out 2 --
	abfOptions4Box1PopOut2.Text:SetText(ABFactionBars["Bar4"]["CountFonts"])
-- Box 1, Pop out 3 --
	abfOptions4Box1PopOut3.Text:SetText(ABFactionBars["Bar4"]["NameFonts"])
-- Box 1, Pop out 4 --
	abfOptions4Box1PopOut4.Text:SetText(ABFactionBars["Bar4"]["ColorCDoption"])
-- Box 2, Pop out 1 --
	abfOptions4Box2PopOut1.Text:SetText(ABFactionBars["Bar4"]["Slot"]["Art"])
-- Box 2, Pop out 2 --
	abfOptions4Box2PopOut2.Text:SetText(ABFactionBars["Bar4"]["Slot"]["ArtColorChoice"])
	if ABFactionBars["Bar4"]["Slot"]["ArtColorChoice"] == "One Color" then
		if not abfOptions4Box3:IsShown() then abfOptions4Box3:Show() end
		if abfOptions4Box4:IsShown() then abfOptions4Box4:Hide() end
	elseif ABFactionBars["Bar4"]["Slot"]["ArtColorChoice"] == "Gradient Color" then
		if not abfOptions4Box4:IsShown() then abfOptions4Box4:Show() end
		if abfOptions4Box3:IsShown() then abfOptions4Box3:Hide() end
	end
-- Box 3, Slider 1 --
	abfOptions4Box3Slider1.Slider:SetValue(ABFactionBars["Bar4"]["Slot"]["ArtColorDesaturation"] * 10)
-- Box 3, Pop out 1 --
	abfOptions4Box3PopOut1.Text:SetText(ABFactionBars["Bar4"]["Slot"]["ArtColorOptions"])
	if ABFactionBars["Bar4"]["Slot"]["ArtColorOptions"] == "Custom Color" then
		if not abfOptions4Box3Slider1:IsShown() then abfOptions4Box3Slider1:Show() end
	else
		if abfOptions4Box3Slider1:IsShown() then abfOptions4Box3Slider1:Hide() end
	end
-- Box 4, pop out 1 --
	abfOptions4Box4PopOut1.Text:SetText(ABFactionBars["Bar4"]["Slot"]["ArtGradientOptions1"])
-- Box 4, pop out 2 --
	abfOptions4Box4PopOut2.Text:SetText(ABFactionBars["Bar4"]["Slot"]["ArtGradientOptions2"])
-- Box 4, pop out 3 --
	abfOptions4Box4PopOut3.Text:SetText(ABFactionBars["Bar4"]["Slot"]["ArtGradientOrientation"])
-- Box 5,Pop out 1 --
	abfOptions4Box5PopOut1.Text:SetText(ABFactionBars["Bar4"]["Edge"]["Art"])
	if ABFactionBars["Bar4"]["Edge"]["Art"] == "Gryphon" or ABFactionBars["Bar4"]["Edge"]["Art"] == "Wyvern" then
		if not abfOptions4Box5PopOut3:IsShown() then abfOptions4Box5PopOut3:Show() end
		if not abfOptions4Box5PopOut4:IsShown() then abfOptions4Box5PopOut4:Show() end
	else
		if abfOptions4Box5PopOut3:IsShown() then abfOptions4Box5PopOut3:Hide() end
		if abfOptions4Box5PopOut4:IsShown() then abfOptions4Box5PopOut4:Hide() end
	end
-- Box 5, Pop out 2 --
	abfOptions4Box5PopOut2.Text:SetText(ABFactionBars["Bar4"]["Edge"]["ArtColorChoice"])
	if ABFactionBars["Bar4"]["Edge"]["ArtColorChoice"] == "One Color" then
		if not abfOptions4Box6:IsShown() then abfOptions4Box6:Show() end
		if abfOptions4Box7:IsShown() then abfOptions4Box7:Hide() end
	elseif ABFactionBars["Bar4"]["Edge"]["ArtColorChoice"] == "Gradient Color" then
		if not abfOptions4Box7:IsShown() then abfOptions4Box7:Show() end
		if abfOptions4Box6:IsShown() then abfOptions4Box6:Hide() end
	end
-- Box 5, Pop out 3 --
	if ABFactionBars["Bar4"]["Edge"]["Animation"] then
		abfOptions4Box5PopOut3.Text:SetText("Show")
	elseif not ABFactionBars["Bar4"]["Edge"]["Animation"] then
		abfOptions4Box5PopOut3.Text:SetText("Hide")
	end
-- Box 5, Pop out 4 --
	abfOptions4Box5PopOut4.Text:SetText(ABFactionBars["Bar4"]["Edge"]["AnimationColorOptions"])
end
local function CheckSavedVariables2()
-- Box 6, Slider 1 --
	if ABFactionBars["Bar4"]["Edge"]["ArtColorChoice"] == "One Color" then
		abfOptions4Box6Slider1:SetValue(ABFactionBars["Bar4"]["Edge"]["ArtColorDesaturation"] * 10)
	end
-- Box 6, Pop out 1 --
	abfOptions4Box6PopOut1.Text:SetText(ABFactionBars["Bar4"]["Edge"]["ArtColorOptions"])
	if ABFactionBars["Bar4"]["Edge"]["ArtColorOptions"] == "Custom Color" then
		if not abfOptions4Box6Slider1:IsShown() then abfOptions4Box6Slider1:Show() end
	else
		if abfOptions4Box6Slider1:IsShown() then abfOptions4Box6Slider1:Hide() end
	end
-- Box 7, pop out 1 --
	abfOptions4Box7PopOut1.Text:SetText(ABFactionBars["Bar4"]["Edge"]["ArtGradientOptions1"])
-- Box 7, pop out 2 --
	abfOptions4Box7PopOut2.Text:SetText(ABFactionBars["Bar4"]["Edge"]["ArtGradientOptions2"])
-- Box 7, pop out 3 --
	abfOptions4Box7PopOut3.Text:SetText(ABFactionBars["Bar4"]["Edge"]["ArtGradientOrientation"])
-- Box 8, Pop Out Button 1 --
	if ABFactionBars["Bar4"]["BorderVisibility"] then
		abfOptions4Box8PopOut1.Text:SetText("Show")
	elseif not ABFactionBars["Bar4"]["BorderVisibility"] then
		abfOptions4Box8PopOut1.Text:SetText("Hide")
	end
-- Box 8, Pop Out Button 2 --
	abfOptions4Box8PopOut2.Text:SetText(ABFactionBars["Bar4"]["BorderArtColorMode"])
	if ABFactionBars["Bar4"]["BorderArtColorMode"] == "One Color" then
		if not abfOptions4Box9:IsShown() then abfOptions4Box9:Show() end
		if abfOptions4Box10:IsShown() then abfOptions4Box10:Hide() end
	elseif ABFactionBars["Bar4"]["BorderArtColorMode"] == "Gradient Color" then
		if abfOptions4Box9:IsShown() then abfOptions4Box9:Hide() end
		if not abfOptions4Box10:IsShown() then abfOptions4Box10:Show() end
	end
-- Box 9, Pop Out Button 1 --
	abfOptions4Box9PopOut1.Text:SetText(ABFactionBars["Bar4"]["BorderArtColorOptions"])
-- Box 10, Pop Out Button 1 --
	abfOptions4Box10PopOut1.Text:SetText(ABFactionBars["Bar4"]["BorderArtGradientOptions1"])
-- Box 10, Pop Out Button 2 --
	abfOptions4Box10PopOut2.Text:SetText(ABFactionBars["Bar4"]["BorderArtGradientOptions2"])
-- Box 10, Pop Out Button 3 --
	abfOptions4Box10PopOut3.Text:SetText(ABFactionBars["Bar4"]["BorderArtGradientOrientation"])
end
-- Box 1, Texts Fonts & Cooldown Color --
-- Box 1, Pop Out Button 1, Hot Key Fonts --
-- enter --
abfOptions4Box1PopOut1:SetScript("OnEnter", function(self)
	abfEnteringMenus(self)
	GameTooltip:SetText("|T"..C_AddOns.GetAddOnMetadata("ABF", "IconTexture")..":16|t"..abfMainColor:WrapTextInColorCode(C_AddOns.GetAddOnMetadata("ABF", "Title")).."|nChoose fonts for|nthe Hot Key Text") 
end)
-- leave --
abfOptions4Box1PopOut1:SetScript("OnLeave", abfLeavingMenus)
-- drop down --
abfClickPopOut(abfOptions4Box1PopOut1, abfOptions4Box1PopOut1Choice0)
-- sort clicking --
for i = 1, 7, 1 do
	_G["abfOptions4Box1PopOut1Choice"..i]:SetParent(abfOptions4Box1PopOut1Choice0)
	_G["abfOptions4Box1PopOut1Choice"..i]:SetPoint("TOP", _G["abfOptions4Box1PopOut1Choice"..i-1], "BOTTOM", 0, 0)
end
-- naming at Options10 --
-- clicking --
for i = 0, 7, 1 do
	_G["abfOptions4Box1PopOut1Choice"..i]:HookScript("OnClick", function(self, button, down)
		if button == "LeftButton" and down == false then
			ABFactionBars["Bar4"]["HotKeyFonts"] = self.Text:GetText()
			abfOptions4Box1PopOut1.Text:SetText(self.Text:GetText())
			abfOptions4Box1PopOut1Choice0:Hide()
			abfSavedFonts("Bar4", MultiBarRight)
		end
	end)
end
-- Box 1, Pop Out Button 2, Count Fonts --
-- enter --
abfOptions4Box1PopOut2:SetScript("OnEnter", function(self)
	abfEnteringMenus(self)
	GameTooltip:SetText("|T"..C_AddOns.GetAddOnMetadata("ABF", "IconTexture")..":16|t"..abfMainColor:WrapTextInColorCode(C_AddOns.GetAddOnMetadata("ABF", "Title")).."|nChoose fonts for|nthe Count Text") 
end)
-- leave --
abfOptions4Box1PopOut2:SetScript("OnLeave", abfLeavingMenus)
-- drop down --
abfClickPopOut(abfOptions4Box1PopOut2, abfOptions4Box1PopOut2Choice0)
-- sort clicking --
for i = 1, 7, 1 do
	_G["abfOptions4Box1PopOut2Choice"..i]:SetParent(abfOptions4Box1PopOut2Choice0)
	_G["abfOptions4Box1PopOut2Choice"..i]:SetPoint("TOP", _G["abfOptions4Box1PopOut2Choice"..i-1], "BOTTOM", 0, 0)
end
-- naming at Options10 --
-- clicking --
for i = 0, 7, 1 do
	_G["abfOptions4Box1PopOut2Choice"..i]:HookScript("OnClick", function(self, button, down)
		if button == "LeftButton" and down == false then
			ABFactionBars["Bar4"]["CountFonts"] = self.Text:GetText()
			abfOptions4Box1PopOut2.Text:SetText(self.Text:GetText())
			abfOptions4Box1PopOut2Choice0:Hide()
			abfSavedFonts("Bar4", MultiBarRight)
		end
	end)
end
-- Box 1, Pop Out Button 3, Name Fonts --
-- enter --
abfOptions4Box1PopOut3:SetScript("OnEnter", function(self)
	abfEnteringMenus(self)
	GameTooltip:SetText("|T"..C_AddOns.GetAddOnMetadata("ABF", "IconTexture")..":16|t"..abfMainColor:WrapTextInColorCode(C_AddOns.GetAddOnMetadata("ABF", "Title")).."|nChoose fonts for|nthe Name Text") 
end)
-- leave --
abfOptions4Box1PopOut3:SetScript("OnLeave", abfLeavingMenus)
-- drop down --
abfClickPopOut(abfOptions4Box1PopOut3, abfOptions4Box1PopOut3Choice0)
-- sort clicking --
for i = 1, 7, 1 do
	_G["abfOptions4Box1PopOut3Choice"..i]:SetParent(abfOptions4Box1PopOut3Choice0)
	_G["abfOptions4Box1PopOut3Choice"..i]:SetPoint("TOP", _G["abfOptions4Box1PopOut3Choice"..i-1], "BOTTOM", 0, 0)
end
-- naming at Options10 --
-- clicking --
for i = 0, 7, 1 do
	_G["abfOptions4Box1PopOut3Choice"..i]:HookScript("OnClick", function(self, button, down)
		if button == "LeftButton" and down == false then
			ABFactionBars["Bar4"]["NameFonts"] = self.Text:GetText()
			abfOptions4Box1PopOut3.Text:SetText(self.Text:GetText())
			abfOptions4Box1PopOut3Choice0:Hide()
			abfSavedFonts("Bar4", MultiBarRight)
		end
	end)
end
-- Box 1, Pop Out Button 4, Cooldown Color --
-- enter --
abfOptions4Box1PopOut4:SetScript("OnEnter", function(self)
	abfEnteringMenus(self)
	GameTooltip:SetText("|T"..C_AddOns.GetAddOnMetadata("ABF", "IconTexture")..":16|t"..abfMainColor:WrapTextInColorCode(C_AddOns.GetAddOnMetadata("ABF", "Title")).."|nChoose the color for|nthe Cooldown Swipe") 
end)
-- leave --
abfOptions4Box1PopOut4:SetScript("OnLeave", abfLeavingMenus)
-- drop down --
abfClickPopOut(abfOptions4Box1PopOut4, abfOptions4Box1PopOut4Choice0)
-- sort clicking --
for i = 1, 3, 1 do
	_G["abfOptions4Box1PopOut4Choice"..i]:SetParent(abfOptions4Box1PopOut4Choice0)
	_G["abfOptions4Box1PopOut4Choice"..i]:SetPoint("TOP", _G["abfOptions4Box1PopOut4Choice"..i-1], "BOTTOM", 0, 0)
end
-- naming at Options10 --
-- on click --
for i = 0, 3, 1 do
	_G["abfOptions4Box1PopOut4Choice"..i]:HookScript("OnClick", function(self, button, down)
		if button == "LeftButton" and down == false then
			ABFactionBars["Bar4"]["ColorCDoption"] = self.Text:GetText()
			abfOptions4Box1PopOut4.Text:SetText(self.Text:GetText())
			abfOptions4Box1PopOut4Choice0:Hide()
			if ABFactionBars["Bar4"]["ColorCDoption"] == "Default Color" then
				ABFactionBars["Bar4"]["ColorCD"] = {r = 0, g = 0, b = 0, a = 0.8,}
			elseif ABFactionBars["Bar4"]["ColorCDoption"] == "Class Color" then
				ABFactionBars["Bar4"]["ColorCD"] = CreateColor(abfClassColor:GetRGB())
			elseif ABFactionBars["Bar4"]["ColorCDoption"] == "Faction Color" then
				ABFactionBars["Bar4"]["ColorCD"] = CreateColor(abfFactionColor:GetRGB())
			elseif ABFactionBars["Bar4"]["ColorCDoption"] == "Custom Color" then
				abfShowColorPickerCD("Bar4", MultiBarRight, "ColorCD", abfSavedCDcolor)
			end
			abfSavedCDcolor("Bar4", MultiBarRight)
		end
	end)
end
-- Box 2 Slot Art --
-- pop out 1 Slot Art Choice --
-- enter --
abfOptions4Box2PopOut1:SetScript("OnEnter", function(self)
	abfEnteringMenus(self)
	GameTooltip:SetText("|T"..C_AddOns.GetAddOnMetadata("ABF", "IconTexture")..":16|t"..abfMainColor:WrapTextInColorCode(C_AddOns.GetAddOnMetadata("ABF", "Title")).."|nChoose the Slot Art for|nthe Action Bar 4") 
end)
-- leave --
abfOptions4Box2PopOut1:SetScript("OnLeave", abfLeavingMenus)
-- drop down --
abfClickPopOut(abfOptions4Box2PopOut1, abfOptions4Box2PopOut1Choice0)
-- sort clicking --
for i = 1, 6, 1 do
	_G["abfOptions4Box2PopOut1Choice"..i]:SetParent(abfOptions4Box2PopOut1Choice0)
	_G["abfOptions4Box2PopOut1Choice"..i]:SetPoint("TOP", _G["abfOptions4Box2PopOut1Choice"..i-1], "BOTTOM", 0, 0)
-- on leave --
	_G["abfOptions4Box2PopOut1Choice"..i]:HookScript("OnLeave", function(self) abfOptions4Box2PopOut1.Example:Hide() end)
end
-- naming at Options 10 --
-- clicking --
for i = 0, 6, 1 do
	_G["abfOptions4Box2PopOut1Choice"..i]:HookScript("OnClick", function(self, button, down)
		if button == "LeftButton" and down == false then
			ABFactionBars["Bar4"]["Slot"]["Art"] = self.Text:GetText()
			abfOptions4Box2PopOut1.Text:SetText(self.Text:GetText())
			abfOptions4Box2PopOut1Choice0:Hide()
			abfSavedArtSlot("Bar4", MultiBarRight)
		end
	end)
end
-- entering the pop out buttons at Options 10 --
-- pop out 2 Slot Art Color Choice --
-- enter --
abfOptions4Box2PopOut2:SetScript("OnEnter", function(self)
	abfEnteringMenus(self)
	GameTooltip:SetText("|T"..C_AddOns.GetAddOnMetadata("ABF", "IconTexture")..":16|t"..abfMainColor:WrapTextInColorCode(C_AddOns.GetAddOnMetadata("ABF", "Title")).."|nChoose the mode color for|nthe Slot Art! (one color or gradient color)") 
end)
-- leave --
abfOptions4Box2PopOut2:SetScript("OnLeave", abfLeavingMenus)
-- drop down --
abfClickPopOut(abfOptions4Box2PopOut2, abfOptions4Box2PopOut2Choice0)
-- position --
abfOptions4Box2PopOut2Choice1:SetParent(abfOptions4Box2PopOut2Choice0)
abfOptions4Box2PopOut2Choice1:SetPoint("TOP", abfOptions4Box2PopOut2Choice0, "BOTTOM", 0, 0)
-- naming at Options 10 --
-- click --
for i = 0, 1, 1 do
	_G["abfOptions4Box2PopOut2Choice"..i]:HookScript("OnClick", function(self, button, down)
		if button == "LeftButton" and down == false then
			ABFactionBars["Bar4"]["Slot"]["ArtColorChoice"] = self.Text:GetText()
			abfOptions4Box2PopOut2.Text:SetText(self.Text:GetText())
			abfOptions4Box2PopOut2Choice0:Hide()
			if ABFactionBars["Bar4"]["Slot"]["ArtColorChoice"] == "One Color" then
				if not abfOptions4Box3:IsShown() then abfOptions4Box3:Show() end
				if abfOptions4Box4:IsShown() then abfOptions4Box4:Hide() end
				abfOptions4Box3Slider1:SetValue(ABFactionBars["Bar4"]["Slot"]["ArtColorDesaturation"] * 10)
			elseif ABFactionBars["Bar4"]["Slot"]["ArtColorChoice"] == "Gradient Color" then
				if not abfOptions4Box4:IsShown() then abfOptions4Box4:Show() end
				if abfOptions4Box3:IsShown() then abfOptions4Box3:Hide() end
			end
			abfSavedColorSlot("Bar4", MultiBarRight)
		end
	end)
end
-- Box 3, color one --
-- Slider 1, Desaturation --
-- min max values --
abfOptions4Box3Slider1.MinText:SetText(0)
abfOptions4Box3Slider1.MaxText:SetText(1)
abfOptions4Box3Slider1.Slider:SetMinMaxValues(0, 10)
-- enter --
abfOptions4Box3Slider1.Slider:SetScript("OnEnter", function(self)
	abfEnteringMenus(self)
	GameTooltip:SetText("|T"..C_AddOns.GetAddOnMetadata("ABF", "IconTexture")..":16|t "..abfMainColor:WrapTextInColorCode(C_AddOns.GetAddOnMetadata("ABF", "Title")).."|nYou can also use your mousewheel|nor the buttons to the edge|nto change the value!") 
end)
-- leave --
abfOptions4Box3Slider1.Slider:SetScript("OnLeave", abfLeavingMenus)
-- on mouse wheel --
abfOptions4Box3Slider1.Slider:SetScript("OnMouseWheel", abfMouseWheelSlider)
-- On Value Changed --
abfOptions4Box3Slider1.Slider:SetScript("OnValueChanged", function (self, value, userInput)
	abfOptions4Box3Slider1.TopText:SetText("Desaturation of the Artwork: "..(self:GetValue()/10))
	ABFactionBars["Bar4"]["Slot"]["ArtColorDesaturation"] = self:GetValue()/10
	abfSavedColorSlot("Bar4", MultiBarRight)
end)
-- pop out 1 color one choices --
-- enter --
abfOptions4Box3PopOut1:SetScript("OnEnter", function(self)
	abfEnteringMenus(self)
	GameTooltip:SetText("|T"..C_AddOns.GetAddOnMetadata("ABF", "IconTexture")..":16|t"..abfMainColor:WrapTextInColorCode(C_AddOns.GetAddOnMetadata("ABF", "Title")).."|nChoose the color for|nthe Slot Art") 
end)
-- leave --
abfOptions4Box3PopOut1:SetScript("OnLeave", abfLeavingMenus)
-- drop down --
abfClickPopOut(abfOptions4Box3PopOut1, abfOptions4Box3PopOut1Choice0)
-- sort --
for i = 1, 3, 1 do
	_G["abfOptions4Box3PopOut1Choice"..i]:SetParent(abfOptions4Box3PopOut1Choice0)
	_G["abfOptions4Box3PopOut1Choice"..i]:SetPoint("TOP", _G["abfOptions4Box3PopOut1Choice"..i-1], "BOTTOM", 0, 0)
end
-- naming at Options 10 --
-- click --
for i = 0, 3, 1 do
	_G["abfOptions4Box3PopOut1Choice"..i]:HookScript("OnClick", function(self, button, down)
		if button == "LeftButton" and down == false then
			ABFactionBars["Bar4"]["Slot"]["ArtColorOptions"] = self.Text:GetText()
			abfOptions4Box3PopOut1.Text:SetText(self.Text:GetText())
			abfOptions4Box3PopOut1Choice0:Hide()
			if ABFactionBars["Bar4"]["Slot"]["ArtColorOptions"] == "Default Color" then
				if abfOptions4Box3Slider1:IsShown() then abfOptions4Box3Slider1:Hide() end
				ABFactionBars["Bar4"]["Slot"]["ArtColor"] = {r = 1, g = 1, b = 1, a = 1,}
			elseif ABFactionBars["Bar4"]["Slot"]["ArtColorOptions"] == "Class Color" then
				if abfOptions4Box3Slider1:IsShown() then abfOptions4Box3Slider1:Hide() end
				ABFactionBars["Bar4"]["Slot"]["ArtColor"] = CreateColor(abfClassColor:GetRGB())
			elseif ABFactionBars["Bar4"]["Slot"]["ArtColorOptions"] == "Faction Color" then
				if abfOptions4Box3Slider1:IsShown() then abfOptions4Box3Slider1:Hide() end
				ABFactionBars["Bar4"]["Slot"]["ArtColor"] = CreateColor(abfFactionColor:GetRGB())
			elseif ABFactionBars["Bar4"]["Slot"]["ArtColorOptions"] == "Custom Color" then
				if not abfOptions4Box3Slider1:IsShown() then abfOptions4Box3Slider1:Show() end
				abfShowColorPicker("Bar4", MultiBarRight, "Slot", abfSavedColorSlot, "ArtColor")
			end
			abfSavedColorSlot("Bar4", MultiBarRight)
		end
	end)
end
-- Box 4, color Gradient --
-- pop out 1 color Gradient one choices --
-- enter --
abfOptions4Box4PopOut1:SetScript("OnEnter", function(self)
	abfEnteringMenus(self)
	GameTooltip:SetText("|T"..C_AddOns.GetAddOnMetadata("ABF", "IconTexture")..":16|t"..abfMainColor:WrapTextInColorCode(C_AddOns.GetAddOnMetadata("ABF", "Title")).."|nChoose the first gradient|ncolor for the Slot Art") 
end)
-- leave --
abfOptions4Box4PopOut1:SetScript("OnLeave", abfLeavingMenus)
-- drop down --
abfClickPopOut(abfOptions4Box4PopOut1, abfOptions4Box4PopOut1Choice0)
-- sort clicking --
for i = 1, 3, 1 do
	_G["abfOptions4Box4PopOut1Choice"..i]:SetParent(abfOptions4Box4PopOut1Choice0)
	_G["abfOptions4Box4PopOut1Choice"..i]:SetPoint("TOP", _G["abfOptions4Box4PopOut1Choice"..i-1], "BOTTOM", 0, 0)
end
-- naming at Options 10 --
-- click --
for i = 0, 3, 1 do
	_G["abfOptions4Box4PopOut1Choice"..i]:HookScript("OnClick", function(self, button, down)
		if button == "LeftButton" and down == false then
			ABFactionBars["Bar4"]["Slot"]["ArtGradientOptions1"] = self.Text:GetText()
			abfOptions4Box4PopOut1.Text:SetText(self.Text:GetText())
			abfOptions4Box4PopOut1Choice0:Hide()
			if ABFactionBars["Bar4"]["Slot"]["ArtGradientOptions1"] == "Default Color" then
				ABFactionBars["Bar4"]["Slot"]["ArtGradientColor1"] = {r = 1, g = 1, b = 1, a = 1,}
			elseif ABFactionBars["Bar4"]["Slot"]["ArtGradientOptions1"] == "Class Color" then
				ABFactionBars["Bar4"]["Slot"]["ArtGradientColor1"] = CreateColor(abfClassColor:GetRGB())
			elseif ABFactionBars["Bar4"]["Slot"]["ArtGradientOptions1"] == "Faction Color" then
				ABFactionBars["Bar4"]["Slot"]["ArtGradientColor1"] = CreateColor(abfFactionColor:GetRGB())
			elseif ABFactionBars["Bar4"]["Slot"]["ArtGradientOptions1"] == "Custom Color" then
				abfShowColorPicker("Bar4", MultiBarRight, "Slot", abfSavedColorSlot, "ArtGradientColor1")
			end
			abfSavedColorSlot("Bar4", MultiBarRight)
		end
	end)
end
-- pop out 2 color Gradient two choices --
-- enter --
abfOptions4Box4PopOut2:SetScript("OnEnter", function(self)
	abfEnteringMenus(self)
	GameTooltip:SetText("|T"..C_AddOns.GetAddOnMetadata("ABF", "IconTexture")..":16|t"..abfMainColor:WrapTextInColorCode(C_AddOns.GetAddOnMetadata("ABF", "Title")).."|nChoose the second gradient|ncolor for the Slot Art") 
end)
-- leave --
abfOptions4Box4PopOut2:SetScript("OnLeave", abfLeavingMenus)
-- drop down --
abfClickPopOut(abfOptions4Box4PopOut2, abfOptions4Box4PopOut2Choice0)
-- sort clicking --
for i = 1, 3, 1 do
	_G["abfOptions4Box4PopOut2Choice"..i]:SetParent(abfOptions4Box4PopOut2Choice0)
	_G["abfOptions4Box4PopOut2Choice"..i]:SetPoint("TOP", _G["abfOptions4Box4PopOut2Choice"..i-1], "BOTTOM", 0, 0)
end
-- naming at Options 10 --
-- click --
for i = 0, 3, 1 do
	_G["abfOptions4Box4PopOut2Choice"..i]:HookScript("OnClick", function(self, button, down)
		if button == "LeftButton" and down == false then
			ABFactionBars["Bar4"]["Slot"]["ArtGradientOptions2"] = self.Text:GetText()
			abfOptions4Box4PopOut2.Text:SetText(self.Text:GetText())
			abfOptions4Box4PopOut2Choice0:Hide()
			if ABFactionBars["Bar4"]["Slot"]["ArtGradientOptions2"] == "Default Color" then
				ABFactionBars["Bar4"]["Slot"]["ArtGradientColor2"] = {r = 1, g = 1, b = 1, a = 1,}
			elseif ABFactionBars["Bar4"]["Slot"]["ArtGradientOptions2"] == "Class Color" then
				ABFactionBars["Bar4"]["Slot"]["ArtGradientColor2"] = CreateColor(abfClassColor:GetRGB())
			elseif ABFactionBars["Bar4"]["Slot"]["ArtGradientOptions2"] == "Faction Color" then
				ABFactionBars["Bar4"]["Slot"]["ArtGradientColor2"] = CreateColor(abfFactionColor:GetRGB())
			elseif ABFactionBars["Bar4"]["Slot"]["ArtGradientOptions2"] == "Custom Color" then
				abfShowColorPicker("Bar4", MultiBarRight, "Slot", abfSavedColorSlot, "ArtGradientColor2")
			end
			abfSavedColorSlot("Bar4", MultiBarRight)
		end
	end)
end
-- pop out 3 color Gradient Orientation --
-- enter --
abfOptions4Box4PopOut3:SetScript("OnEnter", function(self)
	abfEnteringMenus(self)
	GameTooltip:SetText("|T"..C_AddOns.GetAddOnMetadata("ABF", "IconTexture")..":16|t"..abfMainColor:WrapTextInColorCode(C_AddOns.GetAddOnMetadata("ABF", "Title")).."|nChoose the orientation|nof the colors for the Slot Art") 
end)
-- leave --
abfOptions4Box4PopOut3:SetScript("OnLeave", abfLeavingMenus)
-- drop down --
abfClickPopOut(abfOptions4Box4PopOut3, abfOptions4Box4PopOut3Choice0)
-- sort --
abfOptions4Box4PopOut3Choice1:SetParent(abfOptions4Box4PopOut3Choice0)
abfOptions4Box4PopOut3Choice1:SetPoint("TOP", abfOptions4Box4PopOut3Choice0, "BOTTOM", 0, 0)
-- naming at Options 10 --
-- click --
for i = 0, 1, 1 do
	_G["abfOptions4Box4PopOut3Choice"..i]:HookScript("OnClick", function(self, button, down)
		if button == "LeftButton" and down == false then
			ABFactionBars["Bar4"]["Slot"]["ArtGradientOrientation"] = self.Text:GetText()
			abfOptions4Box4PopOut3.Text:SetText(self.Text:GetText())
			abfOptions4Box4PopOut3Choice0:Hide()
			abfSavedColorSlot("Bar4", MultiBarRight)
		end
	end)
end
-- Box 5 Edge Art --
-- pop out 1 Edge Art Choice --
-- enter --
abfOptions4Box5PopOut1:SetScript("OnEnter", function(self)
	abfEnteringMenus(self)
	GameTooltip:SetText("|T"..C_AddOns.GetAddOnMetadata("ABF", "IconTexture")..":16|t"..abfMainColor:WrapTextInColorCode(C_AddOns.GetAddOnMetadata("ABF", "Title")).."|nChoose the Edge Art for|nthe Action Bar 4") 
end)
-- leave --
abfOptions4Box5PopOut1:SetScript("OnLeave", abfLeavingMenus)
-- drop down --
abfClickPopOut(abfOptions4Box5PopOut1, abfOptions4Box5PopOut1Choice0)
-- sort clicking --
for i = 1, 4, 1 do
	_G["abfOptions4Box5PopOut1Choice"..i]:SetParent(abfOptions4Box5PopOut1Choice0)
	_G["abfOptions4Box5PopOut1Choice"..i]:SetPoint("TOP", _G["abfOptions4Box5PopOut1Choice"..i-1], "BOTTOM", 0, 0)
-- on leave --
	_G["abfOptions4Box5PopOut1Choice"..i]:HookScript("OnLeave", function(self) abfOptions4Box5PopOut1.Example:Hide() end)
end
-- naming at Options 10 --
-- clicking --
for i = 0, 4, 1 do
	_G["abfOptions4Box5PopOut1Choice"..i]:HookScript("OnClick", function(self, button, down)
		if button == "LeftButton" and down == false then
			ABFactionBars["Bar4"]["Edge"]["Art"] = self.Text:GetText()
			abfOptions4Box5PopOut1.Text:SetText(self.Text:GetText())
			abfOptions4Box5PopOut1Choice0:Hide()
			if ABFactionBars["Bar4"]["Edge"]["Art"] == "Gryphon" or ABFactionBars["Bar4"]["Edge"]["Art"] == "Wyvern" then
				if not abfOptions4Box5PopOut3:IsShown() then abfOptions4Box5PopOut3:Show() end
				if not abfOptions4Box5PopOut4:IsShown() then abfOptions4Box5PopOut4:Show() end
			else
				if abfOptions4Box5PopOut3:IsShown() then abfOptions4Box5PopOut3:Hide() end
				if abfOptions4Box5PopOut4:IsShown() then abfOptions4Box5PopOut4:Hide() end
			end
			abfSavedArtEdge("Bar4", MultiBarRight)
			abfSavedEdgeArtAnimation("Bar4", MultiBarRight)
		end
	end)
end
-- entering the pop out buttons at Options 10 --
-- pop out 2 Edge Art Color Choice --
-- enter --
abfOptions4Box5PopOut2:SetScript("OnEnter", function(self)
	abfEnteringMenus(self)
	GameTooltip:SetText("|T"..C_AddOns.GetAddOnMetadata("ABF", "IconTexture")..":16|t"..abfMainColor:WrapTextInColorCode(C_AddOns.GetAddOnMetadata("ABF", "Title")).."|nChoose the mode color for|nthe Edge Art! (one color or gradient color)") 
end)
-- leave --
abfOptions4Box5PopOut2:SetScript("OnLeave", abfLeavingMenus)
-- drop down --
abfClickPopOut(abfOptions4Box5PopOut2, abfOptions4Box5PopOut2Choice0)
-- position --
abfOptions4Box5PopOut2Choice1:SetParent(abfOptions4Box5PopOut2Choice0)
abfOptions4Box5PopOut2Choice1:SetPoint("TOP", abfOptions4Box5PopOut2Choice0, "BOTTOM", 0, 0)
-- naming at Options 10 --
-- click --
for i = 0, 1, 1 do
	_G["abfOptions4Box5PopOut2Choice"..i]:HookScript("OnClick", function(self, button, down)
		if button == "LeftButton" and down == false then
			ABFactionBars["Bar4"]["Edge"]["ArtColorChoice"] = self.Text:GetText()
			abfOptions4Box5PopOut2.Text:SetText(self.Text:GetText())
			abfOptions4Box5PopOut2Choice0:Hide()
			if ABFactionBars["Bar4"]["Edge"]["ArtColorChoice"] == "One Color" then
				if not abfOptions4Box6:IsShown() then abfOptions4Box6:Show() end
				if abfOptions4Box7:IsShown() then abfOptions4Box7:Hide() end
				abfOptions4Box6Slider1:SetValue(ABFactionBars["Bar4"]["Edge"]["ArtColorDesaturation"] * 10)
			elseif ABFactionBars["Bar4"]["Edge"]["ArtColorChoice"] == "Gradient Color" then
				if not abfOptions4Box7:IsShown() then abfOptions4Box7:Show() end
				if abfOptions4Box6:IsShown() then abfOptions4Box6:Hide() end
			end
			abfSavedColorEdge("Bar4", MultiBarRight)
			abfSavedEdgeArtAnimation("Bar4", MultiBarRight)
		end
	end)
end
-- Box 5, Pop Out Button 3, Edge Art Animation --
-- enter --
abfOptions4Box5PopOut3:SetScript("OnEnter", function(self)
	abfEnteringMenus(self)
	GameTooltip:SetText("|T"..C_AddOns.GetAddOnMetadata("ABF", "IconTexture")..":16|t"..abfMainColor:WrapTextInColorCode(C_AddOns.GetAddOnMetadata("ABF", "Title")).."|nWhould you like the animation|nfor the Edge Art to be shown?") 
end)
-- leave --
abfOptions4Box5PopOut3:SetScript("OnLeave", abfLeavingMenus)
-- drop down --
abfClickPopOut(abfOptions4Box5PopOut3, abfOptions4Box5PopOut3Choice0)
-- naming at Options 10 --
-- sorting --
abfOptions4Box5PopOut3Choice1:SetParent(abfOptions4Box5PopOut3Choice0)
abfOptions4Box5PopOut3Choice1:SetPoint("TOP", abfOptions4Box5PopOut3Choice0, "BOTTOM", 0, 0)
-- click --
for i = 0, 1, 1 do
	_G["abfOptions4Box5PopOut3Choice"..i]:HookScript("OnClick", function(self, button, down)
		if button == "LeftButton" and down == false then
			abfOptions4Box5PopOut3.Text:SetText(self.Text:GetText())
			abfOptions4Box5PopOut3Choice0:Hide()
			if self.Text:GetText() == "Hide" then
				ABFactionBars["Bar4"]["Edge"]["Animation"] = false
			elseif self.Text:GetText() == "Show" then
				ABFactionBars["Bar4"]["Edge"]["Animation"] = true
			end
			abfSavedEdgeArtAnimation("Bar4", MultiBarRight)
		end
	end)
end
-- Box 5, Pop Out Button 4, Edge Art Animation Color --
-- enter --
abfOptions4Box5PopOut4:SetScript("OnEnter", function(self)
	abfEnteringMenus(self)
	GameTooltip:SetText("|T"..C_AddOns.GetAddOnMetadata("ABF", "IconTexture")..":16|t"..abfMainColor:WrapTextInColorCode(C_AddOns.GetAddOnMetadata("ABF", "Title")).."|nChoose the color for the animation") 
end)
-- leave --
abfOptions4Box5PopOut4:SetScript("OnLeave", abfLeavingMenus)
-- drop down --
abfClickPopOut(abfOptions4Box5PopOut4, abfOptions4Box5PopOut4Choice0)
-- naming at Options 10 --
-- sorting --
for i = 1, 3, 1 do
	_G["abfOptions4Box5PopOut4Choice"..i]:SetParent(abfOptions4Box5PopOut4Choice0)
	_G["abfOptions4Box5PopOut4Choice"..i]:SetPoint("TOP", _G["abfOptions4Box5PopOut4Choice"..i-1], "BOTTOM", 0, 0)
end
-- click --
for i = 0, 3, 1 do
	_G["abfOptions4Box5PopOut4Choice"..i]:HookScript("OnClick", function(self, button, down)
		if button == "LeftButton" and down == false then
			ABFactionBars["Bar4"]["Edge"]["AnimationColorOptions"] = self.Text:GetText()
			abfOptions4Box5PopOut4.Text:SetText(self.Text:GetText())
			abfOptions4Box5PopOut4Choice0:Hide()
			if ABFactionBars["Bar4"]["Edge"]["AnimationColorOptions"] == "Default Color" then
				ABFactionBars["Bar4"]["Edge"]["AnimationColor"] = {r = 1, g = 1, b = 1, a = 1}
			elseif ABFactionBars["Bar4"]["Edge"]["AnimationColorOptions"] == "Class Color" then
				ABFactionBars["Bar4"]["Edge"]["AnimationColor"] = CreateColor(abfClassColor:GetRGB())
			elseif ABFactionBars["Bar4"]["Edge"]["AnimationColorOptions"] == "Faction Color" then
				ABFactionBars["Bar4"]["Edge"]["AnimationColor"] = CreateColor(abfFactionColor:GetRGB())
			elseif ABFactionBars["Bar4"]["Edge"]["AnimationColorOptions"] == "Custom Color" then
				abfShowColorPicker("Bar4", MultiBarRight, "Edge", abfSavedEdgeArtAnimation, "AnimationColor")
			end
			abfSavedEdgeArtAnimation("Bar4", MultiBarRight)
		end
	end)
end
-- Box 6, color one --
-- Slider 1, Desaturation --
-- min max values --
abfOptions4Box6Slider1.MinText:SetText(0)
abfOptions4Box6Slider1.MaxText:SetText(1)
abfOptions4Box6Slider1.Slider:SetMinMaxValues(0, 10)
-- enter --
abfOptions4Box6Slider1.Slider:SetScript("OnEnter", function(self)
	abfEnteringMenus(self)
	GameTooltip:SetText("|T"..C_AddOns.GetAddOnMetadata("ABF", "IconTexture")..":16|t "..abfMainColor:WrapTextInColorCode(C_AddOns.GetAddOnMetadata("ABF", "Title")).."|nYou can also use your mousewheel|nor the buttons to the edge|nto change the value!") 
end)
-- leave --
abfOptions4Box6Slider1.Slider:SetScript("OnLeave", abfLeavingMenus)
-- on mouse wheel --
abfOptions4Box6Slider1.Slider:SetScript("OnMouseWheel", abfMouseWheelSlider)
-- On Value Changed --
abfOptions4Box6Slider1.Slider:SetScript("OnValueChanged", function (self, value, userInput)
	abfOptions4Box6Slider1.TopText:SetText("Desaturation of the Artwork: "..(self:GetValue()/10))
	ABFactionBars["Bar4"]["Edge"]["ArtColorDesaturation"] = self:GetValue()/10
	abfSavedColorEdge("Bar4", MultiBarRight)
end)
-- pop out 1 color one choices --
-- enter --
abfOptions4Box6PopOut1:SetScript("OnEnter", function(self)
	abfEnteringMenus(self)
	GameTooltip:SetText("|T"..C_AddOns.GetAddOnMetadata("ABF", "IconTexture")..":16|t"..abfMainColor:WrapTextInColorCode(C_AddOns.GetAddOnMetadata("ABF", "Title")).."|nChoose the color for|nthe Edge Art") 
end)
-- leave --
abfOptions4Box6PopOut1:SetScript("OnLeave", abfLeavingMenus)
-- drop down --
abfClickPopOut(abfOptions4Box6PopOut1, abfOptions4Box6PopOut1Choice0)
-- sort clicking --
for i = 1, 3, 1 do
	_G["abfOptions4Box6PopOut1Choice"..i]:SetParent(abfOptions4Box6PopOut1Choice0)
	_G["abfOptions4Box6PopOut1Choice"..i]:SetPoint("TOP", _G["abfOptions4Box6PopOut1Choice"..i-1], "BOTTOM", 0, 0)
end
-- naming at Options 10 --
-- click --
for i = 0, 3, 1 do
	_G["abfOptions4Box6PopOut1Choice"..i]:HookScript("OnClick", function(self, button, down)
		if button == "LeftButton" and down == false then
			ABFactionBars["Bar4"]["Edge"]["ArtColorOptions"] = self.Text:GetText()
			abfOptions4Box6PopOut1.Text:SetText(self.Text:GetText())
			abfOptions4Box6PopOut1Choice0:Hide()
			if ABFactionBars["Bar4"]["Edge"]["ArtColorOptions"] == "Default Color" then
				ABFactionBars["Bar4"]["Edge"]["ArtColor"] = {r = 1, g = 1, b = 1, a = 1,}
				if abfOptions4Box6Slider1:IsShown() then abfOptions4Box6Slider1:Hide() end
			elseif ABFactionBars["Bar4"]["Edge"]["ArtColorOptions"] == "Class Color" then
				ABFactionBars["Bar4"]["Edge"]["ArtColor"] = CreateColor(abfClassColor:GetRGB())
				if abfOptions4Box6Slider1:IsShown() then abfOptions4Box6Slider1:Hide() end
			elseif ABFactionBars["Bar4"]["Edge"]["ArtColorOptions"] == "Faction Color" then
				ABFactionBars["Bar4"]["Edge"]["ArtColor"] = CreateColor(abfFactionColor:GetRGB())
				if abfOptions4Box6Slider1:IsShown() then abfOptions4Box6Slider1:Hide() end
			elseif ABFactionBars["Bar4"]["Edge"]["ArtColorOptions"] == "Custom Color" then
				abfShowColorPicker("Bar4", MultiBarRight, "Edge", abfSavedColorEdge, "ArtColor")
				if not abfOptions4Box6Slider1:IsShown() then abfOptions4Box6Slider1:Show() end
			end
			abfSavedColorEdge("Bar4", MultiBarRight)
			abfSavedEdgeArtAnimation("Bar4", MultiBarRight)
		end
	end)
end
-- Box 7, color Gradient --
-- pop out 1 color Gradient one choices --
-- enter --
abfOptions4Box7PopOut1:SetScript("OnEnter", function(self)
	abfEnteringMenus(self)
	GameTooltip:SetText("|T"..C_AddOns.GetAddOnMetadata("ABF", "IconTexture")..":16|t"..abfMainColor:WrapTextInColorCode(C_AddOns.GetAddOnMetadata("ABF", "Title")).."|nChoose the first gradient|ncolor for the Edge Art") 
end)
-- leave --
abfOptions4Box7PopOut1:SetScript("OnLeave", abfLeavingMenus)
-- drop down --
abfClickPopOut(abfOptions4Box7PopOut1, abfOptions4Box7PopOut1Choice0)
-- sort clicking --
for i = 1, 3, 1 do
	_G["abfOptions4Box7PopOut1Choice"..i]:SetParent(abfOptions4Box7PopOut1Choice0)
	_G["abfOptions4Box7PopOut1Choice"..i]:SetPoint("TOP", _G["abfOptions4Box7PopOut1Choice"..i-1], "BOTTOM", 0, 0)
end
-- naming at Options 10 --
-- click --
for i = 0, 3, 1 do
	_G["abfOptions4Box7PopOut1Choice"..i]:HookScript("OnClick", function(self, button, down)
		if button == "LeftButton" and down == false then
			ABFactionBars["Bar4"]["Edge"]["ArtGradientOptions1"] = self.Text:GetText()
			abfOptions4Box7PopOut1.Text:SetText(self.Text:GetText())
			abfOptions4Box7PopOut1Choice0:Hide()
			if ABFactionBars["Bar4"]["Edge"]["ArtGradientOptions1"] == "Default Color" then
				ABFactionBars["Bar4"]["Edge"]["ArtGradientColor1"] = {r = 1, g = 1, b = 1, a = 1,}
			elseif ABFactionBars["Bar4"]["Edge"]["ArtGradientOptions1"] == "Class Color" then
				ABFactionBars["Bar4"]["Edge"]["ArtGradientColor1"] = CreateColor(abfClassColor:GetRGB())
			elseif ABFactionBars["Bar4"]["Edge"]["ArtGradientOptions1"] == "Faction Color" then
				ABFactionBars["Bar4"]["Edge"]["ArtGradientColor1"] = CreateColor(abfFactionColor:GetRGB())
			elseif ABFactionBars["Bar4"]["Edge"]["ArtGradientOptions1"] == "Custom Color" then
				abfShowColorPicker("Bar4", MultiBarRight, "Edge", abfSavedColorEdge, "ArtGradientColor1")
			end
			abfSavedColorEdge("Bar4", MultiBarRight)
			abfSavedEdgeArtAnimation("Bar4", MultiBarRight)
		end
	end)
end
-- pop out 2 color Gradient two choices --
-- enter --
abfOptions4Box7PopOut2:SetScript("OnEnter", function(self)
	abfEnteringMenus(self)
	GameTooltip:SetText("|T"..C_AddOns.GetAddOnMetadata("ABF", "IconTexture")..":16|t"..abfMainColor:WrapTextInColorCode(C_AddOns.GetAddOnMetadata("ABF", "Title")).."|nChoose the second gradient|ncolor for the Edge Art") 
end)
-- leave --
abfOptions4Box7PopOut2:SetScript("OnLeave", abfLeavingMenus)
-- drop down --
abfClickPopOut(abfOptions4Box7PopOut2, abfOptions4Box7PopOut2Choice0)
-- sort clicking --
for i = 1, 3, 1 do
	_G["abfOptions4Box7PopOut2Choice"..i]:SetParent(abfOptions4Box7PopOut2Choice0)
	_G["abfOptions4Box7PopOut2Choice"..i]:SetPoint("TOP", _G["abfOptions4Box7PopOut2Choice"..i-1], "BOTTOM", 0, 0)
end
-- naming at Options 10 --
-- click --
for i = 0, 3, 1 do
	_G["abfOptions4Box7PopOut2Choice"..i]:HookScript("OnClick", function(self, button, down)
		if button == "LeftButton" and down == false then
			ABFactionBars["Bar4"]["Edge"]["ArtGradientOptions2"] = self.Text:GetText()
			abfOptions4Box7PopOut2.Text:SetText(self.Text:GetText())
			abfOptions4Box7PopOut2Choice0:Hide()
			if ABFactionBars["Bar4"]["Edge"]["ArtGradientOptions2"] == "Default Color" then
				ABFactionBars["Bar4"]["Edge"]["ArtGradientColor2"] = {r = 1, g = 1, b = 1, a = 1,}
			elseif ABFactionBars["Bar4"]["Edge"]["ArtGradientOptions2"] == "Class Color" then
				ABFactionBars["Bar4"]["Edge"]["ArtGradientColor2"] = CreateColor(abfClassColor:GetRGB())
			elseif ABFactionBars["Bar4"]["Edge"]["ArtGradientOptions2"] == "Faction Color" then
				ABFactionBars["Bar4"]["Edge"]["ArtGradientColor2"] = CreateColor(abfFactionColor:GetRGB())
			elseif ABFactionBars["Bar4"]["Edge"]["ArtGradientOptions2"] == "Custom Color" then
				abfShowColorPicker("Bar4", MultiBarRight, "Edge", abfSavedColorEdge, "ArtGradientColor2")
			end
			abfSavedColorEdge("Bar4", MultiBarRight)
			abfSavedEdgeArtAnimation("Bar4", MultiBarRight)
		end
	end)
end
-- pop out 3 color Gradient Orientation --
-- enter --
abfOptions4Box7PopOut3:SetScript("OnEnter", function(self)
	abfEnteringMenus(self)
	GameTooltip:SetText("|T"..C_AddOns.GetAddOnMetadata("ABF", "IconTexture")..":16|t"..abfMainColor:WrapTextInColorCode(C_AddOns.GetAddOnMetadata("ABF", "Title")).."|nChoose the orientation|nof the colors for the Edge Art") 
end)
-- leave --
abfOptions4Box7PopOut3:SetScript("OnLeave", abfLeavingMenus)
-- drop down --
abfClickPopOut(abfOptions4Box7PopOut3, abfOptions4Box7PopOut3Choice0)
-- sort clicking --
abfOptions4Box7PopOut3Choice1:SetParent(abfOptions4Box7PopOut3Choice0)
abfOptions4Box7PopOut3Choice1:SetPoint("TOP", abfOptions4Box7PopOut3Choice0, "BOTTOM", 0, 0)
-- naming at Options 10 --
-- click --
for i = 0, 1, 1 do
	_G["abfOptions4Box7PopOut3Choice"..i]:HookScript("OnClick", function(self, button, down)
		if button == "LeftButton" and down == false then
			ABFactionBars["Bar4"]["Edge"]["ArtGradientOrientation"] = self.Text:GetText()
			abfOptions4Box7PopOut3.Text:SetText(self.Text:GetText())
			abfOptions4Box7PopOut3Choice0:Hide()
			abfSavedColorEdge("Bar4", MultiBarRight)
			abfSavedEdgeArtAnimation("Bar4", MultiBarRight)
		end
	end)
end
-- Options Box 8, Border --
-- Box 8, Pop Out Button 1, Border Visibility --
-- enter --
abfOptions4Box8PopOut1:SetScript("OnEnter", function(self)
	abfEnteringMenus(self)
	GameTooltip:SetText("|T"..C_AddOns.GetAddOnMetadata("ABF", "IconTexture")..":16|t"..abfMainColor:WrapTextInColorCode(C_AddOns.GetAddOnMetadata("ABF", "Title")).."|nWhould you like the border of|nthe actionbar 4 to be shown?") 
end)
-- leave --
abfOptions4Box8PopOut1:SetScript("OnLeave", abfLeavingMenus)
-- drop down --
abfClickPopOut(abfOptions4Box8PopOut1, abfOptions4Box8PopOut1Choice0)
-- naming at Options 10 --
-- sort --
abfOptions4Box8PopOut1Choice1:SetParent(abfOptions4Box8PopOut1Choice0)
abfOptions4Box8PopOut1Choice1:SetPoint("TOP", abfOptions4Box8PopOut1Choice0, "BOTTOM", 0, 0)
-- click --
for i = 0, 1, 1 do
	_G["abfOptions4Box8PopOut1Choice"..i]:HookScript("OnClick", function(self, button, down)
		if button == "LeftButton" and down == false then
			abfOptions4Box8PopOut1.Text:SetText(self.Text:GetText())
			abfOptions4Box8PopOut1Choice0:Hide()
			if self.Text:GetText() == "Hide" then
				ABFactionBars["Bar4"]["BorderVisibility"] = false
			elseif self.Text:GetText() == "Show" then
				ABFactionBars["Bar4"]["BorderVisibility"] = true
			end
			abfSavedArtBorder("Bar4", MultiBarRight)
		end
	end)
end
-- Box 8, Pop Out Button 2, Border Color Choice --
-- enter --
abfOptions4Box8PopOut2:SetScript("OnEnter", function(self)
	abfEnteringMenus(self)
	GameTooltip:SetText("|T"..C_AddOns.GetAddOnMetadata("ABF", "IconTexture")..":16|t"..abfMainColor:WrapTextInColorCode(C_AddOns.GetAddOnMetadata("ABF", "Title")).."|nChoose the mode color for|nthe Border! (one color or gradient color)") 
end)
-- leave --
abfOptions4Box8PopOut2:SetScript("OnLeave", abfLeavingMenus)
-- drop down --
abfClickPopOut(abfOptions4Box8PopOut2, abfOptions4Box8PopOut2Choice0)
-- naming at Options 10 --
-- sort --
abfOptions4Box8PopOut2Choice1:SetParent(abfOptions4Box8PopOut2Choice0)
abfOptions4Box8PopOut2Choice1:SetPoint("TOP", abfOptions4Box8PopOut2Choice0, "BOTTOM", 0, 0)
-- click --
for i = 0, 1, 1 do
	_G["abfOptions4Box8PopOut2Choice"..i]:HookScript("OnClick", function(self, button, down)
		if button == "LeftButton" and down == false then
			ABFactionBars["Bar4"]["BorderArtColorMode"] = self.Text:GetText()
			abfOptions4Box8PopOut2.Text:SetText(self.Text:GetText())
			abfOptions4Box8PopOut2Choice0:Hide()
			if ABFactionBars["Bar4"]["BorderArtColorMode"] == "One Color" then
				if not abfOptions4Box9:IsShown() then abfOptions4Box9:Show() end
				if abfOptions4Box10:IsShown() then abfOptions4Box10:Hide() end
			elseif ABFactionBars["Bar4"]["BorderArtColorMode"] == "Gradient Color" then
				if abfOptions4Box9:IsShown() then abfOptions4Box9:Hide() end
				if not abfOptions4Box10:IsShown() then abfOptions4Box10:Show() end
			end
			abfSavedColorBorder("Bar4", MultiBarRight)
		end
	end)
end
-- Options Box 9, Border Color One --
-- Box 9, Pop Out Button 1, Border Color One Choices --
-- enter --
abfOptions4Box9PopOut1:SetScript("OnEnter", function(self)
	abfEnteringMenus(self)
	GameTooltip:SetText("|T"..C_AddOns.GetAddOnMetadata("ABF", "IconTexture")..":16|t"..abfMainColor:WrapTextInColorCode(C_AddOns.GetAddOnMetadata("ABF", "Title")).."|nChoose the color for|nthe Border") 
end)
-- leave --
abfOptions4Box9PopOut1:SetScript("OnLeave", abfLeavingMenus)
-- drop down --
abfClickPopOut(abfOptions4Box9PopOut1, abfOptions4Box9PopOut1Choice0)
-- naming at Options 10 --
-- sort --
for i = 1, 3, 1 do
	_G["abfOptions4Box9PopOut1Choice"..i]:SetParent(abfOptions4Box9PopOut1Choice0)
	_G["abfOptions4Box9PopOut1Choice"..i]:SetPoint("TOP", _G["abfOptions4Box9PopOut1Choice"..i-1], "BOTTOM", 0, 0)
end
-- click --
for i = 0, 3, 1 do
	_G["abfOptions4Box9PopOut1Choice"..i]:HookScript("OnClick", function(self, button, down)
		if button == "LeftButton" and down == false then
			ABFactionBars["Bar4"]["BorderArtColorOptions"] = self.Text:GetText()
			abfOptions4Box9PopOut1.Text:SetText(self.Text:GetText())
			abfOptions4Box9PopOut1Choice0:Hide()
			if ABFactionBars["Bar4"]["BorderArtColorOptions"] == "Default Color" then
				ABFactionBars["Bar4"]["BorderArtColor"] = {r = 1, g = 1, b = 1, a = 1,}
			elseif ABFactionBars["Bar4"]["BorderArtColorOptions"] == "Class Color" then
				ABFactionBars["Bar4"]["BorderArtColor"] = CreateColor(abfClassColor:GetRGB())
			elseif ABFactionBars["Bar4"]["BorderArtColorOptions"] == "Faction Color" then
				ABFactionBars["Bar4"]["BorderArtColor"] = CreateColor(abfFactionColor:GetRGB())
			elseif ABFactionBars["Bar4"]["BorderArtColorOptions"] == "Custom Color" then
				abfShowColorPickerCD("Bar4", MultiBarRight, "BorderArtColor", abfSavedColorBorder)
			end
			abfSavedColorBorder("Bar4", MultiBarRight)
		end
	end)
end
-- Options Box 10, Border Color Gradient --
-- Box 10, Pop Out Button 1, Border Color Gradient One --
-- enter --
abfOptions4Box10PopOut1:SetScript("OnEnter", function(self)
	abfEnteringMenus(self)
	GameTooltip:SetText("|T"..C_AddOns.GetAddOnMetadata("ABF", "IconTexture")..":16|t"..abfMainColor:WrapTextInColorCode(C_AddOns.GetAddOnMetadata("ABF", "Title")).."|nChoose the first gradient|ncolor for the Border") 
end)
-- leave --
abfOptions4Box10PopOut1:SetScript("OnLeave", abfLeavingMenus)
-- drop down --
abfClickPopOut(abfOptions4Box10PopOut1, abfOptions4Box10PopOut1Choice0)
-- naming at Options 10 --
-- sort --
for i = 1, 3, 1 do
	_G["abfOptions4Box10PopOut1Choice"..i]:SetParent(abfOptions4Box10PopOut1Choice0)
	_G["abfOptions4Box10PopOut1Choice"..i]:SetPoint("TOP", _G["abfOptions4Box10PopOut1Choice"..i-1], "BOTTOM", 0, 0)
end
-- click --
for i = 0, 3, 1 do
	_G["abfOptions4Box10PopOut1Choice"..i]:HookScript("OnClick", function(self, button, down)
		if button == "LeftButton" and down == false then
			ABFactionBars["Bar4"]["BorderArtGradientOptions1"] = self.Text:GetText()
			abfOptions4Box10PopOut1.Text:SetText(self.Text:GetText())
			abfOptions4Box10PopOut1Choice0:Hide()
			if ABFactionBars["Bar4"]["BorderArtGradientOptions1"] == "Default Color" then
				ABFactionBars["Bar4"]["BorderArtGradient1"] = {r = 1, g = 1, b = 1, a = 1,}
			elseif ABFactionBars["Bar4"]["BorderArtGradientOptions1"] == "Class Color" then
				ABFactionBars["Bar4"]["BorderArtGradient1"] = CreateColor(abfClassColor:GetRGB())
			elseif ABFactionBars["Bar4"]["BorderArtGradientOptions1"] == "Faction Color" then
				ABFactionBars["Bar4"]["BorderArtGradient1"] = CreateColor(abfFactionColor:GetRGB())
			elseif ABFactionBars["Bar4"]["BorderArtGradientOptions1"] == "Custom Color" then
				abfShowColorPickerCD("Bar4", MultiBarRight, "BorderArtGradient1", abfSavedColorBorder)
			end
			abfSavedColorBorder("Bar4", MultiBarRight)
		end
	end)
end
-- Box 10, Pop Out Button 2, Border Color Gradient Two --
-- enter --
abfOptions4Box10PopOut2:SetScript("OnEnter", function(self)
	abfEnteringMenus(self)
	GameTooltip:SetText("|T"..C_AddOns.GetAddOnMetadata("ABF", "IconTexture")..":16|t"..abfMainColor:WrapTextInColorCode(C_AddOns.GetAddOnMetadata("ABF", "Title")).."|nChoose the first gradient|ncolor for the Border") 
end)
-- leave --
abfOptions4Box10PopOut2:SetScript("OnLeave", abfLeavingMenus)
-- drop down --
abfClickPopOut(abfOptions4Box10PopOut2, abfOptions4Box10PopOut2Choice0)
-- naming at Options 10 --
-- sort --
for i = 1, 3, 1 do
	_G["abfOptions4Box10PopOut2Choice"..i]:SetParent(abfOptions4Box10PopOut2Choice0)
	_G["abfOptions4Box10PopOut2Choice"..i]:SetPoint("TOP", _G["abfOptions4Box10PopOut2Choice"..i-1], "BOTTOM", 0, 0)
end
-- click --
for i = 0, 3, 1 do
	_G["abfOptions4Box10PopOut2Choice"..i]:HookScript("OnClick", function(self, button, down)
		if button == "LeftButton" and down == false then
			ABFactionBars["Bar4"]["BorderArtGradientOptions2"] = self.Text:GetText()
			abfOptions4Box10PopOut2.Text:SetText(self.Text:GetText())
			abfOptions4Box10PopOut2Choice0:Hide()
			if ABFactionBars["Bar4"]["BorderArtGradientOptions2"] == "Default Color" then
				ABFactionBars["Bar4"]["BorderArtGradient2"] = {r = 1, g = 1, b = 1, a = 1,}
			elseif ABFactionBars["Bar4"]["BorderArtGradientOptions2"] == "Class Color" then
				ABFactionBars["Bar4"]["BorderArtGradient2"] = CreateColor(abfClassColor:GetRGB())
			elseif ABFactionBars["Bar4"]["BorderArtGradientOptions2"] == "Faction Color" then
				ABFactionBars["Bar4"]["BorderArtGradient2"] = CreateColor(abfFactionColor:GetRGB())
			elseif ABFactionBars["Bar4"]["BorderArtGradientOptions2"] == "Custom Color" then
				abfShowColorPickerCD("Bar4", MultiBarRight, "BorderArtGradient2", abfSavedColorBorder)
			end
			abfSavedColorBorder("Bar4", MultiBarRight)
		end
	end)
end
-- Box 10, Pop Out Button 3, Border Color Gradient Orientation --
-- enter --
abfOptions4Box10PopOut3:SetScript("OnEnter", function(self)
	abfEnteringMenus(self)
	GameTooltip:SetText("|T"..C_AddOns.GetAddOnMetadata("ABF", "IconTexture")..":16|t"..abfMainColor:WrapTextInColorCode(C_AddOns.GetAddOnMetadata("ABF", "Title")).."|nChoose the orientation|nof the colors for the Barder") 
end)
-- leave --
abfOptions4Box10PopOut3:SetScript("OnLeave", abfLeavingMenus)
-- drop down --
abfClickPopOut(abfOptions4Box10PopOut3, abfOptions4Box10PopOut3Choice0)
-- sort --
abfOptions4Box10PopOut3Choice1:SetParent(abfOptions4Box10PopOut3Choice0)
abfOptions4Box10PopOut3Choice1:SetPoint("TOP", abfOptions4Box10PopOut3Choice0, "BOTTOM", 0, 0)
-- naming at Options 10 --
-- click --
for i = 0, 1, 1 do
	_G["abfOptions4Box10PopOut3Choice"..i]:HookScript("OnClick", function(self, button, down)
		if button == "LeftButton" and down == false then
			ABFactionBars["Bar4"]["BorderArtGradientOrientation"] = self.Text:GetText()
			abfOptions4Box10PopOut3.Text:SetText(self.Text:GetText())
			abfOptions4Box10PopOut3Choice0:Hide()
			abfSavedColorBorder("Bar4", MultiBarRight)
		end
	end)
end
-- Showing the panel --
abfOptions4:HookScript("OnShow", function(self)
	CheckSavedVariables1()
	CheckSavedVariables2()
-- panels --
		for i = 1, 8, 1 do
		if _G["abfOptions"..i.."a"]:IsShown() then _G["abfOptions"..i.."a"]:Hide() end
	end
	for i = 1, 3, 1 do
		if _G["abfOptions"..i]:IsShown() then _G["abfOptions"..i]:Hide() end
	end
	for i = 5, 10, 1 do
		if _G["abfOptions"..i]:IsShown() then _G["abfOptions"..i]:Hide() end
	end
-- tabs --
	abfOptions00Tab4.Text:SetTextColor(abfHighColor:GetRGB())
	for i = 1, 3, 1 do
		_G["abfOptions00Tab"..i].Text:SetTextColor(abfMainColor:GetRGB())
	end
	for i = 5, 10, 1 do
		_G["abfOptions00Tab"..i].Text:SetTextColor(abfMainColor:GetRGB())
	end
-- buttons --
	if not abfOptions00PageButton1d:IsShown() then abfOptions00PageButton1d:Show() end
	if not abfOptions00PageButton2d:IsShown() then abfOptions00PageButton2d:Show() end
	for i = 1, 3, 1 do
		if i == 1 then k = "a"
		elseif i == 2 then k = "b"
		elseif i == 3 then k = "c"
		end
		if _G["abfOptions00PageButton1"..k]:IsShown() then _G["abfOptions00PageButton1"..k]:Hide() end
		if _G["abfOptions00PageButton2"..k]:IsShown() then _G["abfOptions00PageButton2"..k]:Hide() end
	end
	for i = 5, 8, 1 do
		if i == 5 then k = "e"
		elseif i == 6 then k = "f"
		elseif i == 7 then k = "g"
		elseif i == 8 then k = "h"
		end
		if _G["abfOptions00PageButton1"..k]:IsShown() then _G["abfOptions00PageButton1"..k]:Hide() end
		if _G["abfOptions00PageButton2"..k]:IsShown() then _G["abfOptions00PageButton2"..k]:Hide() end
	end
	abfOptions00PageButton1d.Text:SetTextColor(abfHighColor:GetRGB())
	abfOptions00PageButton2d.Text:SetTextColor(abfMainColor:GetRGB())
end)
