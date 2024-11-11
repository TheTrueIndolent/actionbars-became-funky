-- takeing care the rest boxes --
abfOptions3aBox2:SetPoint("TOPLEFT", abfOptions3aBox1, "BOTTOMLEFT", 0, 6)
abfOptions3aBox3:SetPoint("TOPLEFT", abfOptions3aBox1, "BOTTOMLEFT", 0, 6)
abfOptions3aBox01:SetPoint("TOPLEFT", abfOptions3aBox3, "BOTTOMLEFT", 0, 0)
abfOptions3aBox5:SetPoint("TOPRIGHT", abfOptions3aBox4, "BOTTOMRIGHT", 0, 6)
abfOptions3aBox6:SetPoint("TOPRIGHT", abfOptions3aBox4, "BOTTOMRIGHT", 0, 6)
abfOptions3aBox02:SetPoint("TOPRIGHT", abfOptions3aBox6, "BOTTOMRIGHT", 0, 0)
abfOptions3aBox7:SetPoint("TOPLEFT", abfOptions3aBox01, "BOTTOMLEFT", 0, 0)
abfOptions3aBox8:SetPoint("TOPLEFT", abfOptions3aBox7, "BOTTOMLEFT", 0, 6)
abfOptions3aBox9:SetPoint("TOPLEFT", abfOptions3aBox7, "BOTTOMLEFT", 0, 6)
abfOptions3aBox1.BorderBottom:Hide()
abfOptions3aBox2.BorderTop:Hide()
abfOptions3aBox3.BorderTop:Hide()
abfOptions3aBox4.BorderBottom:Hide()
abfOptions3aBox5.BorderTop:Hide()
abfOptions3aBox6.BorderTop:Hide()
abfOptions3aBox7.BorderBottom:Hide()
abfOptions3aBox8.BorderTop:Hide()
abfOptions3aBox9.BorderTop:Hide()
-- naming tabs --
abfOptions3aBox1.TitleTxt:SetText("Top Art, Color Mode & Animation")
abfOptions3aBox2.TitleTxt:SetText("Top Art One Color")
abfOptions3aBox3.TitleTxt:SetText("Top Art Gradient Color")
abfOptions3aBox4.TitleTxt:SetText("Bottom Art, Color Mode & Animation")
abfOptions3aBox5.TitleTxt:SetText("Bottom Art One Color")
abfOptions3aBox6.TitleTxt:SetText("Bottom Art Gradient Color")
abfOptions3aBox7.TitleTxt:SetText("Buttons Border Color Mode")
abfOptions3aBox8.TitleTxt:SetText("Buttons Border One Color")
abfOptions3aBox9.TitleTxt:SetText("Buttons Border Gradient Color")
-- Checking the Saved Variables --
local function CheckSavedVariables()
-- Box 1, Pop Out Button 1 --
	abfOptions3aBox1PopOut1.Text:SetText(ABFactionBars["Bar3"]["Top"]["Art"])
	if ABFactionBars["Bar3"]["Top"]["Art"] == "JailersTower" then
		if not abfOptions3aBox1PopOut3:IsShown() then abfOptions3aBox1PopOut3:Show() end
		if not abfOptions3aBox1PopOut4:IsShown() then abfOptions3aBox1PopOut4:Show() end
	else
		if abfOptions3aBox1PopOut3:IsShown() then abfOptions3aBox1PopOut3:Hide() end
		if abfOptions3aBox1PopOut4:IsShown() then abfOptions3aBox1PopOut4:Hide() end
	end
-- Box 1, Pop Out Button 2 --
	abfOptions3aBox1PopOut2.Text:SetText(ABFactionBars["Bar3"]["Top"]["ArtColorChoice"])
	if ABFactionBars["Bar3"]["Top"]["ArtColorChoice"] == "One Color" then
		if not abfOptions3aBox2:IsShown() then abfOptions3aBox2:Show() end
		if abfOptions3aBox3:IsShown() then abfOptions3aBox3:Hide() end
	elseif ABFactionBars["Bar3"]["Top"]["ArtColorChoice"] == "Gradient Color" then
		if abfOptions3aBox2:IsShown() then abfOptions3aBox2:Hide() end
		if not abfOptions3aBox3:IsShown() then abfOptions3aBox3:Show() end
	end
-- Box 1, Pop Out Button 3--
	if ABFactionBars["Bar3"]["Top"]["Animation"] then
		abfOptions3aBox1PopOut3.Text:SetText("Show")
	elseif not ABFactionBars["Bar3"]["Top"]["Animation"] then
		abfOptions3aBox1PopOut3.Text:SetText("Hide")
	end
-- Box 1, Pop Out Button 4 --
	abfOptions3aBox1PopOut4.Text:SetText(ABFactionBars["Bar3"]["Top"]["AnimationColorOptions"])
-- Box 2, Pop Out Button 1
	abfOptions3aBox2PopOut1.Text:SetText(ABFactionBars["Bar3"]["Top"]["ArtColorOptions"])
	if ABFactionBars["Bar3"]["Top"]["ArtColorOptions"] == "Custom Color" then
		if not abfOptions3aBox2Slider1:IsShown() then abfOptions3aBox2Slider1:Show() end
	else
		if abfOptions3aBox2Slider1:IsShown() then abfOptions3aBox2Slider1:Hide() end
	end
-- Box 2, Slider 1 --
	abfOptions3aBox2Slider1.Slider:SetValue(ABFactionBars["Bar3"]["Top"]["ArtColorDesaturation"] * 10)
-- Box 3, Pop Out Button 1 --
	abfOptions3aBox3PopOut1.Text:SetText(ABFactionBars["Bar3"]["Top"]["ArtGradientOptions1"])
-- Box 3, Pop Out Button 2 --
	abfOptions3aBox3PopOut2.Text:SetText(ABFactionBars["Bar3"]["Top"]["ArtGradientOptions2"])
-- Box 3, Pop Out Button 3 --
	abfOptions3aBox3PopOut3.Text:SetText(ABFactionBars["Bar3"]["Top"]["ArtGradientOrientation"])
-- Box 4, Pop Out Button 1 --
	abfOptions3aBox4PopOut1.Text:SetText(ABFactionBars["Bar3"]["Bottom"]["Art"])
	if ABFactionBars["Bar3"]["Bottom"]["Art"] == "SoftCloud" then
		if not abfOptions3aBox4PopOut3:IsShown() then abfOptions3aBox4PopOut3:Show() end
		if not abfOptions3aBox4PopOut4:IsShown() then abfOptions3aBox4PopOut4:Show() end
	else
		if abfOptions3aBox4PopOut3:IsShown() then abfOptions3aBox4PopOut3:Hide() end
		if abfOptions3aBox4PopOut4:IsShown() then abfOptions3aBox4PopOut4:Hide() end
	end
-- Box 4, Pop Out Button 2 --
	abfOptions3aBox4PopOut2.Text:SetText(ABFactionBars["Bar3"]["Bottom"]["ArtColorChoice"])
	if ABFactionBars["Bar3"]["Bottom"]["ArtColorChoice"] == "One Color" then
		if not abfOptions3aBox5:IsShown() then abfOptions3aBox5:Show() end
		if abfOptions3aBox6:IsShown() then abfOptions3aBox6:Hide() end
	elseif ABFactionBars["Bar3"]["Bottom"]["ArtColorChoice"] == "Gradient Color" then
		if abfOptions3aBox5:IsShown() then abfOptions3aBox5:Hide() end
		if not abfOptions3aBox6:IsShown() then abfOptions3aBox6:Show() end
	end
-- Box 4, Pop Out Button 3 --
	if ABFactionBars["Bar3"]["Bottom"]["Animation"] then
		abfOptions3aBox4PopOut3.Text:SetText("Show")
	elseif not ABFactionBars["Bar3"]["Bottom"]["Animation"] then
		abfOptions3aBox4PopOut3.Text:SetText("Hide")
	end
-- Box 4, Pop Out Button 4 --
	abfOptions3aBox4PopOut4.Text:SetText(ABFactionBars["Bar3"]["Bottom"]["AnimationColorOptions"])
