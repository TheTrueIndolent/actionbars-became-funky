-- takeing care the rest boxes --
abfOptions6aBox2:SetPoint("TOPLEFT", abfOptions6aBox1, "BOTTOMLEFT", 0, 6)
abfOptions6aBox3:SetPoint("TOPLEFT", abfOptions6aBox1, "BOTTOMLEFT", 0, 6)
abfOptions6aBox01:SetPoint("TOPLEFT", abfOptions6aBox3, "BOTTOMLEFT", 0, 0)
abfOptions6aBox5:SetPoint("TOPRIGHT", abfOptions6aBox4, "BOTTOMRIGHT", 0, 6)
abfOptions6aBox6:SetPoint("TOPRIGHT", abfOptions6aBox4, "BOTTOMRIGHT", 0, 6)
abfOptions6aBox02:SetPoint("TOPRIGHT", abfOptions6aBox6, "BOTTOMRIGHT", 0, 0)
abfOptions6aBox7:SetPoint("TOPLEFT", abfOptions6aBox01, "BOTTOMLEFT", 0, 0)
abfOptions6aBox8:SetPoint("TOPLEFT", abfOptions6aBox7, "BOTTOMLEFT", 0, 6)
abfOptions6aBox9:SetPoint("TOPLEFT", abfOptions6aBox7, "BOTTOMLEFT", 0, 6)
abfOptions6aBox1.BorderBottom:Hide()
abfOptions6aBox2.BorderTop:Hide()
abfOptions6aBox3.BorderTop:Hide()
abfOptions6aBox4.BorderBottom:Hide()
abfOptions6aBox5.BorderTop:Hide()
abfOptions6aBox6.BorderTop:Hide()
abfOptions6aBox7.BorderBottom:Hide()
abfOptions6aBox8.BorderTop:Hide()
abfOptions6aBox9.BorderTop:Hide()
-- naming tabs --
abfOptions6aBox1.TitleTxt:SetText("Top Art, Color Mode & Animation")
abfOptions6aBox2.TitleTxt:SetText("Top Art One Color")
abfOptions6aBox3.TitleTxt:SetText("Top Art Gradient Color")
abfOptions6aBox4.TitleTxt:SetText("Bottom Art, Color Mode & Animation")
abfOptions6aBox5.TitleTxt:SetText("Bottom Art One Color")
abfOptions6aBox6.TitleTxt:SetText("Bottom Art Gradient Color")
abfOptions6aBox7.TitleTxt:SetText("Buttons Border Color Mode")
abfOptions6aBox8.TitleTxt:SetText("Buttons Border One Color")
abfOptions6aBox9.TitleTxt:SetText("Buttons Border Gradient Color")
-- Checking the Saved Variables --
local function CheckSavedVariables()
-- Box 1, Pop Out Button 1 --
	abfOptions6aBox1PopOut1.Text:SetText(ABFactionBars["Bar6"]["Top"]["Art"])
	if ABFactionBars["Bar6"]["Top"]["Art"] == "JailersTower" then
		if not abfOptions6aBox1PopOut3:IsShown() then abfOptions6aBox1PopOut3:Show() end
		if not abfOptions6aBox1PopOut4:IsShown() then abfOptions6aBox1PopOut4:Show() end
	else
		if abfOptions6aBox1PopOut3:IsShown() then abfOptions6aBox1PopOut3:Hide() end
		if abfOptions6aBox1PopOut4:IsShown() then abfOptions6aBox1PopOut4:Hide() end
	end
-- Box 1, Pop Out Button 2 --
	abfOptions6aBox1PopOut2.Text:SetText(ABFactionBars["Bar6"]["Top"]["ArtColorChoice"])
	if ABFactionBars["Bar6"]["Top"]["ArtColorChoice"] == "One Color" then
		if not abfOptions6aBox2:IsShown() then abfOptions6aBox2:Show() end
		if abfOptions6aBox3:IsShown() then abfOptions6aBox3:Hide() end
	elseif ABFactionBars["Bar6"]["Top"]["ArtColorChoice"] == "Gradient Color" then
		if abfOptions6aBox2:IsShown() then abfOptions6aBox2:Hide() end
		if not abfOptions6aBox3:IsShown() then abfOptions6aBox3:Show() end
	end
-- Box 1, Pop Out Button 3--
	if ABFactionBars["Bar6"]["Top"]["Animation"] then
		abfOptions6aBox1PopOut3.Text:SetText("Show")
	elseif not ABFactionBars["Bar6"]["Top"]["Animation"] then
		abfOptions6aBox1PopOut3.Text:SetText("Hide")
	end
-- Box 1, Pop Out Button 4 --
	abfOptions6aBox1PopOut4.Text:SetText(ABFactionBars["Bar6"]["Top"]["AnimationColorOptions"])
-- Box 2, Pop Out Button 1
	abfOptions6aBox2PopOut1.Text:SetText(ABFactionBars["Bar6"]["Top"]["ArtColorOptions"])
	if ABFactionBars["Bar6"]["Top"]["ArtColorOptions"] == "Custom Color" then
		if not abfOptions6aBox2Slider1:IsShown() then abfOptions6aBox2Slider1:Show() end
	else
		if abfOptions6aBox2Slider1:IsShown() then abfOptions6aBox2Slider1:Hide() end
	end
-- Box 2, Slider 1 --
	abfOptions6aBox2Slider1.Slider:SetValue(ABFactionBars["Bar6"]["Top"]["ArtColorDesaturation"] * 10)
-- Box 3, Pop Out Button 1 --
	abfOptions6aBox3PopOut1.Text:SetText(ABFactionBars["Bar6"]["Top"]["ArtGradientOptions1"])
-- Box 3, Pop Out Button 2 --
	abfOptions6aBox3PopOut2.Text:SetText(ABFactionBars["Bar6"]["Top"]["ArtGradientOptions2"])
-- Box 3, Pop Out Button 3 --
	abfOptions6aBox3PopOut3.Text:SetText(ABFactionBars["Bar6"]["Top"]["ArtGradientOrientation"])
-- Box 4, Pop Out Button 1 --
	abfOptions6aBox4PopOut1.Text:SetText(ABFactionBars["Bar6"]["Bottom"]["Art"])
	if ABFactionBars["Bar6"]["Bottom"]["Art"] == "SoftCloud" then
		if not abfOptions6aBox4PopOut3:IsShown() then abfOptions6aBox4PopOut3:Show() end
		if not abfOptions6aBox4PopOut4:IsShown() then abfOptions6aBox4PopOut4:Show() end
	else
		if abfOptions6aBox4PopOut3:IsShown() then abfOptions6aBox4PopOut3:Hide() end
		if abfOptions6aBox4PopOut4:IsShown() then abfOptions6aBox4PopOut4:Hide() end
	end
-- Box 4, Pop Out Button 2 --
	abfOptions6aBox4PopOut2.Text:SetText(ABFactionBars["Bar6"]["Bottom"]["ArtColorChoice"])
	if ABFactionBars["Bar6"]["Bottom"]["ArtColorChoice"] == "One Color" then
		if not abfOptions6aBox5:IsShown() then abfOptions6aBox5:Show() end
		if abfOptions6aBox6:IsShown() then abfOptions6aBox6:Hide() end
	elseif ABFactionBars["Bar6"]["Bottom"]["ArtColorChoice"] == "Gradient Color" then
		if abfOptions6aBox5:IsShown() then abfOptions6aBox5:Hide() end
		if not abfOptions6aBox6:IsShown() then abfOptions6aBox6:Show() end
	end
-- Box 4, Pop Out Button 3 --
	if ABFactionBars["Bar6"]["Bottom"]["Animation"] then
		abfOptions6aBox4PopOut3.Text:SetText("Show")
	elseif not ABFactionBars["Bar6"]["Bottom"]["Animation"] then
		abfOptions6aBox4PopOut3.Text:SetText("Hide")
	end
-- Box 4, Pop Out Button 4 --
	abfOptions6aBox4PopOut4.Text:SetText(ABFactionBars["Bar6"]["Bottom"]["AnimationColorOptions"])
-- Box 5, Pop Out Button 1 --
	abfOptions6aBox5PopOut1:SetText(ABFactionBars["Bar6"]["Bottom"]["ArtColorOptions"])
	if ABFactionBars["Bar6"]["Bottom"]["ArtColorOptions"] == "Custom Color" then
		if not abfOptions6aBox5Slider1:IsShown() then abfOptions6aBox5Slider1:Hide() end
	else
		if abfOptions6aBox5Slider1:IsShown() then abfOptions6aBox5Slider1:Hide() end
	end