-- Box 5, Pop Out Button 1 --
	abfOptions3aBox5PopOut1:SetText(ABFactionBars["Bar3"]["Bottom"]["ArtColorOptions"])
	if ABFactionBars["Bar3"]["Bottom"]["ArtColorOptions"] == "Custom Color" then
		if not abfOptions3aBox5Slider1:IsShown() then abfOptions3aBox5Slider1:Hide() end
	else
		if abfOptions3aBox5Slider1:IsShown() then abfOptions3aBox5Slider1:Hide() end
	end
-- Box 5, Slider 1 --
	abfOptions3aBox5Slider1.Slider:SetValue(ABFactionBars["Bar3"]["Bottom"]["ArtColorDesaturation"] * 10)
-- Box 6, Pop Out Button 1 --
	abfOptions3aBox6PopOut1.Text:SetText(ABFactionBars["Bar3"]["Bottom"]["ArtGradientOptions1"])
-- Box 6, Pop Out Button 2 --
	abfOptions3aBox6PopOut2.Text:SetText(ABFactionBars["Bar3"]["Bottom"]["ArtGradientOptions2"])
-- Box 6, Pop Out Button 2 --
	abfOptions3aBox6PopOut3.Text:SetText(ABFactionBars["Bar3"]["Bottom"]["ArtGradientOrientation"])
-- Box 7, Pop Out Button 1 --
	abfOptions3aBox7PopOut1.Text:SetText(ABFactionBars["Bar3"]["NormalTextureColorMode"])
	if ABFactionBars["Bar3"]["NormalTextureColorMode"] == "One Color" then
		if not abfOptions3aBox8:IsShown() then abfOptions3aBox8:Show() end
		if abfOptions3aBox9:IsShown() then abfOptions3aBox9:Hide() end
	elseif ABFactionBars["Bar3"]["NormalTextureColorMode"] == "Gradient Color" then
		if abfOptions3aBox8:IsShown() then abfOptions3aBox8:Hide() end
		if not abfOptions3aBox9:IsShown() then abfOptions3aBox9:Show() end
	end
-- Box 8, Pop Out Button 1 --
	abfOptions3aBox8PopOut1.Text:SetText(ABFactionBars["Bar3"]["NormalTextureColorOptions"])
-- Box 9, Pop Out Button 1 --
	abfOptions3aBox9PopOut1.Text:SetText(ABFactionBars["Bar3"]["NormalTextureGradientOptions1"])
-- Box 9, Pop Out Button 2 --
	abfOptions3aBox9PopOut2.Text:SetText(ABFactionBars["Bar3"]["NormalTextureGradientOptions2"])
-- Box 9, Pop Out Button 3 --
	abfOptions3aBox9PopOut3.Text:SetText(ABFactionBars["Bar3"]["NormalTextureGradientOrientation"])
end
-- Options Box 1, Top Art --
-- Box 1, Pop Out Button 1, Top Art choice --
-- enter --
abfOptions3aBox1PopOut1:SetScript("OnEnter", function(self)
	abfEnteringMenus(self)
	GameTooltip:SetText("|T"..C_AddOns.GetAddOnMetadata("ABF", "IconTexture")..":16|t"..abfMainColor:WrapTextInColorCode(C_AddOns.GetAddOnMetadata("ABF", "Title")).."|nChoose the Top Art for|nthe Action Bar 3") 
end)
-- leave --
abfOptions3aBox1PopOut1:SetScript("OnLeave", abfLeavingMenus)
-- drop down --
abfClickPopOut(abfOptions3aBox1PopOut1, abfOptions3aBox1PopOut1Choice0)
-- sort --
for i = 1, 3, 1 do
	_G["abfOptions3aBox1PopOut1Choice"..i]:SetParent(abfOptions3aBox1PopOut1Choice0)
	_G["abfOptions3aBox1PopOut1Choice"..i]:SetPoint("TOP", _G["abfOptions3aBox1PopOut1Choice"..i-1], "BOTTOM", 0, 0)
-- on leave --
	_G["abfOptions3aBox1PopOut1Choice"..i]:HookScript("OnLeave", function(self) abfOptions3aBox1PopOut1.Example:Hide() abfOptions3aBox1PopOut1.Example1:Hide() end)
end
-- naming at Options10 --
-- clicking --
for i = 0, 3, 1 do
	_G["abfOptions3aBox1PopOut1Choice"..i]:HookScript("OnClick", function(self, button, down)
		if button == "LeftButton" and down == false then
			ABFactionBars["Bar3"]["Top"]["Art"] = self.Text:GetText()
			abfOptions3aBox1PopOut1.Text:SetText(self.Text:GetText())
			abfOptions3aBox1PopOut1Choice0:Hide()
			if ABFactionBars["Bar3"]["Top"]["Art"] == "JailersTower" then
				if not abfOptions3aBox1PopOut3:IsShown() then abfOptions3aBox1PopOut3:Show() end
				if not abfOptions3aBox1PopOut4:IsShown() then abfOptions3aBox1PopOut4:Show() end
			else
				if abfOptions3aBox1PopOut3:IsShown() then abfOptions3aBox1PopOut3:Hide() end
				if abfOptions3aBox1PopOut4:IsShown() then abfOptions3aBox1PopOut4:Hide() end
			end
			abfSavedArtTop("Bar3", MultiBarBottomRight)
		end
	end)
end
-- entering the pop out buttons at Options10 --
-- Box 1, Pop Out Button 2, Top Art color choice --
-- enter --
abfOptions3aBox1PopOut2:SetScript("OnEnter", function(self)
	abfEnteringMenus(self)
	GameTooltip:SetText("|T"..C_AddOns.GetAddOnMetadata("ABF", "IconTexture")..":16|t"..abfMainColor:WrapTextInColorCode(C_AddOns.GetAddOnMetadata("ABF", "Title")).."|nChoose the mode color for|nthe Top Art! (one color or gradient color)") 
end)
-- leave --
abfOptions3aBox1PopOut2:SetScript("OnLeave", abfLeavingMenus)
-- drop down --
abfClickPopOut(abfOptions3aBox1PopOut2, abfOptions3aBox1PopOut2Choice0)
-- naming at Options10 --
-- sort --
for i = 1, 1, 1 do
	_G["abfOptions3aBox1PopOut2Choice"..i]:SetParent(abfOptions3aBox1PopOut2Choice0)
	_G["abfOptions3aBox1PopOut2Choice"..i]:SetPoint("TOP", _G["abfOptions3aBox1PopOut2Choice"..i-1], "BOTTOM", 0, 0)
end
-- click --
for i = 0, 1, 1 do
	_G["abfOptions3aBox1PopOut2Choice"..i]:HookScript("OnClick", function(self, button, down)
		if button == "LeftButton" and down == false then
			ABFactionBars["Bar3"]["Top"]["ArtColorChoice"] = self.Text:GetText()
			abfOptions3aBox1PopOut2.Text:SetText(self.Text:GetText())
			abfOptions3aBox1PopOut2Choice0:Hide()
			abfSavedColorTop("Bar3", MultiBarBottomRight)
			if ABFactionBars["Bar3"]["Top"]["ArtColorChoice"] == "One Color" then
				if not abfOptions3aBox2:IsShown() then abfOptions3aBox2:Show() end
				if abfOptions3aBox3:IsShown() then abfOptions3aBox3:Hide() end
			elseif ABFactionBars["Bar3"]["Top"]["ArtColorChoice"] == "Gradient Color" then
				if abfOptions3aBox2:IsShown() then abfOptions3aBox2:Hide() end
				if not abfOptions3aBox3:IsShown() then abfOptions3aBox3:Show() end
			end
		end
	end)
end
-- Box 1, Pop Out Button 3, Top Art Animation --
-- enter --
abfOptions3aBox1PopOut3:SetScript("OnEnter", function(self)
	abfEnteringMenus(self)
	GameTooltip:SetText("|T"..C_AddOns.GetAddOnMetadata("ABF", "IconTexture")..":16|t"..abfMainColor:WrapTextInColorCode(C_AddOns.GetAddOnMetadata("ABF", "Title")).."|nWhould you like the animation|nfor the Top Art to be shown?")
end)
-- leave --
abfOptions3aBox1PopOut3:SetScript("OnLeave", abfLeavingMenus)
-- drop down --
abfClickPopOut(abfOptions3aBox1PopOut3, abfOptions3aBox1PopOut3Choice0)
-- naming at Options10 --
-- sort --
for i = 1, 1, 1 do
	_G["abfOptions3aBox1PopOut3Choice"..i]:SetParent(abfOptions3aBox1PopOut3Choice0)
	_G["abfOptions3aBox1PopOut3Choice"..i]:SetPoint("TOP", _G["abfOptions3aBox1PopOut3Choice"..i-1], "BOTTOM", 0, 0)
end
-- click --
for i = 0, 1, 1 do
	_G["abfOptions3aBox1PopOut3Choice"..i]:HookScript("OnClick", function(self, button, down)
		if button == "LeftButton" and down == false then
			abfOptions3aBox1PopOut3.Text:SetText(self.Text:GetText())
			abfOptions3aBox1PopOut3Choice0:Hide()
			if self.Text:GetText() == "Hide" then
				ABFactionBars["Bar3"]["Top"]["Animation"] = false
			elseif self.Text:GetText() == "Show" then
				ABFactionBars["Bar3"]["Top"]["Animation"] = true
			end
			abfSavedTopArtAnimation("Bar3", MultiBarBottomRight)
		end
	end)
end
-- Box 1, Pop Out Button 4, Bottom Art Animation Color --
-- enter --
abfOptions3aBox1PopOut4:SetScript("OnEnter", function(self)
	abfEnteringMenus(self)
	GameTooltip:SetText("|T"..C_AddOns.GetAddOnMetadata("ABF", "IconTexture")..":16|t"..abfMainColor:WrapTextInColorCode(C_AddOns.GetAddOnMetadata("ABF", "Title")).."|nChoose the color for the animation")
end)
-- leave --
abfOptions3aBox1PopOut4:SetScript("OnLeave", abfLeavingMenus)
-- drop down --
abfClickPopOut(abfOptions3aBox1PopOut4, abfOptions3aBox1PopOut4Choice0)
-- naming at Options10 --
-- sort --
for i = 1, 2, 1 do
	_G["abfOptions3aBox1PopOut4Choice"..i]:SetParent(abfOptions3aBox1PopOut4Choice0)
	_G["abfOptions3aBox1PopOut4Choice"..i]:SetPoint("TOP", _G["abfOptions3aBox1PopOut4Choice"..i-1], "BOTTOM", 0, 0)
end
-- click --
for i = 0, 2, 1 do
	_G["abfOptions3aBox1PopOut4Choice"..i]:HookScript("OnClick", function(self, button, down)
		if button == "LeftButton" and down == false then
			ABFactionBars["Bar3"]["Top"]["AnimationColorOptions"] = self.Text:GetText()
			abfOptions3aBox1PopOut4.Text:SetText(self.Text:GetText())
			abfOptions3aBox1PopOut4Choice0:Hide()
			if ABFactionBars["Bar3"]["Top"]["AnimationColorOptions"] == "Default Color" then
				ABFactionBars["Bar3"]["Top"]["AnimationColor"] = {r = 1, g = 1, b = 1, a = 1}
				abfSavedTopArtAnimation("Bar3", MultiBarBottomRight)
			elseif ABFactionBars["Bar3"]["Top"]["AnimationColorOptions"] == "Class Color" then
				ABFactionBars["Bar3"]["Top"]["AnimationColor"] = CreateColor(abfClassColor:GetRGB())
				abfSavedTopArtAnimation("Bar3", MultiBarBottomRight)
			elseif ABFactionBars["Bar3"]["Top"]["AnimationColorOptions"] == "Custom Color" then
				abfShowColorPicker("Bar3", MultiBarBottomRight, "Top", abfSavedTopArtAnimation, "AnimationColor")
			end
		end
	end)
end
-- Options Box 2, Top color one --
-- Box 2, Pop Out Button 1, Top color one choices --
-- enter --
abfOptions3aBox2PopOut1:SetScript("OnEnter", function(self)
	abfEnteringMenus(self)
	GameTooltip:SetText("|T"..C_AddOns.GetAddOnMetadata("ABF", "IconTexture")..":16|t"..abfMainColor:WrapTextInColorCode(C_AddOns.GetAddOnMetadata("ABF", "Title")).."|nChoose the color for the Top Art")
end)
-- leave --
abfOptions3aBox2PopOut1:SetScript("OnLeave", abfLeavingMenus)
-- drop down --
abfClickPopOut(abfOptions3aBox2PopOut1, abfOptions3aBox2PopOut1Choice0)
-- naming at Options10 --
-- sort --
for i = 1, 2, 1 do
	_G["abfOptions3aBox2PopOut1Choice"..i]:SetParent(abfOptions3aBox2PopOut1Choice0)
	_G["abfOptions3aBox2PopOut1Choice"..i]:SetPoint("TOP", _G["abfOptions3aBox2PopOut1Choice"..i-1], "BOTTOM", 0, 0)
end
-- click --
for i = 0, 2, 1 do
	_G["abfOptions3aBox2PopOut1Choice"..i]:HookScript("OnClick", function(self, button, down)
		if button == "LeftButton" and down == false then
			ABFactionBars["Bar3"]["Top"]["ArtColorOptions"] = self.Text:GetText()
			abfOptions3aBox2PopOut1.Text:SetText(self.Text:GetText())
			abfOptions3aBox2PopOut1Choice0:Hide()
			if ABFactionBars["Bar3"]["Top"]["ArtColorOptions"] == "Default Color" then
				ABFactionBars["Bar3"]["Top"]["ArtColor"] = {r = 1, g = 1, b = 1, a = 1}
				if abfOptions3aBox2Slider1:IsShown() then abfOptions3aBox2Slider1:Hide() end
				abfSavedColorTop("Bar3", MultiBarBottomRight)
			elseif ABFactionBars["Bar3"]["Top"]["ArtColorOptions"] == "Class Color" then
				ABFactionBars["Bar3"]["Top"]["ArtColor"] = CreateColor(abfClassColor:GetRGB())
				if abfOptions3aBox2Slider1:IsShown() then abfOptions3aBox2Slider1:Hide() end
				abfSavedColorTop("Bar3", MultiBarBottomRight)
			elseif ABFactionBars["Bar3"]["Top"]["ArtColorOptions"] == "Custom Color" then
				if not abfOptions3aBox2Slider1:IsShown() then abfOptions3aBox2Slider1:Show() end
				abfShowColorPicker("Bar3", MultiBarBottomRight, "Top", abfSavedColorTop, "ArtColor")
			end
		end
	end)