-- Box 5, Slider 1 --
	abfOptions6aBox5Slider1.Slider:SetValue(ABFactionBars["Bar6"]["Bottom"]["ArtColorDesaturation"] * 10)
-- Box 6, Pop Out Button 1 --
	abfOptions6aBox6PopOut1.Text:SetText(ABFactionBars["Bar6"]["Bottom"]["ArtGradientOptions1"])
-- Box 6, Pop Out Button 2 --
	abfOptions6aBox6PopOut2.Text:SetText(ABFactionBars["Bar6"]["Bottom"]["ArtGradientOptions2"])
-- Box 6, Pop Out Button 2 --
	abfOptions6aBox6PopOut3.Text:SetText(ABFactionBars["Bar6"]["Bottom"]["ArtGradientOrientation"])
-- Box 7, Pop Out Button 1 --
	abfOptions6aBox7PopOut1.Text:SetText(ABFactionBars["Bar6"]["NormalTextureColorMode"])
	if ABFactionBars["Bar6"]["NormalTextureColorMode"] == "One Color" then
		if not abfOptions6aBox8:IsShown() then abfOptions6aBox8:Show() end
		if abfOptions6aBox9:IsShown() then abfOptions6aBox9:Hide() end
	elseif ABFactionBars["Bar6"]["NormalTextureColorMode"] == "Gradient Color" then
		if abfOptions6aBox8:IsShown() then abfOptions6aBox8:Hide() end
		if not abfOptions6aBox9:IsShown() then abfOptions6aBox9:Show() end
	end
-- Box 8, Pop Out Button 1 --
	abfOptions6aBox8PopOut1.Text:SetText(ABFactionBars["Bar6"]["NormalTextureColorOptions"])
-- Box 9, Pop Out Button 1 --
	abfOptions6aBox9PopOut1.Text:SetText(ABFactionBars["Bar6"]["NormalTextureGradientOptions1"])
-- Box 9, Pop Out Button 2 --
	abfOptions6aBox9PopOut2.Text:SetText(ABFactionBars["Bar6"]["NormalTextureGradientOptions2"])
-- Box 9, Pop Out Button 3 --
	abfOptions6aBox9PopOut3.Text:SetText(ABFactionBars["Bar6"]["NormalTextureGradientOrientation"])
end
-- Options Box 1, Top Art --
-- Box 1, Pop Out Button 1, Top Art choice --
-- enter --
abfOptions6aBox1PopOut1:SetScript("OnEnter", function(self)
	abfEnteringMenus(self)
	GameTooltip:SetText("|T"..C_AddOns.GetAddOnMetadata("ABF", "IconTexture")..":16|t"..abfMainColor:WrapTextInColorCode(C_AddOns.GetAddOnMetadata("ABF", "Title")).."|nChoose the Top Art for|nthe Action Bar 6") 
end)
-- leave --
abfOptions6aBox1PopOut1:SetScript("OnLeave", abfLeavingMenus)
-- drop down --
abfClickPopOut(abfOptions6aBox1PopOut1, abfOptions6aBox1PopOut1Choice0)
-- sort --
for i = 1, 3, 1 do
	_G["abfOptions6aBox1PopOut1Choice"..i]:SetParent(abfOptions6aBox1PopOut1Choice0)
	_G["abfOptions6aBox1PopOut1Choice"..i]:SetPoint("TOP", _G["abfOptions6aBox1PopOut1Choice"..i-1], "BOTTOM", 0, 0)
-- on leave --
	_G["abfOptions6aBox1PopOut1Choice"..i]:HookScript("OnLeave", function(self) abfOptions6aBox1PopOut1.Example:Hide() abfOptions6aBox1PopOut1.Example1:Hide() end)
end
-- naming at Options10 --
-- clicking --
for i = 0, 3, 1 do
	_G["abfOptions6aBox1PopOut1Choice"..i]:HookScript("OnClick", function(self, button, down)
		if button == "LeftButton" and down == false then
			ABFactionBars["Bar6"]["Top"]["Art"] = self.Text:GetText()
			abfOptions6aBox1PopOut1.Text:SetText(self.Text:GetText())
			abfOptions6aBox1PopOut1Choice0:Hide()
			if ABFactionBars["Bar6"]["Top"]["Art"] == "JailersTower" then
				if not abfOptions6aBox1PopOut3:IsShown() then abfOptions6aBox1PopOut3:Show() end
				if not abfOptions6aBox1PopOut4:IsShown() then abfOptions6aBox1PopOut4:Show() end
			else
				if abfOptions6aBox1PopOut3:IsShown() then abfOptions6aBox1PopOut3:Hide() end
				if abfOptions6aBox1PopOut4:IsShown() then abfOptions6aBox1PopOut4:Hide() end
			end
			abfSavedArtTop("Bar6", MultiBar5)
		end
	end)
end
-- entering the pop out buttons at Options10 --
-- Box 1, Pop Out Button 2, Top Art color choice --
-- enter --
abfOptions6aBox1PopOut2:SetScript("OnEnter", function(self)
	abfEnteringMenus(self)
	GameTooltip:SetText("|T"..C_AddOns.GetAddOnMetadata("ABF", "IconTexture")..":16|t"..abfMainColor:WrapTextInColorCode(C_AddOns.GetAddOnMetadata("ABF", "Title")).."|nChoose the mode color for|nthe Top Art! (one color or gradient color)") 
end)
-- leave --
abfOptions6aBox1PopOut2:SetScript("OnLeave", abfLeavingMenus)
-- drop down --
abfClickPopOut(abfOptions6aBox1PopOut2, abfOptions6aBox1PopOut2Choice0)
-- naming at Options10 --
-- sort --
for i = 1, 1, 1 do
	_G["abfOptions6aBox1PopOut2Choice"..i]:SetParent(abfOptions6aBox1PopOut2Choice0)
	_G["abfOptions6aBox1PopOut2Choice"..i]:SetPoint("TOP", _G["abfOptions6aBox1PopOut2Choice"..i-1], "BOTTOM", 0, 0)
end
-- click --
for i = 0, 1, 1 do
	_G["abfOptions6aBox1PopOut2Choice"..i]:HookScript("OnClick", function(self, button, down)
		if button == "LeftButton" and down == false then
			ABFactionBars["Bar6"]["Top"]["ArtColorChoice"] = self.Text:GetText()
			abfOptions6aBox1PopOut2.Text:SetText(self.Text:GetText())
			abfOptions6aBox1PopOut2Choice0:Hide()
			abfSavedColorTop("Bar6", MultiBar5)
			if ABFactionBars["Bar6"]["Top"]["ArtColorChoice"] == "One Color" then
				if not abfOptions6aBox2:IsShown() then abfOptions6aBox2:Show() end
				if abfOptions6aBox3:IsShown() then abfOptions6aBox3:Hide() end
			elseif ABFactionBars["Bar6"]["Top"]["ArtColorChoice"] == "Gradient Color" then
				if abfOptions6aBox2:IsShown() then abfOptions6aBox2:Hide() end
				if not abfOptions6aBox3:IsShown() then abfOptions6aBox3:Show() end
			end
		end
	end)
end
-- Box 1, Pop Out Button 3, Top Art Animation --
-- enter --
abfOptions6aBox1PopOut3:SetScript("OnEnter", function(self)
	abfEnteringMenus(self)
	GameTooltip:SetText("|T"..C_AddOns.GetAddOnMetadata("ABF", "IconTexture")..":16|t"..abfMainColor:WrapTextInColorCode(C_AddOns.GetAddOnMetadata("ABF", "Title")).."|nWhould you like the animation|nfor the Top Art to be shown?")
end)
-- leave --
abfOptions6aBox1PopOut3:SetScript("OnLeave", abfLeavingMenus)
-- drop down --
abfClickPopOut(abfOptions6aBox1PopOut3, abfOptions6aBox1PopOut3Choice0)
-- naming at Options10 --
-- sort --
for i = 1, 1, 1 do
	_G["abfOptions6aBox1PopOut3Choice"..i]:SetParent(abfOptions6aBox1PopOut3Choice0)
	_G["abfOptions6aBox1PopOut3Choice"..i]:SetPoint("TOP", _G["abfOptions6aBox1PopOut3Choice"..i-1], "BOTTOM", 0, 0)