end
-- Box 2, Slider 1, Top Desaturation --
-- min max values --
abfOptions3aBox2Slider1.MinText:SetText(0)
abfOptions3aBox2Slider1.MaxText:SetText(1)
abfOptions3aBox2Slider1.Slider:SetMinMaxValues(0, 10)
-- enter --
abfOptions3aBox2Slider1.Slider:SetScript("OnEnter", function(self)
	abfEnteringMenus(self)
	GameTooltip:SetText("|T"..C_AddOns.GetAddOnMetadata("ABF", "IconTexture")..":16|t "..abfMainColor:WrapTextInColorCode(C_AddOns.GetAddOnMetadata("ABF", "Title")).."|nYou can also use your mousewheel|nor the buttons to the edge|nto change the value!") 
end)
-- leave --
abfOptions3aBox2Slider1.Slider:SetScript("OnLeave", abfLeavingMenus)
-- on mouse wheel --
abfOptions3aBox2Slider1.Slider:SetScript("OnMouseWheel", abfMouseWheelSlider)
-- On Value Changed --
abfOptions3aBox2Slider1.Slider:SetScript("OnValueChanged", function (self, value, userInput)
	abfOptions3aBox2Slider1.TopText:SetText("Desaturation of the Artwork: "..(self:GetValue()/10))
	ABFactionBars["Bar3"]["Top"]["ArtColorDesaturation"] = self:GetValue()/10
	abfSavedColorTop("Bar3", MultiBarBottomRight)
end)
-- Options Box 3, Top color Gradient --
-- Box 3, Pop Out Button 1, Top Color Gradient One --
-- enter --
abfOptions3aBox3PopOut1:SetScript("OnEnter", function(self)
	abfEnteringMenus(self)
	GameTooltip:SetText("|T"..C_AddOns.GetAddOnMetadata("ABF", "IconTexture")..":16|t"..abfMainColor:WrapTextInColorCode(C_AddOns.GetAddOnMetadata("ABF", "Title")).."|nChoose the first grandient color for the Top Art")
end)
-- leave --
abfOptions3aBox3PopOut1:SetScript("OnLeave", abfLeavingMenus)
-- drop down --
abfClickPopOut(abfOptions3aBox3PopOut1, abfOptions3aBox3PopOut1Choice0)
-- naming at Options10 --
-- sort --
for i = 1, 2, 1 do
	_G["abfOptions3aBox3PopOut1Choice"..i]:SetParent(abfOptions3aBox3PopOut1Choice0)
	_G["abfOptions3aBox3PopOut1Choice"..i]:SetPoint("TOP", _G["abfOptions3aBox3PopOut1Choice"..i-1], "BOTTOM", 0, 0)
end
-- click --
for i = 0, 2, 1 do
	_G["abfOptions3aBox3PopOut1Choice"..i]:HookScript("OnClick", function(self, button, down)
		if button == "LeftButton" and down == false then
			ABFactionBars["Bar3"]["Top"]["ArtGradientOptions1"] = self.Text:GetText()
			abfOptions3aBox3PopOut1.Text:SetText(self.Text:GetText())
			abfOptions3aBox3PopOut1Choice0:Hide()
			if ABFactionBars["Bar3"]["Top"]["ArtGradientOptions1"] == "Default Color" then
				ABFactionBars["Bar3"]["Top"]["ArtGradientColor1"] = {r = 1, g = 1, b = 1, a = 1}
				abfSavedColorTop("Bar3", MultiBarBottomRight)
			elseif ABFactionBars["Bar3"]["Top"]["ArtGradientOptions1"] == "Class Color" then
				ABFactionBars["Bar3"]["Top"]["ArtGradientColor1"] = CreateColor(abfClassColor:GetRGB())
				abfSavedColorTop("Bar3", MultiBarBottomRight)
			elseif ABFactionBars["Bar3"]["Top"]["ArtGradientOptions1"] == "Custom Color" then
				abfShowColorPicker("Bar3", MultiBarBottomRight, "Top", abfSavedColorTop, "ArtGradientColor1")
			end
		end
	end)
end
-- Box 3, Pop Out Button 2, Top Color Gradient One --
-- enter --
abfOptions3aBox3PopOut2:SetScript("OnEnter", function(self)
	abfEnteringMenus(self)
	GameTooltip:SetText("|T"..C_AddOns.GetAddOnMetadata("ABF", "IconTexture")..":16|t"..abfMainColor:WrapTextInColorCode(C_AddOns.GetAddOnMetadata("ABF", "Title")).."|nChoose the second grandient color for the Top Art")
end)
-- leave --
abfOptions3aBox3PopOut2:SetScript("OnLeave", abfLeavingMenus)
-- drop down --
abfClickPopOut(abfOptions3aBox3PopOut2, abfOptions3aBox3PopOut2Choice0)
-- naming at Options10 --
-- sort --
for i = 1, 2, 1 do
	_G["abfOptions3aBox3PopOut2Choice"..i]:SetParent(abfOptions3aBox3PopOut2Choice0)
	_G["abfOptions3aBox3PopOut2Choice"..i]:SetPoint("TOP", _G["abfOptions3aBox3PopOut2Choice"..i-1], "BOTTOM", 0, 0)
end
-- click --
for i = 0, 2, 1 do
	_G["abfOptions3aBox3PopOut2Choice"..i]:HookScript("OnClick", function(self, button, down)
		if button == "LeftButton" and down == false then
			ABFactionBars["Bar3"]["Top"]["ArtGradientOptions2"] = self.Text:GetText()
			abfOptions3aBox3PopOut2.Text:SetText(self.Text:GetText())
			abfOptions3aBox3PopOut2Choice0:Hide()
			if ABFactionBars["Bar3"]["Top"]["ArtGradientOptions2"] == "Default Color" then
				ABFactionBars["Bar3"]["Top"]["ArtGradientColor2"] = {r = 1, g = 1, b = 1, a = 1}
				abfSavedColorTop("Bar3", MultiBarBottomRight)
			elseif ABFactionBars["Bar3"]["Top"]["ArtGradientOptions2"] == "Class Color" then
				ABFactionBars["Bar3"]["Top"]["ArtGradientColor2"] = CreateColor(abfClassColor:GetRGB())
				abfSavedColorTop("Bar3", MultiBarBottomRight)
			elseif ABFactionBars["Bar3"]["Top"]["ArtGradientOptions2"] == "Custom Color" then
				abfShowColorPicker("Bar3", MultiBarBottomRight, "Top", abfSavedColorTop, "ArtGradientColor2")
			end
		end
	end)
end
-- Box 3, Pop Out Button 3, Top Color Gradient Orientation --
-- enter --
abfOptions3aBox3PopOut3:SetScript("OnEnter", function(self)
	abfEnteringMenus(self)
	GameTooltip:SetText("|T"..C_AddOns.GetAddOnMetadata("ABF", "IconTexture")..":16|t"..abfMainColor:WrapTextInColorCode(C_AddOns.GetAddOnMetadata("ABF", "Title")).."|nChoose the orientation|nof the colors for the Top Art")
end)
-- leave --
abfOptions3aBox3PopOut3:SetScript("OnLeave", abfLeavingMenus)
-- drop down --
abfClickPopOut(abfOptions3aBox3PopOut3, abfOptions3aBox3PopOut3Choice0)
-- naming at Options10 --
-- sort --
for i = 1, 1, 1 do
	_G["abfOptions3aBox3PopOut3Choice"..i]:SetParent(abfOptions3aBox3PopOut3Choice0)
	_G["abfOptions3aBox3PopOut3Choice"..i]:SetPoint("TOP", _G["abfOptions3aBox3PopOut3Choice"..i-1], "BOTTOM", 0, 0)
end
-- click --
for i = 0, 1, 1 do
	_G["abfOptions3aBox3PopOut3Choice"..i]:HookScript("OnClick", function(self, button, down)
		if button == "LeftButton" and down == false then
			ABFactionBars["Bar3"]["Top"]["ArtGradientOrientation"] = self.Text:GetText()
			abfOptions3aBox3PopOut3.Text:SetText(self.Text:GetText())
			abfOptions3aBox3PopOut3Choice0:Hide()
			abfSavedColorTop("Bar3", MultiBarBottomRight)
		end
	end)
end
-- Options Box 4, Bottom Art --
-- Box 4, Pop Out Button 1, Bottom Art choice --
-- enter --
abfOptions3aBox4PopOut1:SetScript("OnEnter", function(self)
	abfEnteringMenus(self)
	GameTooltip:SetText("|T"..C_AddOns.GetAddOnMetadata("ABF", "IconTexture")..":16|t"..abfMainColor:WrapTextInColorCode(C_AddOns.GetAddOnMetadata("ABF", "Title")).."|nChoose the Bottom Art for|nthe Action Bar 3")
end)
-- leave --
abfOptions3aBox4PopOut1:SetScript("OnLeave", abfLeavingMenus)
-- drop down --
abfClickPopOut(abfOptions3aBox4PopOut1, abfOptions3aBox4PopOut1Choice0)
-- naming at Options10 --
-- sort --
for i = 1, 3, 1 do
	_G["abfOptions3aBox4PopOut1Choice"..i]:SetParent(abfOptions3aBox4PopOut1Choice0)
	_G["abfOptions3aBox4PopOut1Choice"..i]:SetPoint("TOP", _G["abfOptions3aBox4PopOut1Choice"..i-1], "BOTTOM", 0, 0)