end
-- click --
for i = 0, 1, 1 do
	_G["abfOptions6aBox1PopOut3Choice"..i]:HookScript("OnClick", function(self, button, down)
		if button == "LeftButton" and down == false then
			abfOptions6aBox1PopOut3.Text:SetText(self.Text:GetText())
			abfOptions6aBox1PopOut3Choice0:Hide()
			if self.Text:GetText() == "Hide" then
				ABFactionBars["Bar6"]["Top"]["Animation"] = false
			elseif self.Text:GetText() == "Show" then
				ABFactionBars["Bar6"]["Top"]["Animation"] = true
			end
			abfSavedTopArtAnimation("Bar6", MultiBar5)
		end
	end)
end
-- Box 1, Pop Out Button 4, Bottom Art Animation Color --
-- enter --
abfOptions6aBox1PopOut4:SetScript("OnEnter", function(self)
	abfEnteringMenus(self)
	GameTooltip:SetText("|T"..C_AddOns.GetAddOnMetadata("ABF", "IconTexture")..":16|t"..abfMainColor:WrapTextInColorCode(C_AddOns.GetAddOnMetadata("ABF", "Title")).."|nChoose the color for the animation")
end)
-- leave --
abfOptions6aBox1PopOut4:SetScript("OnLeave", abfLeavingMenus)
-- drop down --
abfClickPopOut(abfOptions6aBox1PopOut4, abfOptions6aBox1PopOut4Choice0)
-- naming at Options10 --
-- sort --
for i = 1, 3, 1 do
	_G["abfOptions6aBox1PopOut4Choice"..i]:SetParent(abfOptions6aBox1PopOut4Choice0)
	_G["abfOptions6aBox1PopOut4Choice"..i]:SetPoint("TOP", _G["abfOptions6aBox1PopOut4Choice"..i-1], "BOTTOM", 0, 0)
end
-- click --
for i = 0, 3, 1 do
	_G["abfOptions6aBox1PopOut4Choice"..i]:HookScript("OnClick", function(self, button, down)
		if button == "LeftButton" and down == false then
			ABFactionBars["Bar6"]["Top"]["AnimationColorOptions"] = self.Text:GetText()
			abfOptions6aBox1PopOut4.Text:SetText(self.Text:GetText())
			abfOptions6aBox1PopOut4Choice0:Hide()
			if ABFactionBars["Bar6"]["Top"]["AnimationColorOptions"] == "Default Color" then
				ABFactionBars["Bar6"]["Top"]["AnimationColor"] = {r = 1, g = 1, b = 1, a = 1}
				abfSavedTopArtAnimation("Bar6", MultiBar5)
			elseif ABFactionBars["Bar6"]["Top"]["AnimationColorOptions"] == "Class Color" then
				ABFactionBars["Bar6"]["Top"]["AnimationColor"] = CreateColor(abfClassColor:GetRGB())
				abfSavedTopArtAnimation("Bar6", MultiBar5)
			elseif ABFactionBars["Bar6"]["Top"]["AnimationColorOptions"] == "Faction Color" then
				ABFactionBars["Bar6"]["Top"]["AnimationColor"] = CreateColor(abfFactionColor:GetRGB())
				abfSavedTopArtAnimation("Bar6", MultiBar5)
			elseif ABFactionBars["Bar6"]["Top"]["AnimationColorOptions"] == "Custom Color" then
				abfShowColorPicker("Bar6", MultiBar5, "Top", abfSavedTopArtAnimation, "AnimationColor")
			end
		end
	end)
end
-- Options Box 2, Top color one --
-- Box 2, Pop Out Button 1, Top color one choices --
-- enter --
abfOptions6aBox2PopOut1:SetScript("OnEnter", function(self)
	abfEnteringMenus(self)
	GameTooltip:SetText("|T"..C_AddOns.GetAddOnMetadata("ABF", "IconTexture")..":16|t"..abfMainColor:WrapTextInColorCode(C_AddOns.GetAddOnMetadata("ABF", "Title")).."|nChoose the color for the Top Art")
end)
-- leave --
abfOptions6aBox2PopOut1:SetScript("OnLeave", abfLeavingMenus)
-- drop down --
abfClickPopOut(abfOptions6aBox2PopOut1, abfOptions6aBox2PopOut1Choice0)
-- naming at Options10 --
-- sort --
for i = 1, 3, 1 do
	_G["abfOptions6aBox2PopOut1Choice"..i]:SetParent(abfOptions6aBox2PopOut1Choice0)
	_G["abfOptions6aBox2PopOut1Choice"..i]:SetPoint("TOP", _G["abfOptions6aBox2PopOut1Choice"..i-1], "BOTTOM", 0, 0)
end
-- click --
for i = 0, 3, 1 do
	_G["abfOptions6aBox2PopOut1Choice"..i]:HookScript("OnClick", function(self, button, down)
		if button == "LeftButton" and down == false then
			ABFactionBars["Bar6"]["Top"]["ArtColorOptions"] = self.Text:GetText()
			abfOptions6aBox2PopOut1.Text:SetText(self.Text:GetText())
			abfOptions6aBox2PopOut1Choice0:Hide()
			if ABFactionBars["Bar6"]["Top"]["ArtColorOptions"] == "Default Color" then
				ABFactionBars["Bar6"]["Top"]["ArtColor"] = {r = 1, g = 1, b = 1, a = 1}
				if abfOptions6aBox2Slider1:IsShown() then abfOptions6aBox2Slider1:Hide() end
				abfSavedColorTop("Bar6", MultiBar5)
			elseif ABFactionBars["Bar6"]["Top"]["ArtColorOptions"] == "Class Color" then
				ABFactionBars["Bar6"]["Top"]["ArtColor"] = CreateColor(abfClassColor:GetRGB())
				if abfOptions6aBox2Slider1:IsShown() then abfOptions6aBox2Slider1:Hide() end
				abfSavedColorTop("Bar6", MultiBar5)
			elseif ABFactionBars["Bar6"]["Top"]["ArtColorOptions"] == "Faction Color" then
				ABFactionBars["Bar6"]["Top"]["ArtColor"] = CreateColor(abfFactionColor:GetRGB())
				if abfOptions6aBox2Slider1:IsShown() then abfOptions6aBox2Slider1:Hide() end
				abfSavedColorTop("Bar6", MultiBar5)
			elseif ABFactionBars["Bar6"]["Top"]["ArtColorOptions"] == "Custom Color" then
				if not abfOptions6aBox2Slider1:IsShown() then abfOptions6aBox2Slider1:Show() end
				abfShowColorPicker("Bar6", MultiBar5, "Top", abfSavedColorTop, "ArtColor")
			end
		end
	end)
end
-- Box 2, Slider 1, Top Desaturation --
-- min max values --
abfOptions6aBox2Slider1.MinText:SetText(0)
abfOptions6aBox2Slider1.MaxText:SetText(1)
abfOptions6aBox2Slider1.Slider:SetMinMaxValues(0, 10)
-- enter --
abfOptions6aBox2Slider1.Slider:SetScript("OnEnter", function(self)
	abfEnteringMenus(self)
	GameTooltip:SetText("|T"..C_AddOns.GetAddOnMetadata("ABF", "IconTexture")..":16|t "..abfMainColor:WrapTextInColorCode(C_AddOns.GetAddOnMetadata("ABF", "Title")).."|nYou can also use your mousewheel|nor the buttons to the edge|nto change the value!") 
end)
-- leave --
abfOptions6aBox2Slider1.Slider:SetScript("OnLeave", abfLeavingMenus)
-- on mouse wheel --
abfOptions6aBox2Slider1.Slider:SetScript("OnMouseWheel", abfMouseWheelSlider)
-- On Value Changed --
abfOptions6aBox2Slider1.Slider:SetScript("OnValueChanged", function (self, value, userInput)
	abfOptions6aBox2Slider1.TopText:SetText("Desaturation of the Artwork: "..(self:GetValue()/10))
	ABFactionBars["Bar6"]["Top"]["ArtColorDesaturation"] = self:GetValue()/10
	abfSavedColorTop("Bar6", MultiBar5)
end)
-- Options Box 3, Top color Gradient --
-- Box 3, Pop Out Button 1, Top Color Gradient One --
-- enter --
abfOptions6aBox3PopOut1:SetScript("OnEnter", function(self)
	abfEnteringMenus(self)
	GameTooltip:SetText("|T"..C_AddOns.GetAddOnMetadata("ABF", "IconTexture")..":16|t"..abfMainColor:WrapTextInColorCode(C_AddOns.GetAddOnMetadata("ABF", "Title")).."|nChoose the first grandient color for the Top Art")
end)
-- leave --
abfOptions6aBox3PopOut1:SetScript("OnLeave", abfLeavingMenus)
-- drop down --
abfClickPopOut(abfOptions6aBox3PopOut1, abfOptions6aBox3PopOut1Choice0)
-- naming at Options10 --
-- sort --
for i = 1, 3, 1 do
	_G["abfOptions6aBox3PopOut1Choice"..i]:SetParent(abfOptions6aBox3PopOut1Choice0)
	_G["abfOptions6aBox3PopOut1Choice"..i]:SetPoint("TOP", _G["abfOptions6aBox3PopOut1Choice"..i-1], "BOTTOM", 0, 0)
end
-- click --
for i = 0, 3, 1 do
	_G["abfOptions6aBox3PopOut1Choice"..i]:HookScript("OnClick", function(self, button, down)
		if button == "LeftButton" and down == false then
			ABFactionBars["Bar6"]["Top"]["ArtGradientOptions1"] = self.Text:GetText()
			abfOptions6aBox3PopOut1.Text:SetText(self.Text:GetText())
			abfOptions6aBox3PopOut1Choice0:Hide()
			if ABFactionBars["Bar6"]["Top"]["ArtGradientOptions1"] == "Default Color" then
				ABFactionBars["Bar6"]["Top"]["ArtGradientColor1"] = {r = 1, g = 1, b = 1, a = 1}
				abfSavedColorTop("Bar6", MultiBar5)
			elseif ABFactionBars["Bar6"]["Top"]["ArtGradientOptions1"] == "Class Color" then
				ABFactionBars["Bar6"]["Top"]["ArtGradientColor1"] = CreateColor(abfClassColor:GetRGB())
				abfSavedColorTop("Bar6", MultiBar5)
			elseif ABFactionBars["Bar6"]["Top"]["ArtGradientOptions1"] == "Faction Color" then
				ABFactionBars["Bar6"]["Top"]["ArtGradientColor1"] = CreateColor(abfFactionColor:GetRGB())
				abfSavedColorTop("Bar6", MultiBar5)
			elseif ABFactionBars["Bar6"]["Top"]["ArtGradientOptions1"] == "Custom Color" then
				abfShowColorPicker("Bar6", MultiBar5, "Top", abfSavedColorTop, "ArtGradientColor1")
			end
		end
	end)
end
-- Box 3, Pop Out Button 2, Top Color Gradient One --
-- enter --
abfOptions6aBox3PopOut2:SetScript("OnEnter", function(self)
	abfEnteringMenus(self)
	GameTooltip:SetText("|T"..C_AddOns.GetAddOnMetadata("ABF", "IconTexture")..":16|t"..abfMainColor:WrapTextInColorCode(C_AddOns.GetAddOnMetadata("ABF", "Title")).."|nChoose the second grandient color for the Top Art")
end)
-- leave --
abfOptions6aBox3PopOut2:SetScript("OnLeave", abfLeavingMenus)
-- drop down --
abfClickPopOut(abfOptions6aBox3PopOut2, abfOptions6aBox3PopOut2Choice0)
-- naming at Options10 --
-- sort --
for i = 1, 3, 1 do
	_G["abfOptions6aBox3PopOut2Choice"..i]:SetParent(abfOptions6aBox3PopOut2Choice0)
	_G["abfOptions6aBox3PopOut2Choice"..i]:SetPoint("TOP", _G["abfOptions6aBox3PopOut2Choice"..i-1], "BOTTOM", 0, 0)
end
-- click --
for i = 0, 3, 1 do
	_G["abfOptions6aBox3PopOut2Choice"..i]:HookScript("OnClick", function(self, button, down)
		if button == "LeftButton" and down == false then
			ABFactionBars["Bar6"]["Top"]["ArtGradientOptions2"] = self.Text:GetText()
			abfOptions6aBox3PopOut2.Text:SetText(self.Text:GetText())
			abfOptions6aBox3PopOut2Choice0:Hide()
			if ABFactionBars["Bar6"]["Top"]["ArtGradientOptions2"] == "Default Color" then
				ABFactionBars["Bar6"]["Top"]["ArtGradientColor2"] = {r = 1, g = 1, b = 1, a = 1}
				abfSavedColorTop("Bar6", MultiBar5)
			elseif ABFactionBars["Bar6"]["Top"]["ArtGradientOptions2"] == "Class Color" then
				ABFactionBars["Bar6"]["Top"]["ArtGradientColor2"] = CreateColor(abfClassColor:GetRGB())
				abfSavedColorTop("Bar6", MultiBar5)
			elseif ABFactionBars["Bar6"]["Top"]["ArtGradientOptions2"] == "Faction Color" then
				ABFactionBars["Bar6"]["Top"]["ArtGradientColor2"] = CreateColor(abfFactionColor:GetRGB())
				abfSavedColorTop("Bar6", MultiBar5)
			elseif ABFactionBars["Bar6"]["Top"]["ArtGradientOptions2"] == "Custom Color" then
				abfShowColorPicker("Bar6", MultiBar5, "Top", abfSavedColorTop, "ArtGradientColor2")
			end
		end
	end)
end
-- Box 3, Pop Out Button 3, Top Color Gradient Orientation --
-- enter --
abfOptions6aBox3PopOut3:SetScript("OnEnter", function(self)
	abfEnteringMenus(self)
	GameTooltip:SetText("|T"..C_AddOns.GetAddOnMetadata("ABF", "IconTexture")..":16|t"..abfMainColor:WrapTextInColorCode(C_AddOns.GetAddOnMetadata("ABF", "Title")).."|nChoose the orientation|nof the colors for the Top Art")
end)
-- leave --
abfOptions6aBox3PopOut3:SetScript("OnLeave", abfLeavingMenus)
-- drop down --
abfClickPopOut(abfOptions6aBox3PopOut3, abfOptions6aBox3PopOut3Choice0)
-- naming at Options10 --
-- sort --
for i = 1, 1, 1 do
	_G["abfOptions6aBox3PopOut3Choice"..i]:SetParent(abfOptions6aBox3PopOut3Choice0)
	_G["abfOptions6aBox3PopOut3Choice"..i]:SetPoint("TOP", _G["abfOptions6aBox3PopOut3Choice"..i-1], "BOTTOM", 0, 0)
end
-- click --
for i = 0, 1, 1 do
	_G["abfOptions6aBox3PopOut3Choice"..i]:HookScript("OnClick", function(self, button, down)
		if button == "LeftButton" and down == false then
			ABFactionBars["Bar6"]["Top"]["ArtGradientOrientation"] = self.Text:GetText()
			abfOptions6aBox3PopOut3.Text:SetText(self.Text:GetText())
			abfOptions6aBox3PopOut3Choice0:Hide()
			abfSavedColorTop("Bar6", MultiBar5)
		end
	end)
end
-- Options Box 4, Bottom Art --
-- Box 4, Pop Out Button 1, Bottom Art choice --
-- enter --
abfOptions6aBox4PopOut1:SetScript("OnEnter", function(self)
	abfEnteringMenus(self)
	GameTooltip:SetText("|T"..C_AddOns.GetAddOnMetadata("ABF", "IconTexture")..":16|t"..abfMainColor:WrapTextInColorCode(C_AddOns.GetAddOnMetadata("ABF", "Title")).."|nChoose the Bottom Art for|nthe Action Bar 6")
end)
-- leave --
abfOptions6aBox4PopOut1:SetScript("OnLeave", abfLeavingMenus)
-- drop down --
abfClickPopOut(abfOptions6aBox4PopOut1, abfOptions6aBox4PopOut1Choice0)
-- naming at Options10 --
-- sort --
for i = 1, 3, 1 do
	_G["abfOptions6aBox4PopOut1Choice"..i]:SetParent(abfOptions6aBox4PopOut1Choice0)
	_G["abfOptions6aBox4PopOut1Choice"..i]:SetPoint("TOP", _G["abfOptions6aBox4PopOut1Choice"..i-1], "BOTTOM", 0, 0)