end
-- click --
for i = 0, 3, 1 do
	_G["abfOptions3aBox4PopOut1Choice"..i]:HookScript("OnClick", function(self, button, down)
		if button == "LeftButton" and down == false then
			ABFactionBars["Bar3"]["Bottom"]["Art"] = self.Text:GetText()
			abfOptions3aBox4PopOut1.Text:SetText(self.Text:GetText())
			abfOptions3aBox4PopOut1Choice0:Hide()
			if ABFactionBars["Bar3"]["Bottom"]["Art"] == "SoftCloud" then
				if not abfOptions3aBox4PopOut3:IsShown() then abfOptions3aBox4PopOut3:Show() end
				if not abfOptions3aBox4PopOut4:IsShown() then abfOptions3aBox4PopOut4:Show() end
			else
				if abfOptions3aBox4PopOut3:IsShown() then abfOptions3aBox4PopOut3:Hide() end
				if abfOptions3aBox4PopOut4:IsShown() then abfOptions3aBox4PopOut4:Hide() end
			end
			abfSavedArtBottom("Bar3", MultiBarBottomRight)
		end
	end)
end
-- Box 4, Pop Out Button 2, Bottom Art Color Choice --
-- enter --
abfOptions3aBox4PopOut2:SetScript("OnEnter", function(self)
	abfEnteringMenus(self)
	GameTooltip:SetText("|T"..C_AddOns.GetAddOnMetadata("ABF", "IconTexture")..":16|t"..abfMainColor:WrapTextInColorCode(C_AddOns.GetAddOnMetadata("ABF", "Title")).."|nChoose the mode color for|nthe Bottom Art! (one color or gradient color)") 
end)
-- leave --
abfOptions3aBox4PopOut2:SetScript("OnLeave", abfLeavingMenus)
-- drop down --
abfClickPopOut(abfOptions3aBox4PopOut2, abfOptions3aBox4PopOut2Choice0)
-- naming at Options10 --
-- sort --
for i = 1, 1, 1 do
	_G["abfOptions3aBox4PopOut2Choice"..i]:SetParent(abfOptions3aBox4PopOut2Choice0)
	_G["abfOptions3aBox4PopOut2Choice"..i]:SetPoint("TOP", _G["abfOptions3aBox4PopOut2Choice"..i-1], "BOTTOM", 0, 0)
end
-- click --
for i = 0, 1, 1 do
	_G["abfOptions3aBox4PopOut2Choice"..i]:HookScript("OnClick", function(self, button, down)
		if button == "LeftButton" and down == false then
			ABFactionBars["Bar3"]["Bottom"]["ArtColorChoice"] = self.Text:GetText()
			abfOptions3aBox4PopOut2.Text:SetText(self.Text:GetText())
			abfOptions3aBox4PopOut2Choice0:Hide()
			abfSavedColorBottom("Bar3", MultiBarBottomRight)
			if ABFactionBars["Bar3"]["Bottom"]["ArtColorChoice"] == "One Color" then
				if not abfOptions3aBox5:IsShown() then abfOptions3aBox5:Show() end
				if abfOptions3aBox6:IsShown() then abfOptions3aBox6:Hide() end
			elseif ABFactionBars["Bar3"]["Bottom"]["ArtColorChoice"] == "Gradient Color" then
				if abfOptions3aBox5:IsShown() then abfOptions3aBox5:Hide() end
				if not abfOptions3aBox6:IsShown() then abfOptions3aBox6:Show() end
			end
		end
	end)
end
-- Box 4, Pop Out Button 3, Bottom Art Animation --
-- enter --
abfOptions3aBox4PopOut3:SetScript("OnEnter", function(self)
	abfEnteringMenus(self)
	GameTooltip:SetText("|T"..C_AddOns.GetAddOnMetadata("ABF", "IconTexture")..":16|t"..abfMainColor:WrapTextInColorCode(C_AddOns.GetAddOnMetadata("ABF", "Title")).."|nWhould you like the animation|nfor the Bottom Art to be shown?")
end)
-- leave --
abfOptions3aBox4PopOut3:SetScript("OnLeave", abfLeavingMenus)
-- drop down --
abfClickPopOut(abfOptions3aBox4PopOut3, abfOptions3aBox4PopOut3Choice0)
-- naming at Options10 --
-- sort --
for i = 1, 1, 1 do
	_G["abfOptions3aBox4PopOut3Choice"..i]:SetParent(abfOptions3aBox4PopOut3Choice0)
	_G["abfOptions3aBox4PopOut3Choice"..i]:SetPoint("TOP", _G["abfOptions3aBox4PopOut3Choice"..i-1], "BOTTOM", 0, 0)
end
-- click --
for i = 0, 1, 1 do
	_G["abfOptions3aBox4PopOut3Choice"..i]:HookScript("OnClick", function(self, button, down)
		if button == "LeftButton" and down == false then
			abfOptions3aBox4PopOut3.Text:SetText(self.Text:GetText())
			abfOptions3aBox4PopOut3Choice0:Hide()
			if self.Text:GetText() == "Hide" then
				ABFactionBars["Bar3"]["Bottom"]["Animation"] = false
			elseif self.Text:GetText() == "Show" then
				ABFactionBars["Bar3"]["Bottom"]["Animation"] = true
			end
			--abfSavedAnimationBottom("Bar3", MultiBarBottomRight)
		end
	end)
end
-- Box 4, Pop Out Button 4, Bottom Art Animation Color --
-- enter --
abfOptions3aBox4PopOut4:SetScript("OnEnter", function(self)
	abfEnteringMenus(self)
	GameTooltip:SetText("|T"..C_AddOns.GetAddOnMetadata("ABF", "IconTexture")..":16|t"..abfMainColor:WrapTextInColorCode(C_AddOns.GetAddOnMetadata("ABF", "Title")).."|nChoose the color for the animation")
end)
-- leave --
abfOptions3aBox4PopOut4:SetScript("OnLeave", abfLeavingMenus)
-- drop down --
abfClickPopOut(abfOptions3aBox4PopOut4, abfOptions3aBox4PopOut4Choice0)
-- naming at Options10 --
-- sort --
for i = 1, 2, 1 do
	_G["abfOptions3aBox4PopOut4Choice"..i]:SetParent(abfOptions3aBox4PopOut4Choice0)
	_G["abfOptions3aBox4PopOut4Choice"..i]:SetPoint("TOP", _G["abfOptions3aBox4PopOut4Choice"..i-1], "BOTTOM", 0, 0)
end
-- click --
for i = 0, 2, 1 do
	_G["abfOptions3aBox4PopOut4Choice"..i]:HookScript("OnClick", function(self, button, down)
		if button == "LeftButton" and down == false then
			ABFactionBars["Bar3"]["Bottom"]["AnimationColorOptions"] = self.Text:GetText()
			abfOptions3aBox4PopOut4.Text:SetText(self.Text:GetText())
			abfOptions3aBox4PopOut4Choice0:Hide()
			if ABFactionBars["Bar3"]["Bottom"]["AnimationColorOptions"] == "Default Color" then
				ABFactionBars["Bar3"]["Bottom"]["AnimationColor"] = {r = 1, g = 1, b = 1, a = 1}
				--abfSavedAnimationBottomColor("Bar3", MultiBarBottomRight)
			elseif ABFactionBars["Bar3"]["Bottom"]["AnimationColorOptions"] == "Class Color" then
				ABFactionBars["Bar3"]["Bottom"]["AnimationColor"] = CreateColor(abfClassColor:GetRGB())
				--abfSavedAnimationBottomColor("Bar3", MultiBarBottomRight)
			elseif ABFactionBars["Bar3"]["Bottom"]["AnimationColorOptions"] == "Custom Color" then
				--abfShowColorPicker("Bar3", MultiBarBottomRight, "Bottom", abfSavedAnimationBottomColor, "AnimationColor")
			end
		end
	end)