end
-- click --
for i = 0, 3, 1 do
	_G["abfOptions6aBox4PopOut1Choice"..i]:HookScript("OnClick", function(self, button, down)
		if button == "LeftButton" and down == false then
			ABFactionBars["Bar6"]["Bottom"]["Art"] = self.Text:GetText()
			abfOptions6aBox4PopOut1.Text:SetText(self.Text:GetText())
			abfOptions6aBox4PopOut1Choice0:Hide()
			if ABFactionBars["Bar6"]["Bottom"]["Art"] == "SoftCloud" then
				if not abfOptions6aBox4PopOut3:IsShown() then abfOptions6aBox4PopOut3:Show() end
				if not abfOptions6aBox4PopOut4:IsShown() then abfOptions6aBox4PopOut4:Show() end
			else
				if abfOptions6aBox4PopOut3:IsShown() then abfOptions6aBox4PopOut3:Hide() end
				if abfOptions6aBox4PopOut4:IsShown() then abfOptions6aBox4PopOut4:Hide() end
			end
			abfSavedArtBottom("Bar6", MultiBar5)
		end
	end)
end
-- Box 4, Pop Out Button 2, Bottom Art Color Choice --
-- enter --
abfOptions6aBox4PopOut2:SetScript("OnEnter", function(self)
	abfEnteringMenus(self)
	GameTooltip:SetText("|T"..C_AddOns.GetAddOnMetadata("ABF", "IconTexture")..":16|t"..abfMainColor:WrapTextInColorCode(C_AddOns.GetAddOnMetadata("ABF", "Title")).."|nChoose the mode color for|nthe Bottom Art! (one color or gradient color)") 
end)
-- leave --
abfOptions6aBox4PopOut2:SetScript("OnLeave", abfLeavingMenus)
-- drop down --
abfClickPopOut(abfOptions6aBox4PopOut2, abfOptions6aBox4PopOut2Choice0)
-- naming at Options10 --
-- sort --
for i = 1, 1, 1 do
	_G["abfOptions6aBox4PopOut2Choice"..i]:SetParent(abfOptions6aBox4PopOut2Choice0)
	_G["abfOptions6aBox4PopOut2Choice"..i]:SetPoint("TOP", _G["abfOptions6aBox4PopOut2Choice"..i-1], "BOTTOM", 0, 0)
end
-- click --
for i = 0, 1, 1 do
	_G["abfOptions6aBox4PopOut2Choice"..i]:HookScript("OnClick", function(self, button, down)
		if button == "LeftButton" and down == false then
			ABFactionBars["Bar6"]["Bottom"]["ArtColorChoice"] = self.Text:GetText()
			abfOptions6aBox4PopOut2.Text:SetText(self.Text:GetText())
			abfOptions6aBox4PopOut2Choice0:Hide()
			abfSavedColorBottom("Bar6", MultiBar5)
			if ABFactionBars["Bar6"]["Bottom"]["ArtColorChoice"] == "One Color" then
				if not abfOptions6aBox5:IsShown() then abfOptions6aBox5:Show() end
				if abfOptions6aBox6:IsShown() then abfOptions6aBox6:Hide() end
			elseif ABFactionBars["Bar6"]["Bottom"]["ArtColorChoice"] == "Gradient Color" then
				if abfOptions6aBox5:IsShown() then abfOptions6aBox5:Hide() end
				if not abfOptions6aBox6:IsShown() then abfOptions6aBox6:Show() end
			end
		end
	end)
end
-- Box 4, Pop Out Button 3, Bottom Art Animation --
-- enter --
abfOptions6aBox4PopOut3:SetScript("OnEnter", function(self)
	abfEnteringMenus(self)
	GameTooltip:SetText("|T"..C_AddOns.GetAddOnMetadata("ABF", "IconTexture")..":16|t"..abfMainColor:WrapTextInColorCode(C_AddOns.GetAddOnMetadata("ABF", "Title")).."|nWhould you like the animation|nfor the Bottom Art to be shown?")
end)
-- leave --
abfOptions6aBox4PopOut3:SetScript("OnLeave", abfLeavingMenus)
-- drop down --
abfClickPopOut(abfOptions6aBox4PopOut3, abfOptions6aBox4PopOut3Choice0)
-- naming at Options10 --
-- sort --
for i = 1, 1, 1 do
	_G["abfOptions6aBox4PopOut3Choice"..i]:SetParent(abfOptions6aBox4PopOut3Choice0)
	_G["abfOptions6aBox4PopOut3Choice"..i]:SetPoint("TOP", _G["abfOptions6aBox4PopOut3Choice"..i-1], "BOTTOM", 0, 0)
end
-- click --
for i = 0, 1, 1 do
	_G["abfOptions6aBox4PopOut3Choice"..i]:HookScript("OnClick", function(self, button, down)
		if button == "LeftButton" and down == false then
			abfOptions6aBox4PopOut3.Text:SetText(self.Text:GetText())
			abfOptions6aBox4PopOut3Choice0:Hide()
			if self.Text:GetText() == "Hide" then
				ABFactionBars["Bar6"]["Bottom"]["Animation"] = false
			elseif self.Text:GetText() == "Show" then
				ABFactionBars["Bar6"]["Bottom"]["Animation"] = true
			end
			--abfSavedAnimationBottom("Bar6", MultiBar5)
		end
	end)
end
-- Box 4, Pop Out Button 4, Bottom Art Animation Color --
-- enter --
abfOptions6aBox4PopOut4:SetScript("OnEnter", function(self)
	abfEnteringMenus(self)
	GameTooltip:SetText("|T"..C_AddOns.GetAddOnMetadata("ABF", "IconTexture")..":16|t"..abfMainColor:WrapTextInColorCode(C_AddOns.GetAddOnMetadata("ABF", "Title")).."|nChoose the color for the animation")
end)
-- leave --
abfOptions6aBox4PopOut4:SetScript("OnLeave", abfLeavingMenus)
-- drop down --
abfClickPopOut(abfOptions6aBox4PopOut4, abfOptions6aBox4PopOut4Choice0)
-- naming at Options10 --
-- sort --
for i = 1, 3, 1 do
	_G["abfOptions6aBox4PopOut4Choice"..i]:SetParent(abfOptions6aBox4PopOut4Choice0)
	_G["abfOptions6aBox4PopOut4Choice"..i]:SetPoint("TOP", _G["abfOptions6aBox4PopOut4Choice"..i-1], "BOTTOM", 0, 0)
end
-- click --
for i = 0, 3, 1 do
	_G["abfOptions6aBox4PopOut4Choice"..i]:HookScript("OnClick", function(self, button, down)
		if button == "LeftButton" and down == false then
			ABFactionBars["Bar6"]["Bottom"]["AnimationColorOptions"] = self.Text:GetText()
			abfOptions6aBox4PopOut4.Text:SetText(self.Text:GetText())
			abfOptions6aBox4PopOut4Choice0:Hide()
			if ABFactionBars["Bar6"]["Bottom"]["AnimationColorOptions"] == "Default Color" then
				ABFactionBars["Bar6"]["Bottom"]["AnimationColor"] = {r = 1, g = 1, b = 1, a = 1}
				--abfSavedAnimationBottomColor("Bar6", MultiBar5)
			elseif ABFactionBars["Bar6"]["Bottom"]["AnimationColorOptions"] == "Class Color" then
				ABFactionBars["Bar6"]["Bottom"]["AnimationColor"] = CreateColor(abfClassColor:GetRGB())
				--abfSavedAnimationBottomColor("Bar6", MultiBar5)
			elseif ABFactionBars["Bar6"]["Bottom"]["AnimationColorOptions"] == "Faction Color" then
				ABFactionBars["Bar6"]["Bottom"]["AnimationColor"] = CreateColor(abfFactionColor:GetRGB())
				--abfSavedAnimationBottomColor("Bar6", MultiBar5)
			elseif ABFactionBars["Bar6"]["Bottom"]["AnimationColorOptions"] == "Custom Color" then
				--abfShowColorPicker("Bar6", MultiBar5, "Bottom", abfSavedAnimationBottomColor, "AnimationColor")
			end
		end
	end)
end
-- Options Box 5, Bottom Color One --
-- Box 5, Pop Out Button 1, Bottom Color One Choices --
-- enter --
abfOptions6aBox5PopOut1:SetScript("OnEnter", function(self)
	abfEnteringMenus(self)
	GameTooltip:SetText("|T"..C_AddOns.GetAddOnMetadata("ABF", "IconTexture")..":16|t"..abfMainColor:WrapTextInColorCode(C_AddOns.GetAddOnMetadata("ABF", "Title")).."|nChoose the color for the Bottom Art")
end)
-- leave --
abfOptions6aBox5PopOut1:SetScript("OnLeave", abfLeavingMenus)
-- drop down --
abfClickPopOut(abfOptions6aBox5PopOut1, abfOptions6aBox5PopOut1Choice0)
-- naming at Options10 --
-- sort --
for i = 1, 3, 1 do
	_G["abfOptions6aBox5PopOut1Choice"..i]:SetParent(abfOptions6aBox5PopOut1Choice0)
	_G["abfOptions6aBox5PopOut1Choice"..i]:SetPoint("TOP", _G["abfOptions6aBox5PopOut1Choice"..i-1], "BOTTOM", 0, 0)
end
-- click --
for i = 0, 3, 1 do
	_G["abfOptions6aBox5PopOut1Choice"..i]:HookScript("OnClick", function(self, button, down)
		if button == "LeftButton" and down == false then
			ABFactionBars["Bar6"]["Bottom"]["ArtColorOptions"] = self.Text:GetText()
			abfOptions6aBox5PopOut1.Text:SetText(self.Text:GetText())
			abfOptions6aBox5PopOut1Choice0:Hide()
			if ABFactionBars["Bar6"]["Bottom"]["ArtColorOptions"] == "Default Color" then
				ABFactionBars["Bar6"]["Bottom"]["ArtColor"] = {r = 1, g = 1, b = 1, a = 1}
				if abfOptions6aBox5Slider1:IsShown() then abfOptions6aBox5Slider1:Hide() end
				abfSavedColorBottom("Bar6", MultiBar5)
			elseif ABFactionBars["Bar6"]["Bottom"]["ArtColorOptions"] == "Class Color" then
				ABFactionBars["Bar6"]["Bottom"]["ArtColor"] = CreateColor(abfClassColor:GetRGB())
				if abfOptions6aBox5Slider1:IsShown() then abfOptions6aBox5Slider1:Hide() end
				abfSavedColorBottom("Bar6", MultiBar5)
			elseif ABFactionBars["Bar6"]["Bottom"]["ArtColorOptions"] == "Faction Color" then
				ABFactionBars["Bar6"]["Bottom"]["ArtColor"] = CreateColor(abfFactionColor:GetRGB())
				if abfOptions6aBox5Slider1:IsShown() then abfOptions6aBox5Slider1:Hide() end
				abfSavedColorBottom("Bar6", MultiBar5)
			elseif ABFactionBars["Bar6"]["Bottom"]["ArtColorOptions"] == "Custom Color" then
				if not abfOptions6aBox5Slider1:IsShown() then abfOptions6aBox5Slider1:Show() end
				abfShowColorPicker("Bar6", MultiBar5, "Bottom", abfSavedColorBottom, "ArtColor")
			end
		end
	end)
end
-- Box 5, Slider 1, Bottom Desaturation --
-- min max values --
abfOptions6aBox5Slider1.MinText:SetText(0)
abfOptions6aBox5Slider1.MaxText:SetText(1)
abfOptions6aBox5Slider1.Slider:SetMinMaxValues(0, 10)
-- enter --
abfOptions6aBox5Slider1.Slider:SetScript("OnEnter", function(self)
	abfEnteringMenus(self)
	GameTooltip:SetText("|T"..C_AddOns.GetAddOnMetadata("ABF", "IconTexture")..":16|t "..abfMainColor:WrapTextInColorCode(C_AddOns.GetAddOnMetadata("ABF", "Title")).."|nYou can also use your mousewheel|nor the buttons to the edge|nto change the value!") 
end)
-- leave --
abfOptions6aBox5Slider1.Slider:SetScript("OnLeave", abfLeavingMenus)
-- on mouse wheel --
abfOptions6aBox5Slider1.Slider:SetScript("OnMouseWheel", abfMouseWheelSlider)
-- On Value Changed --
abfOptions6aBox5Slider1.Slider:SetScript("OnValueChanged", function (self, value, userInput)
	abfOptions6aBox5Slider1.TopText:SetText("Desaturation of the Artwork: "..(self:GetValue()/10))
	ABFactionBars["Bar6"]["Bottom"]["ArtColorDesaturation"] = self:GetValue()/10
	abfSavedColorBottom("Bar6", MultiBar5)
end)
-- Options Box 6, Bottom Color Gradient --
-- Box 6, Pop Out Button 1, Bottom Color Gradient One --
-- enter --
abfOptions6aBox6PopOut1:SetScript("OnEnter", function(self)
	abfEnteringMenus(self)
	GameTooltip:SetText("|T"..C_AddOns.GetAddOnMetadata("ABF", "IconTexture")..":16|t"..abfMainColor:WrapTextInColorCode(C_AddOns.GetAddOnMetadata("ABF", "Title")).."|nChoose the first grandient color for the Bottom Art")
end)
-- leave --
abfOptions6aBox6PopOut1:SetScript("OnLeave", abfLeavingMenus)
-- drop down --
abfClickPopOut(abfOptions6aBox6PopOut1, abfOptions6aBox6PopOut1Choice0)
-- naming at Options10 --
-- sort --
for i = 1, 3, 1 do
	_G["abfOptions6aBox6PopOut1Choice"..i]:SetParent(abfOptions6aBox6PopOut1Choice0)
	_G["abfOptions6aBox6PopOut1Choice"..i]:SetPoint("TOP", _G["abfOptions6aBox6PopOut1Choice"..i-1], "BOTTOM", 0, 0)
end
-- click --
for i = 0, 3, 1 do
	_G["abfOptions6aBox6PopOut1Choice"..i]:HookScript("OnClick", function(self, button, down)
		if button == "LeftButton" and down == false then
			ABFactionBars["Bar6"]["Bottom"]["ArtGradientOptions1"] = self.Text:GetText()
			abfOptions6aBox6PopOut1.Text:SetText(self.Text:GetText())
			abfOptions6aBox6PopOut1Choice0:Hide()
			if ABFactionBars["Bar6"]["Bottom"]["ArtGradientOptions1"] == "Default Color" then
				ABFactionBars["Bar6"]["Bottom"]["ArtGradientColor1"] = {r = 1, g = 1, b = 1, a = 1}
				abfSavedColorBottom("Bar6", MultiBar5)
			elseif ABFactionBars["Bar6"]["Bottom"]["ArtGradientOptions1"] == "Class Color" then
				ABFactionBars["Bar6"]["Bottom"]["ArtGradientColor1"] = CreateColor(abfClassColor:GetRGB())
				abfSavedColorBottom("Bar6", MultiBar5)
			elseif ABFactionBars["Bar6"]["Bottom"]["ArtGradientOptions1"] == "Faction Color" then
				ABFactionBars["Bar6"]["Bottom"]["ArtGradientColor1"] = CreateColor(abfFactionColor:GetRGB())
				abfSavedColorBottom("Bar6", MultiBar5)
			elseif ABFactionBars["Bar6"]["Bottom"]["ArtGradientOptions1"] == "Custom Color" then
				abfShowColorPicker("Bar6", MultiBar5, "Bottom", abfSavedColorBottom, "ArtGradientColor1")
			end
		end
	end)
end
-- Box 6, Pop Out Button 2, Bottom Color Gradient Two --
-- enter --
abfOptions6aBox6PopOut2:SetScript("OnEnter", function(self)
	abfEnteringMenus(self)
	GameTooltip:SetText("|T"..C_AddOns.GetAddOnMetadata("ABF", "IconTexture")..":16|t"..abfMainColor:WrapTextInColorCode(C_AddOns.GetAddOnMetadata("ABF", "Title")).."|nChoose the second grandient color for the Bottom Art")
end)
-- leave --
abfOptions6aBox6PopOut2:SetScript("OnLeave", abfLeavingMenus)
-- drop down --
abfClickPopOut(abfOptions6aBox6PopOut2, abfOptions6aBox6PopOut2Choice0)
-- naming at Options10 --
-- sort --
for i = 1, 3, 1 do
	_G["abfOptions6aBox6PopOut2Choice"..i]:SetParent(abfOptions6aBox6PopOut2Choice0)
	_G["abfOptions6aBox6PopOut2Choice"..i]:SetPoint("TOP", _G["abfOptions6aBox6PopOut2Choice"..i-1], "BOTTOM", 0, 0)