end
-- Options Box 5, Bottom Color One --
-- Box 5, Pop Out Button 1, Bottom Color One Choices --
-- enter --
abfOptions3aBox5PopOut1:SetScript("OnEnter", function(self)
	abfEnteringMenus(self)
	GameTooltip:SetText("|T"..C_AddOns.GetAddOnMetadata("ABF", "IconTexture")..":16|t"..abfMainColor:WrapTextInColorCode(C_AddOns.GetAddOnMetadata("ABF", "Title")).."|nChoose the color for the Bottom Art")
end)
-- leave --
abfOptions3aBox5PopOut1:SetScript("OnLeave", abfLeavingMenus)
-- drop down --
abfClickPopOut(abfOptions3aBox5PopOut1, abfOptions3aBox5PopOut1Choice0)
-- naming at Options10 --
-- sort --
for i = 1, 2, 1 do
	_G["abfOptions3aBox5PopOut1Choice"..i]:SetParent(abfOptions3aBox5PopOut1Choice0)
	_G["abfOptions3aBox5PopOut1Choice"..i]:SetPoint("TOP", _G["abfOptions3aBox5PopOut1Choice"..i-1], "BOTTOM", 0, 0)
end
-- click --
for i = 0, 2, 1 do
	_G["abfOptions3aBox5PopOut1Choice"..i]:HookScript("OnClick", function(self, button, down)
		if button == "LeftButton" and down == false then
			ABFactionBars["Bar3"]["Bottom"]["ArtColorOptions"] = self.Text:GetText()
			abfOptions3aBox5PopOut1.Text:SetText(self.Text:GetText())
			abfOptions3aBox5PopOut1Choice0:Hide()
			if ABFactionBars["Bar3"]["Bottom"]["ArtColorOptions"] == "Default Color" then
				ABFactionBars["Bar3"]["Bottom"]["ArtColor"] = {r = 1, g = 1, b = 1, a = 1}
				if abfOptions3aBox5Slider1:IsShown() then abfOptions3aBox5Slider1:Hide() end
				abfSavedColorBottom("Bar3", MultiBarBottomRight)
			elseif ABFactionBars["Bar3"]["Bottom"]["ArtColorOptions"] == "Class Color" then
				ABFactionBars["Bar3"]["Bottom"]["ArtColor"] = CreateColor(abfClassColor:GetRGB())
				if abfOptions3aBox5Slider1:IsShown() then abfOptions3aBox5Slider1:Hide() end
				abfSavedColorBottom("Bar3", MultiBarBottomRight)
			elseif ABFactionBars["Bar3"]["Bottom"]["ArtColorOptions"] == "Custom Color" then
				if not abfOptions3aBox5Slider1:IsShown() then abfOptions3aBox5Slider1:Show() end
				abfShowColorPicker("Bar3", MultiBarBottomRight, "Bottom", abfSavedColorBottom, "ArtColor")
			end
		end
	end)
end
-- Box 5, Slider 1, Bottom Desaturation --
-- min max values --
abfOptions3aBox5Slider1.MinText:SetText(0)
abfOptions3aBox5Slider1.MaxText:SetText(1)
abfOptions3aBox5Slider1.Slider:SetMinMaxValues(0, 10)
-- enter --
abfOptions3aBox5Slider1.Slider:SetScript("OnEnter", function(self)
	abfEnteringMenus(self)
	GameTooltip:SetText("|T"..C_AddOns.GetAddOnMetadata("ABF", "IconTexture")..":16|t "..abfMainColor:WrapTextInColorCode(C_AddOns.GetAddOnMetadata("ABF", "Title")).."|nYou can also use your mousewheel|nor the buttons to the edge|nto change the value!") 
end)
-- leave --
abfOptions3aBox5Slider1.Slider:SetScript("OnLeave", abfLeavingMenus)
-- on mouse wheel --
abfOptions3aBox5Slider1.Slider:SetScript("OnMouseWheel", abfMouseWheelSlider)
-- On Value Changed --
abfOptions3aBox5Slider1.Slider:SetScript("OnValueChanged", function (self, value, userInput)
	abfOptions3aBox5Slider1.TopText:SetText("Desaturation of the Artwork: "..(self:GetValue()/10))
	ABFactionBars["Bar3"]["Bottom"]["ArtColorDesaturation"] = self:GetValue()/10
	abfSavedColorBottom("Bar3", MultiBarBottomRight)
end)
-- Options Box 6, Bottom Color Gradient --
-- Box 6, Pop Out Button 1, Bottom Color Gradient One --
-- enter --
abfOptions3aBox6PopOut1:SetScript("OnEnter", function(self)
	abfEnteringMenus(self)
	GameTooltip:SetText("|T"..C_AddOns.GetAddOnMetadata("ABF", "IconTexture")..":16|t"..abfMainColor:WrapTextInColorCode(C_AddOns.GetAddOnMetadata("ABF", "Title")).."|nChoose the first grandient color for the Bottom Art")
end)
-- leave --
abfOptions3aBox6PopOut1:SetScript("OnLeave", abfLeavingMenus)
-- drop down --
abfClickPopOut(abfOptions3aBox6PopOut1, abfOptions3aBox6PopOut1Choice0)
-- naming at Options10 --
-- sort --
for i = 1, 2, 1 do
	_G["abfOptions3aBox6PopOut1Choice"..i]:SetParent(abfOptions3aBox6PopOut1Choice0)
	_G["abfOptions3aBox6PopOut1Choice"..i]:SetPoint("TOP", _G["abfOptions3aBox6PopOut1Choice"..i-1], "BOTTOM", 0, 0)
end
-- click --
for i = 0, 2, 1 do
	_G["abfOptions3aBox6PopOut1Choice"..i]:HookScript("OnClick", function(self, button, down)
		if button == "LeftButton" and down == false then
			ABFactionBars["Bar3"]["Bottom"]["ArtGradientOptions1"] = self.Text:GetText()
			abfOptions3aBox6PopOut1.Text:SetText(self.Text:GetText())
			abfOptions3aBox6PopOut1Choice0:Hide()
			if ABFactionBars["Bar3"]["Bottom"]["ArtGradientOptions1"] == "Default Color" then
				ABFactionBars["Bar3"]["Bottom"]["ArtGradientColor1"] = {r = 1, g = 1, b = 1, a = 1}
				abfSavedColorBottom("Bar3", MultiBarBottomRight)
			elseif ABFactionBars["Bar3"]["Bottom"]["ArtGradientOptions1"] == "Class Color" then
				ABFactionBars["Bar3"]["Bottom"]["ArtGradientColor1"] = CreateColor(abfClassColor:GetRGB())
				abfSavedColorBottom("Bar3", MultiBarBottomRight)
			elseif ABFactionBars["Bar3"]["Bottom"]["ArtGradientOptions1"] == "Custom Color" then
				abfShowColorPicker("Bar3", MultiBarBottomRight, "Bottom", abfSavedColorBottom, "ArtGradientColor1")
			end
		end
	end)
end
-- Box 6, Pop Out Button 2, Bottom Color Gradient Two --
-- enter --
abfOptions3aBox6PopOut2:SetScript("OnEnter", function(self)
	abfEnteringMenus(self)
	GameTooltip:SetText("|T"..C_AddOns.GetAddOnMetadata("ABF", "IconTexture")..":16|t"..abfMainColor:WrapTextInColorCode(C_AddOns.GetAddOnMetadata("ABF", "Title")).."|nChoose the second grandient color for the Bottom Art")
end)
-- leave --
abfOptions3aBox6PopOut2:SetScript("OnLeave", abfLeavingMenus)
-- drop down --
abfClickPopOut(abfOptions3aBox6PopOut2, abfOptions3aBox6PopOut2Choice0)
-- naming at Options10 --
-- sort --
for i = 1, 2, 1 do
	_G["abfOptions3aBox6PopOut2Choice"..i]:SetParent(abfOptions3aBox6PopOut2Choice0)
	_G["abfOptions3aBox6PopOut2Choice"..i]:SetPoint("TOP", _G["abfOptions3aBox6PopOut2Choice"..i-1], "BOTTOM", 0, 0)