end
-- click --
for i = 0, 3, 1 do
	_G["abfOptions6aBox6PopOut2Choice"..i]:HookScript("OnClick", function(self, button, down)
		if button == "LeftButton" and down == false then
			ABFactionBars["Bar6"]["Bottom"]["ArtGradientOptions2"] = self.Text:GetText()
			abfOptions6aBox6PopOut2.Text:SetText(self.Text:GetText())
			abfOptions6aBox6PopOut2Choice0:Hide()
			if ABFactionBars["Bar6"]["Bottom"]["ArtGradientOptions2"] == "Default Color" then
				ABFactionBars["Bar6"]["Bottom"]["ArtGradientColor2"] = {r = 1, g = 1, b = 1, a = 1}
				abfSavedColorBottom("Bar6", MultiBar5)
			elseif ABFactionBars["Bar6"]["Bottom"]["ArtGradientOptions2"] == "Class Color" then
				ABFactionBars["Bar6"]["Bottom"]["ArtGradientColor2"] = CreateColor(abfClassColor:GetRGB())
				abfSavedColorBottom("Bar6", MultiBar5)
			elseif ABFactionBars["Bar6"]["Bottom"]["ArtGradientOptions2"] == "Faction Color" then
				ABFactionBars["Bar6"]["Bottom"]["ArtGradientColor2"] = CreateColor(abfFactionColor:GetRGB())
				abfSavedColorBottom("Bar6", MultiBar5)
			elseif ABFactionBars["Bar6"]["Bottom"]["ArtGradientOptions2"] == "Custom Color" then
				abfShowColorPicker("Bar6", MultiBar5, "Bottom", abfSavedColorBottom, "ArtGradientColor2")
			end
		end
	end)
end
-- Box 6, Pop Out Button 3, Bottom Color Gradient Orientation --
-- enter --
abfOptions6aBox6PopOut3:SetScript("OnEnter", function(self)
	abfEnteringMenus(self)
	GameTooltip:SetText("|T"..C_AddOns.GetAddOnMetadata("ABF", "IconTexture")..":16|t"..abfMainColor:WrapTextInColorCode(C_AddOns.GetAddOnMetadata("ABF", "Title")).."|nChoose the orientation|nof the colors for the Bottom Art")
end)
-- leave --
abfOptions6aBox6PopOut3:SetScript("OnLeave", abfLeavingMenus)
-- drop down --
abfClickPopOut(abfOptions6aBox6PopOut3, abfOptions6aBox6PopOut3Choice0)
-- naming at Options10 --
-- sort --
for i = 1, 1, 1 do
	_G["abfOptions6aBox6PopOut3Choice"..i]:SetParent(abfOptions6aBox6PopOut3Choice0)
	_G["abfOptions6aBox6PopOut3Choice"..i]:SetPoint("TOP", _G["abfOptions6aBox6PopOut3Choice"..i-1], "BOTTOM", 0, 0)
end
-- click --
for i = 0, 1, 1 do
	_G["abfOptions6aBox6PopOut3Choice"..i]:HookScript("OnClick", function(self, button, down)
		if button == "LeftButton" and down == false then
			ABFactionBars["Bar6"]["Bottom"]["ArtGradientOrientation"] = self.Text:GetText()
			abfOptions6aBox6PopOut3.Text:SetText(self.Text:GetText())
			abfOptions6aBox6PopOut3Choice0:Hide()
			abfSavedColorBottom("Bar6", MultiBar5)
		end
	end)
end
-- Options Box 7, Normal Texture Color --
-- Box 7, Pop Out Button 1, Normal Texture Color Choice --
-- enter --
abfOptions6aBox7PopOut1:SetScript("OnEnter", function(self)
	abfEnteringMenus(self)
	GameTooltip:SetText("|T"..C_AddOns.GetAddOnMetadata("ABF", "IconTexture")..":16|t"..abfMainColor:WrapTextInColorCode(C_AddOns.GetAddOnMetadata("ABF", "Title")).."|nChoose the mode color for|nthe Buttons Border! (one color or gradient color)") 
end)
-- leave --
abfOptions6aBox7PopOut1:SetScript("OnLeave", abfLeavingMenus)
-- drop down --
abfClickPopOut(abfOptions6aBox7PopOut1, abfOptions6aBox7PopOut1Choice0)
-- naming at Options10 --
-- sort --
for i = 1, 1, 1 do
	_G["abfOptions6aBox7PopOut1Choice"..i]:SetParent(abfOptions6aBox7PopOut1Choice0)
	_G["abfOptions6aBox7PopOut1Choice"..i]:SetPoint("TOP", _G["abfOptions6aBox7PopOut1Choice"..i-1], "BOTTOM", 0, 0)
end
-- click --
for i = 0, 1, 1 do
	_G["abfOptions6aBox7PopOut1Choice"..i]:HookScript("OnClick", function(self, button, down)
		if button == "LeftButton" and down == false then
			ABFactionBars["Bar6"]["NormalTextureColorMode"] = self.Text:GetText()
			abfOptions6aBox7PopOut1.Text:SetText(self.Text:GetText())
			abfOptions6aBox7PopOut1Choice0:Hide()
			abfSavedColorNormalTexture("Bar6", MultiBar5)
			if ABFactionBars["Bar6"]["NormalTextureColorMode"] == "One Color" then
				if not abfOptions6aBox8:IsShown() then abfOptions6aBox8:Show() end
				if abfOptions6aBox9:IsShown() then abfOptions6aBox9:Hide() end
			elseif ABFactionBars["Bar6"]["NormalTextureColorMode"] == "Gradient Color" then
				if abfOptions6aBox8:IsShown() then abfOptions6aBox8:Hide() end
				if not abfOptions6aBox9:IsShown() then abfOptions6aBox9:Show() end
			end
		end
	end)
end
-- Options Box 8, Normal Texture Color One --
-- Box 8, Pop Out Button 1, Normal Texture Color One Choices --
-- enter --
abfOptions6aBox8PopOut1:SetScript("OnEnter", function(self)
	abfEnteringMenus(self)
	GameTooltip:SetText("|T"..C_AddOns.GetAddOnMetadata("ABF", "IconTexture")..":16|t"..abfMainColor:WrapTextInColorCode(C_AddOns.GetAddOnMetadata("ABF", "Title")).."|nChoose the color for the Buttons Borders")
end)
-- leave --
abfOptions6aBox8PopOut1:SetScript("OnLeave", abfLeavingMenus)
-- drop down --
abfClickPopOut(abfOptions6aBox8PopOut1, abfOptions6aBox8PopOut1Choice0)
-- naming at Options10 --
-- sort --
for i = 1, 3, 1 do
	_G["abfOptions6aBox8PopOut1Choice"..i]:SetParent(abfOptions6aBox8PopOut1Choice0)
	_G["abfOptions6aBox8PopOut1Choice"..i]:SetPoint("TOP", _G["abfOptions6aBox8PopOut1Choice"..i-1], "BOTTOM", 0, 0)
end
-- click --
for i = 0, 3, 1 do
	_G["abfOptions6aBox8PopOut1Choice"..i]:HookScript("OnClick", function(self, button, down)
		if button == "LeftButton" and down == false then
			ABFactionBars["Bar6"]["NormalTextureColorOptions"] = self.Text:GetText()
			abfOptions6aBox8PopOut1.Text:SetText(self.Text:GetText())
			abfOptions6aBox8PopOut1Choice0:Hide()
			if ABFactionBars["Bar6"]["NormalTextureColorOptions"] == "Default Color" then
				ABFactionBars["Bar6"]["NormalTextureColor"] = {r = 1, g = 1, b = 1, a = 1}
				abfSavedColorNormalTexture("Bar6", MultiBar5)
			elseif ABFactionBars["Bar6"]["NormalTextureColorOptions"] == "Class Color" then
				ABFactionBars["Bar6"]["NormalTextureColor"] = CreateColor(abfClassColor:GetRGB())
				abfSavedColorNormalTexture("Bar6", MultiBar5)
			elseif ABFactionBars["Bar6"]["NormalTextureColorOptions"] == "Faction Color" then
				ABFactionBars["Bar6"]["NormalTextureColor"] = CreateColor(abfFactionColor:GetRGB())
				abfSavedColorNormalTexture("Bar6", MultiBar5)
			elseif ABFactionBars["Bar6"]["NormalTextureColorOptions"] == "Custom Color" then
				abfShowColorPickerCD("Bar6", MultiBar5, "NormalTextureColor", abfSavedColorNormalTexture)
			end
		end
	end)