end
-- click --
for i = 0, 2, 1 do
	_G["abfOptions3aBox6PopOut2Choice"..i]:HookScript("OnClick", function(self, button, down)
		if button == "LeftButton" and down == false then
			ABFactionBars["Bar3"]["Bottom"]["ArtGradientOptions2"] = self.Text:GetText()
			abfOptions3aBox6PopOut2.Text:SetText(self.Text:GetText())
			abfOptions3aBox6PopOut2Choice0:Hide()
			if ABFactionBars["Bar3"]["Bottom"]["ArtGradientOptions2"] == "Default Color" then
				ABFactionBars["Bar3"]["Bottom"]["ArtGradientColor2"] = {r = 1, g = 1, b = 1, a = 1}
				abfSavedColorBottom("Bar3", MultiBarBottomRight)
			elseif ABFactionBars["Bar3"]["Bottom"]["ArtGradientOptions2"] == "Class Color" then
				ABFactionBars["Bar3"]["Bottom"]["ArtGradientColor2"] = CreateColor(abfClassColor:GetRGB())
				abfSavedColorBottom("Bar3", MultiBarBottomRight)
			elseif ABFactionBars["Bar3"]["Bottom"]["ArtGradientOptions2"] == "Custom Color" then
				abfShowColorPicker("Bar3", MultiBarBottomRight, "Bottom", abfSavedColorBottom, "ArtGradientColor2")
			end
		end
	end)
end
-- Box 6, Pop Out Button 3, Bottom Color Gradient Orientation --
-- enter --
abfOptions3aBox6PopOut3:SetScript("OnEnter", function(self)
	abfEnteringMenus(self)
	GameTooltip:SetText("|T"..C_AddOns.GetAddOnMetadata("ABF", "IconTexture")..":16|t"..abfMainColor:WrapTextInColorCode(C_AddOns.GetAddOnMetadata("ABF", "Title")).."|nChoose the orientation|nof the colors for the Bottom Art")
end)
-- leave --
abfOptions3aBox6PopOut3:SetScript("OnLeave", abfLeavingMenus)
-- drop down --
abfClickPopOut(abfOptions3aBox6PopOut3, abfOptions3aBox6PopOut3Choice0)
-- naming at Options10 --
-- sort --
for i = 1, 1, 1 do
	_G["abfOptions3aBox6PopOut3Choice"..i]:SetParent(abfOptions3aBox6PopOut3Choice0)
	_G["abfOptions3aBox6PopOut3Choice"..i]:SetPoint("TOP", _G["abfOptions3aBox6PopOut3Choice"..i-1], "BOTTOM", 0, 0)
end
-- click --
for i = 0, 1, 1 do
	_G["abfOptions3aBox6PopOut3Choice"..i]:HookScript("OnClick", function(self, button, down)
		if button == "LeftButton" and down == false then
			ABFactionBars["Bar3"]["Bottom"]["ArtGradientOrientation"] = self.Text:GetText()
			abfOptions3aBox6PopOut3.Text:SetText(self.Text:GetText())
			abfOptions3aBox6PopOut3Choice0:Hide()
			abfSavedColorBottom("Bar3", MultiBarBottomRight)
		end
	end)
end
-- Options Box 7, Normal Texture Color --
-- Box 7, Pop Out Button 1, Normal Texture Color Choice --
-- enter --
abfOptions3aBox7PopOut1:SetScript("OnEnter", function(self)
	abfEnteringMenus(self)
	GameTooltip:SetText("|T"..C_AddOns.GetAddOnMetadata("ABF", "IconTexture")..":16|t"..abfMainColor:WrapTextInColorCode(C_AddOns.GetAddOnMetadata("ABF", "Title")).."|nChoose the mode color for|nthe Buttons Border! (one color or gradient color)") 
end)
-- leave --
abfOptions3aBox7PopOut1:SetScript("OnLeave", abfLeavingMenus)
-- drop down --
abfClickPopOut(abfOptions3aBox7PopOut1, abfOptions3aBox7PopOut1Choice0)
-- naming at Options10 --
-- sort --
for i = 1, 1, 1 do
	_G["abfOptions3aBox7PopOut1Choice"..i]:SetParent(abfOptions3aBox7PopOut1Choice0)
	_G["abfOptions3aBox7PopOut1Choice"..i]:SetPoint("TOP", _G["abfOptions3aBox7PopOut1Choice"..i-1], "BOTTOM", 0, 0)
end
-- click --
for i = 0, 1, 1 do
	_G["abfOptions3aBox7PopOut1Choice"..i]:HookScript("OnClick", function(self, button, down)
		if button == "LeftButton" and down == false then
			ABFactionBars["Bar3"]["NormalTextureColorMode"] = self.Text:GetText()
			abfOptions3aBox7PopOut1.Text:SetText(self.Text:GetText())
			abfOptions3aBox7PopOut1Choice0:Hide()
			abfSavedColorNormalTexture("Bar3", MultiBarBottomRight)
			if ABFactionBars["Bar3"]["NormalTextureColorMode"] == "One Color" then
				if not abfOptions3aBox8:IsShown() then abfOptions3aBox8:Show() end
				if abfOptions3aBox9:IsShown() then abfOptions3aBox9:Hide() end
			elseif ABFactionBars["Bar3"]["NormalTextureColorMode"] == "Gradient Color" then
				if abfOptions3aBox8:IsShown() then abfOptions3aBox8:Hide() end
				if not abfOptions3aBox9:IsShown() then abfOptions3aBox9:Show() end
			end
		end
	end)
end
-- Options Box 8, Normal Texture Color One --
-- Box 8, Pop Out Button 1, Normal Texture Color One Choices --
-- enter --
abfOptions3aBox8PopOut1:SetScript("OnEnter", function(self)
	abfEnteringMenus(self)
	GameTooltip:SetText("|T"..C_AddOns.GetAddOnMetadata("ABF", "IconTexture")..":16|t"..abfMainColor:WrapTextInColorCode(C_AddOns.GetAddOnMetadata("ABF", "Title")).."|nChoose the color for the Buttons Borders")
end)
-- leave --
abfOptions3aBox8PopOut1:SetScript("OnLeave", abfLeavingMenus)
-- drop down --
abfClickPopOut(abfOptions3aBox8PopOut1, abfOptions3aBox8PopOut1Choice0)
-- naming at Options10 --
-- sort --
for i = 1, 2, 1 do
	_G["abfOptions3aBox8PopOut1Choice"..i]:SetParent(abfOptions3aBox8PopOut1Choice0)
	_G["abfOptions3aBox8PopOut1Choice"..i]:SetPoint("TOP", _G["abfOptions3aBox8PopOut1Choice"..i-1], "BOTTOM", 0, 0)
end
-- click --
for i = 0, 2, 1 do
	_G["abfOptions3aBox8PopOut1Choice"..i]:HookScript("OnClick", function(self, button, down)
		if button == "LeftButton" and down == false then
			ABFactionBars["Bar3"]["NormalTextureColorOptions"] = self.Text:GetText()
			abfOptions3aBox8PopOut1.Text:SetText(self.Text:GetText())
			abfOptions3aBox8PopOut1Choice0:Hide()
			if ABFactionBars["Bar3"]["NormalTextureColorOptions"] == "Default Color" then
				ABFactionBars["Bar3"]["NormalTextureColor"] = {r = 1, g = 1, b = 1, a = 1}
				abfSavedColorNormalTexture("Bar3", MultiBarBottomRight)
			elseif ABFactionBars["Bar3"]["NormalTextureColorOptions"] == "Class Color" then
				ABFactionBars["Bar3"]["NormalTextureColor"] = CreateColor(abfClassColor:GetRGB())
				abfSavedColorNormalTexture("Bar3", MultiBarBottomRight)
			elseif ABFactionBars["Bar3"]["NormalTextureColorOptions"] == "Custom Color" then
				abfShowColorPickerCD("Bar3", MultiBarBottomRight, "NormalTextureColor", abfSavedColorNormalTexture)
			end
		end
	end)
end
-- Options Box 9, Normal Texture Color Gradient --
-- Box 9, Pop Out Button 1, Normal Texture Color Gradient One --
-- enter --
abfOptions3aBox9PopOut1:SetScript("OnEnter", function(self)
	abfEnteringMenus(self)
	GameTooltip:SetText("|T"..C_AddOns.GetAddOnMetadata("ABF", "IconTexture")..":16|t"..abfMainColor:WrapTextInColorCode(C_AddOns.GetAddOnMetadata("ABF", "Title")).."|nChoose the first grandient color for the Buttons Borders")
end)
-- leave --
abfOptions3aBox9PopOut1:SetScript("OnLeave", abfLeavingMenus)
-- drop down --
abfClickPopOut(abfOptions3aBox9PopOut1, abfOptions3aBox9PopOut1Choice0)
-- naming at Options10 --
-- sort --
for i = 1, 2, 1 do
	_G["abfOptions3aBox9PopOut1Choice"..i]:SetParent(abfOptions3aBox9PopOut1Choice0)
	_G["abfOptions3aBox9PopOut1Choice"..i]:SetPoint("TOP", _G["abfOptions3aBox9PopOut1Choice"..i-1], "BOTTOM", 0, 0)
end
-- click --
for i = 0, 2, 1 do
	_G["abfOptions3aBox9PopOut1Choice"..i]:HookScript("OnClick", function(self, button, down)
		if button == "LeftButton" and down == false then
			ABFactionBars["Bar3"]["NormalTextureGradientOptions1"] = self.Text:GetText()
			abfOptions3aBox9PopOut1.Text:SetText(self.Text:GetText())
			abfOptions3aBox9PopOut1Choice0:Hide()
			if ABFactionBars["Bar3"]["NormalTextureGradientOptions1"] == "Default Color" then
				ABFactionBars["Bar3"]["NormalTextureGradient1"] = {r = 1, g = 1, b = 1, a = 1}
				abfSavedColorNormalTexture("Bar3", MultiBarBottomRight)
			elseif ABFactionBars["Bar3"]["NormalTextureGradientOptions1"] == "Class Color" then
				ABFactionBars["Bar3"]["NormalTextureGradient1"] = CreateColor(abfClassColor:GetRGB())
				abfSavedColorNormalTexture("Bar3", MultiBarBottomRight)
			elseif ABFactionBars["Bar3"]["NormalTextureGradientOptions1"] == "Custom Color" then
				abfShowColorPickerCD("Bar3", MultiBarBottomRight, "NormalTextureGradient1", abfSavedColorNormalTexture)
			end
		end
	end)
end
-- Box 9, Pop Out Button 2, Normal Texture Color Gradient two --
-- enter --
abfOptions3aBox9PopOut2:SetScript("OnEnter", function(self)
	abfEnteringMenus(self)
	GameTooltip:SetText("|T"..C_AddOns.GetAddOnMetadata("ABF", "IconTexture")..":16|t"..abfMainColor:WrapTextInColorCode(C_AddOns.GetAddOnMetadata("ABF", "Title")).."|nChoose the second grandient color for the Buttons Borders")
end)
-- leave --
abfOptions3aBox9PopOut2:SetScript("OnLeave", abfLeavingMenus)
-- drop down --
abfClickPopOut(abfOptions3aBox9PopOut2, abfOptions3aBox9PopOut2Choice0)
-- naming at Options10 --
-- sort --
for i = 1, 2, 1 do
	_G["abfOptions3aBox9PopOut2Choice"..i]:SetParent(abfOptions3aBox9PopOut2Choice0)
	_G["abfOptions3aBox9PopOut2Choice"..i]:SetPoint("TOP", _G["abfOptions3aBox9PopOut2Choice"..i-1], "BOTTOM", 0, 0)
end
-- click --
for i = 0, 2, 1 do
	_G["abfOptions3aBox9PopOut2Choice"..i]:HookScript("OnClick", function(self, button, down)
		if button == "LeftButton" and down == false then
			ABFactionBars["Bar3"]["NormalTextureGradientOptions2"] = self.Text:GetText()
			abfOptions3aBox9PopOut2.Text:SetText(self.Text:GetText())
			abfOptions3aBox9PopOut2Choice0:Hide()
			if ABFactionBars["Bar3"]["NormalTextureGradientOptions2"] == "Default Color" then
				ABFactionBars["Bar3"]["NormalTextureGradient2"] = {r = 1, g = 1, b = 1, a = 1}
				abfSavedColorNormalTexture("Bar3", MultiBarBottomRight)
			elseif ABFactionBars["Bar3"]["NormalTextureGradientOptions2"] == "Class Color" then
				ABFactionBars["Bar3"]["NormalTextureGradient2"] = CreateColor(abfClassColor:GetRGB())
				abfSavedColorNormalTexture("Bar3", MultiBarBottomRight)
			elseif ABFactionBars["Bar3"]["NormalTextureGradientOptions2"] == "Custom Color" then
				abfShowColorPickerCD("Bar3", MultiBarBottomRight, "NormalTextureGradient2", abfSavedColorNormalTexture)
			end
		end
	end)
end
-- Box 9, Pop Out Button 3, Normal Texture Color Gradient Orientation --
-- enter --
abfOptions3aBox9PopOut3:SetScript("OnEnter", function(self)
	abfEnteringMenus(self)
	GameTooltip:SetText("|T"..C_AddOns.GetAddOnMetadata("ABF", "IconTexture")..":16|t"..abfMainColor:WrapTextInColorCode(C_AddOns.GetAddOnMetadata("ABF", "Title")).."|nChoose the orientation|nof the colors for the Buttons Borders")
end)
-- leave --
abfOptions3aBox9PopOut3:SetScript("OnLeave", abfLeavingMenus)
-- drop down --
abfClickPopOut(abfOptions3aBox9PopOut3, abfOptions3aBox9PopOut3Choice0)
-- naming at Options10 --
-- sort --
for i = 1, 1, 1 do
	_G["abfOptions3aBox9PopOut3Choice"..i]:SetParent(abfOptions3aBox9PopOut3Choice0)
	_G["abfOptions3aBox9PopOut3Choice"..i]:SetPoint("TOP", _G["abfOptions3aBox9PopOut3Choice"..i-1], "BOTTOM", 0, 0)
end
-- click --
for i = 0, 1, 1 do
	_G["abfOptions3aBox9PopOut3Choice"..i]:HookScript("OnClick", function(self, button, down)
		if button == "LeftButton" and down == false then
			ABFactionBars["Bar3"]["NormalTextureGradientOrientation"] = self.Text:GetText()
			abfOptions3aBox9PopOut3.Text:SetText(self.Text:GetText())
			abfOptions3aBox9PopOut3Choice0:Hide()
			abfSavedColorNormalTexture("Bar3", MultiBarBottomRight)
		end
	end)
end
-- Showing the panel --
abfOptions3a:HookScript("OnShow", function(self)
	CheckSavedVariables()
-- panels --
	if abfOptions3:IsShown() then abfOptions3:Hide() end
-- tabs --
	abfOptions00Tab3.Text:SetTextColor(abfHighColor:GetRGB())
	for i = 1, 2, 1 do
		_G["abfOptions00Tab"..i].Text:SetTextColor(abfMainColor:GetRGB())
	end
	for i = 4, 10, 1 do
		_G["abfOptions00Tab"..i].Text:SetTextColor(abfMainColor:GetRGB())
	end
-- buttons --
	abfOptions00PageButton1c.Text:SetTextColor(abfMainColor:GetRGB())
	abfOptions00PageButton2c.Text:SetTextColor(abfHighColor:GetRGB())
end)