end
-- Options Box 9, Normal Texture Color Gradient --
-- Box 9, Pop Out Button 1, Normal Texture Color Gradient One --
-- enter --
abfOptions6aBox9PopOut1:SetScript("OnEnter", function(self)
	abfEnteringMenus(self)
	GameTooltip:SetText("|T"..C_AddOns.GetAddOnMetadata("ABF", "IconTexture")..":16|t"..abfMainColor:WrapTextInColorCode(C_AddOns.GetAddOnMetadata("ABF", "Title")).."|nChoose the first grandient color for the Buttons Borders")
end)
-- leave --
abfOptions6aBox9PopOut1:SetScript("OnLeave", abfLeavingMenus)
-- drop down --
abfClickPopOut(abfOptions6aBox9PopOut1, abfOptions6aBox9PopOut1Choice0)
-- naming at Options10 --
-- sort --
for i = 1, 3, 1 do
	_G["abfOptions6aBox9PopOut1Choice"..i]:SetParent(abfOptions6aBox9PopOut1Choice0)
	_G["abfOptions6aBox9PopOut1Choice"..i]:SetPoint("TOP", _G["abfOptions6aBox9PopOut1Choice"..i-1], "BOTTOM", 0, 0)
end
-- click --
for i = 0, 3, 1 do
	_G["abfOptions6aBox9PopOut1Choice"..i]:HookScript("OnClick", function(self, button, down)
		if button == "LeftButton" and down == false then
			ABFactionBars["Bar6"]["NormalTextureGradientOptions1"] = self.Text:GetText()
			abfOptions6aBox9PopOut1.Text:SetText(self.Text:GetText())
			abfOptions6aBox9PopOut1Choice0:Hide()
			if ABFactionBars["Bar6"]["NormalTextureGradientOptions1"] == "Default Color" then
				ABFactionBars["Bar6"]["NormalTextureGradient1"] = {r = 1, g = 1, b = 1, a = 1}
				abfSavedColorNormalTexture("Bar6", MultiBar5)
			elseif ABFactionBars["Bar6"]["NormalTextureGradientOptions1"] == "Class Color" then
				ABFactionBars["Bar6"]["NormalTextureGradient1"] = CreateColor(abfClassColor:GetRGB())
				abfSavedColorNormalTexture("Bar6", MultiBar5)
			elseif ABFactionBars["Bar6"]["NormalTextureGradientOptions1"] == "Faction Color" then
				ABFactionBars["Bar6"]["NormalTextureGradient1"] = CreateColor(abfFactionColor:GetRGB())
				abfSavedColorNormalTexture("Bar6", MultiBar5)
			elseif ABFactionBars["Bar6"]["NormalTextureGradientOptions1"] == "Custom Color" then
				abfShowColorPickerCD("Bar6", MultiBar5, "NormalTextureGradient1", abfSavedColorNormalTexture)
			end
		end
	end)
end
-- Box 9, Pop Out Button 2, Normal Texture Color Gradient two --
-- enter --
abfOptions6aBox9PopOut2:SetScript("OnEnter", function(self)
	abfEnteringMenus(self)
	GameTooltip:SetText("|T"..C_AddOns.GetAddOnMetadata("ABF", "IconTexture")..":16|t"..abfMainColor:WrapTextInColorCode(C_AddOns.GetAddOnMetadata("ABF", "Title")).."|nChoose the second grandient color for the Buttons Borders")
end)
-- leave --
abfOptions6aBox9PopOut2:SetScript("OnLeave", abfLeavingMenus)
-- drop down --
abfClickPopOut(abfOptions6aBox9PopOut2, abfOptions6aBox9PopOut2Choice0)
-- naming at Options10 --
-- sort --
for i = 1, 3, 1 do
	_G["abfOptions6aBox9PopOut2Choice"..i]:SetParent(abfOptions6aBox9PopOut2Choice0)
	_G["abfOptions6aBox9PopOut2Choice"..i]:SetPoint("TOP", _G["abfOptions6aBox9PopOut2Choice"..i-1], "BOTTOM", 0, 0)
end
-- click --
for i = 0, 3, 1 do
	_G["abfOptions6aBox9PopOut2Choice"..i]:HookScript("OnClick", function(self, button, down)
		if button == "LeftButton" and down == false then
			ABFactionBars["Bar6"]["NormalTextureGradientOptions2"] = self.Text:GetText()
			abfOptions6aBox9PopOut2.Text:SetText(self.Text:GetText())
			abfOptions6aBox9PopOut2Choice0:Hide()
			if ABFactionBars["Bar6"]["NormalTextureGradientOptions2"] == "Default Color" then
				ABFactionBars["Bar6"]["NormalTextureGradient2"] = {r = 1, g = 1, b = 1, a = 1}
				abfSavedColorNormalTexture("Bar6", MultiBar5)
			elseif ABFactionBars["Bar6"]["NormalTextureGradientOptions2"] == "Class Color" then
				ABFactionBars["Bar6"]["NormalTextureGradient2"] = CreateColor(abfClassColor:GetRGB())
				abfSavedColorNormalTexture("Bar6", MultiBar5)
			elseif ABFactionBars["Bar6"]["NormalTextureGradientOptions2"] == "Faction Color" then
				ABFactionBars["Bar6"]["NormalTextureGradient2"] = CreateColor(abfFactionColor:GetRGB())
				abfSavedColorNormalTexture("Bar6", MultiBar5)
			elseif ABFactionBars["Bar6"]["NormalTextureGradientOptions2"] == "Custom Color" then
				abfShowColorPickerCD("Bar6", MultiBar5, "NormalTextureGradient2", abfSavedColorNormalTexture)
			end
		end
	end)
end
-- Box 9, Pop Out Button 3, Normal Texture Color Gradient Orientation --
-- enter --
abfOptions6aBox9PopOut3:SetScript("OnEnter", function(self)
	abfEnteringMenus(self)
	GameTooltip:SetText("|T"..C_AddOns.GetAddOnMetadata("ABF", "IconTexture")..":16|t"..abfMainColor:WrapTextInColorCode(C_AddOns.GetAddOnMetadata("ABF", "Title")).."|nChoose the orientation|nof the colors for the Buttons Borders")
end)
-- leave --
abfOptions6aBox9PopOut3:SetScript("OnLeave", abfLeavingMenus)
-- drop down --
abfClickPopOut(abfOptions6aBox9PopOut3, abfOptions6aBox9PopOut3Choice0)
-- naming at Options10 --
-- sort --
for i = 1, 1, 1 do
	_G["abfOptions6aBox9PopOut3Choice"..i]:SetParent(abfOptions6aBox9PopOut3Choice0)
	_G["abfOptions6aBox9PopOut3Choice"..i]:SetPoint("TOP", _G["abfOptions6aBox9PopOut3Choice"..i-1], "BOTTOM", 0, 0)
end
-- click --
for i = 0, 1, 1 do
	_G["abfOptions6aBox9PopOut3Choice"..i]:HookScript("OnClick", function(self, button, down)
		if button == "LeftButton" and down == false then
			ABFactionBars["Bar6"]["NormalTextureGradientOrientation"] = self.Text:GetText()
			abfOptions6aBox9PopOut3.Text:SetText(self.Text:GetText())
			abfOptions6aBox9PopOut3Choice0:Hide()
			abfSavedColorNormalTexture("Bar6", MultiBar5)
		end
	end)
end
-- Showing the panel --
abfOptions6a:HookScript("OnShow", function(self)
	CheckSavedVariables()
-- panels --
	if abfOptions6:IsShown() then abfOptions6:Hide() end
-- tabs --
	abfOptions00Tab6.Text:SetTextColor(abfHighColor:GetRGB())
	for i = 1, 5, 1 do
		_G["abfOptions00Tab"..i].Text:SetTextColor(abfMainColor:GetRGB())
	end
	for i = 7, 10, 1 do
		_G["abfOptions00Tab"..i].Text:SetTextColor(abfMainColor:GetRGB())
	end
-- buttons --
	abfOptions00PageButton1f.Text:SetTextColor(abfMainColor:GetRGB())
	abfOptions00PageButton2f.Text:SetTextColor(abfHighColor:GetRGB())
end)
