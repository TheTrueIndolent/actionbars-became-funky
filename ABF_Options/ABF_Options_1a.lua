-- takeing care the rest boxes --
abfOptions1aBox2:SetPoint("TOPLEFT", abfOptions1aBox1, "BOTTOMLEFT", 0, 6)
abfOptions1aBox3:SetPoint("TOPLEFT", abfOptions1aBox1, "BOTTOMLEFT", 0, 6)
abfOptions1aBox01:SetPoint("TOPLEFT", abfOptions1aBox3, "BOTTOMLEFT", 0, 0)
abfOptions1aBox5:SetPoint("TOPRIGHT", abfOptions1aBox4, "BOTTOMRIGHT", 0, 6)
abfOptions1aBox6:SetPoint("TOPRIGHT", abfOptions1aBox4, "BOTTOMRIGHT", 0, 6)
abfOptions1aBox02:SetPoint("TOPRIGHT", abfOptions1aBox6, "BOTTOMRIGHT", 0, 0)
abfOptions1aBox7:SetPoint("TOPLEFT", abfOptions1aBox01, "BOTTOMLEFT", 0, 0)
abfOptions1aBox8:SetPoint("TOPLEFT", abfOptions1aBox7, "BOTTOMLEFT", 0, 6)
abfOptions1aBox9:SetPoint("TOPLEFT", abfOptions1aBox7, "BOTTOMLEFT", 0, 6)
abfOptions1aBox1.BorderBottom:Hide()
abfOptions1aBox2.BorderTop:Hide()
abfOptions1aBox3.BorderTop:Hide()
abfOptions1aBox4.BorderBottom:Hide()
abfOptions1aBox5.BorderTop:Hide()
abfOptions1aBox6.BorderTop:Hide()
abfOptions1aBox7.BorderBottom:Hide()
abfOptions1aBox8.BorderTop:Hide()
abfOptions1aBox9.BorderTop:Hide()
-- naming tabs --
abfOptions1aBox1.TitleTxt:SetText("Top Art, Color Mode & Animation")
abfOptions1aBox2.TitleTxt:SetText("Top Art One Color")
abfOptions1aBox3.TitleTxt:SetText("Top Art Gradient Color")
abfOptions1aBox4.TitleTxt:SetText("Bottom Art, Color Mode & Animation")
abfOptions1aBox5.TitleTxt:SetText("Bottom Art One Color")
abfOptions1aBox6.TitleTxt:SetText("Bottom Art Gradient Color")
abfOptions1aBox7.TitleTxt:SetText("Buttons Border Color Mode")
abfOptions1aBox8.TitleTxt:SetText("Buttons Border One Color")
abfOptions1aBox9.TitleTxt:SetText("Buttons Border Gradient Color")
-- Checking the Saved Variables --
local function CheckSavedVariables()
-- Box 1, Pop Out Button 1 --
	abfOptions1aBox1PopOut1.Text:SetText(ABFactionBars["Bar1"]["Top"]["Art"])
	if ABFactionBars["Bar1"]["Top"]["Art"] == "JailersTower" then
		if not abfOptions1aBox1PopOut3:IsShown() then abfOptions1aBox1PopOut3:Show() end
		if not abfOptions1aBox1PopOut4:IsShown() then abfOptions1aBox1PopOut4:Show() end
	else
		if abfOptions1aBox1PopOut3:IsShown() then abfOptions1aBox1PopOut3:Hide() end
		if abfOptions1aBox1PopOut4:IsShown() then abfOptions1aBox1PopOut4:Hide() end
	end
-- Box 1, Pop Out Button 2 --
	abfOptions1aBox1PopOut2.Text:SetText(ABFactionBars["Bar1"]["Top"]["ArtColorChoice"])
	if ABFactionBars["Bar1"]["Top"]["ArtColorChoice"] == "One Color" then
		if not abfOptions1aBox2:IsShown() then abfOptions1aBox2:Show() end
		if abfOptions1aBox3:IsShown() then abfOptions1aBox3:Hide() end
	elseif ABFactionBars["Bar1"]["Top"]["ArtColorChoice"] == "Gradient Color" then
		if abfOptions1aBox2:IsShown() then abfOptions1aBox2:Hide() end
		if not abfOptions1aBox3:IsShown() then abfOptions1aBox3:Show() end
	end
-- Box 1, Pop Out Button 3--
	if ABFactionBars["Bar1"]["Top"]["Animation"] then
		abfOptions1aBox1PopOut3.Text:SetText("Show")
	elseif not ABFactionBars["Bar1"]["Top"]["Animation"] then
		abfOptions1aBox1PopOut3.Text:SetText("Hide")
	end
-- Box 1, Pop Out Button 4 --
	abfOptions1aBox1PopOut4.Text:SetText(ABFactionBars["Bar1"]["Top"]["AnimationColorOptions"])
-- Box 2, Pop Out Button 1
	abfOptions1aBox2PopOut1.Text:SetText(ABFactionBars["Bar1"]["Top"]["ArtColorOptions"])
	if ABFactionBars["Bar1"]["Top"]["ArtColorOptions"] == "Custom Color" then
		if not abfOptions1aBox2Slider1:IsShown() then abfOptions1aBox2Slider1:Show() end
	else
		if abfOptions1aBox2Slider1:IsShown() then abfOptions1aBox2Slider1:Hide() end
	end
-- Box 2, Slider 1 --
	abfOptions1aBox2Slider1.Slider:SetValue(ABFactionBars["Bar1"]["Top"]["ArtColorDesaturation"] * 10)
-- Box 3, Pop Out Button 1 --
	abfOptions1aBox3PopOut1.Text:SetText(ABFactionBars["Bar1"]["Top"]["ArtGradientOptions1"])
-- Box 3, Pop Out Button 2 --
	abfOptions1aBox3PopOut2.Text:SetText(ABFactionBars["Bar1"]["Top"]["ArtGradientOptions2"])
-- Box 3, Pop Out Button 3 --
	abfOptions1aBox3PopOut3.Text:SetText(ABFactionBars["Bar1"]["Top"]["ArtGradientOrientation"])
-- Box 4, Pop Out Button 1 --
	abfOptions1aBox4PopOut1.Text:SetText(ABFactionBars["Bar1"]["Bottom"]["Art"])
	if ABFactionBars["Bar1"]["Bottom"]["Art"] == "SoftCloud" then
		if not abfOptions1aBox4PopOut3:IsShown() then abfOptions1aBox4PopOut3:Show() end
		if not abfOptions1aBox4PopOut4:IsShown() then abfOptions1aBox4PopOut4:Show() end
	else
		if abfOptions1aBox4PopOut3:IsShown() then abfOptions1aBox4PopOut3:Hide() end
		if abfOptions1aBox4PopOut4:IsShown() then abfOptions1aBox4PopOut4:Hide() end
	end
-- Box 4, Pop Out Button 2 --
	abfOptions1aBox4PopOut2.Text:SetText(ABFactionBars["Bar1"]["Bottom"]["ArtColorChoice"])
	if ABFactionBars["Bar1"]["Bottom"]["ArtColorChoice"] == "One Color" then
		if not abfOptions1aBox5:IsShown() then abfOptions1aBox5:Show() end
		if abfOptions1aBox6:IsShown() then abfOptions1aBox6:Hide() end
	elseif ABFactionBars["Bar1"]["Bottom"]["ArtColorChoice"] == "Gradient Color" then
		if abfOptions1aBox5:IsShown() then abfOptions1aBox5:Hide() end
		if not abfOptions1aBox6:IsShown() then abfOptions1aBox6:Show() end
	end
-- Box 4, Pop Out Button 3 --
	if ABFactionBars["Bar1"]["Bottom"]["Animation"] then
		abfOptions1aBox4PopOut3.Text:SetText("Show")
	elseif not ABFactionBars["Bar1"]["Bottom"]["Animation"] then
		abfOptions1aBox4PopOut3.Text:SetText("Hide")
	end
-- Box 4, Pop Out Button 4 --
	abfOptions1aBox4PopOut4.Text:SetText(ABFactionBars["Bar1"]["Bottom"]["AnimationColorOptions"])
-- Box 5, Pop Out Button 1 --
	abfOptions1aBox5PopOut1:SetText(ABFactionBars["Bar1"]["Bottom"]["ArtColorOptions"])
	if ABFactionBars["Bar1"]["Bottom"]["ArtColorOptions"] == "Custom Color" then
		if not abfOptions1aBox5Slider1:IsShown() then abfOptions1aBox5Slider1:Hide() end
	else
		if abfOptions1aBox5Slider1:IsShown() then abfOptions1aBox5Slider1:Hide() end
	end
-- Box 5, Slider 1 --
	abfOptions1aBox5Slider1.Slider:SetValue(ABFactionBars["Bar1"]["Bottom"]["ArtColorDesaturation"] * 10)
-- Box 6, Pop Out Button 1 --
	abfOptions1aBox6PopOut1.Text:SetText(ABFactionBars["Bar1"]["Bottom"]["ArtGradientOptions1"])
-- Box 6, Pop Out Button 2 --
	abfOptions1aBox6PopOut2.Text:SetText(ABFactionBars["Bar1"]["Bottom"]["ArtGradientOptions2"])
-- Box 6, Pop Out Button 2 --
	abfOptions1aBox6PopOut3.Text:SetText(ABFactionBars["Bar1"]["Bottom"]["ArtGradientOrientation"])
-- Box 7, Pop Out Button 1 --
	abfOptions1aBox7PopOut1.Text:SetText(ABFactionBars["Bar1"]["NormalTextureColorMode"])
	if ABFactionBars["Bar1"]["NormalTextureColorMode"] == "One Color" then
		if not abfOptions1aBox8:IsShown() then abfOptions1aBox8:Show() end
		if abfOptions1aBox9:IsShown() then abfOptions1aBox9:Hide() end
	elseif ABFactionBars["Bar1"]["NormalTextureColorMode"] == "Gradient Color" then
		if abfOptions1aBox8:IsShown() then abfOptions1aBox8:Hide() end
		if not abfOptions1aBox9:IsShown() then abfOptions1aBox9:Show() end
	end
-- Box 8, Pop Out Button 1 --
	abfOptions1aBox8PopOut1.Text:SetText(ABFactionBars["Bar1"]["NormalTextureColorOptions"])
-- Box 9, Pop Out Button 1 --
	abfOptions1aBox9PopOut1.Text:SetText(ABFactionBars["Bar1"]["NormalTextureGradientOptions1"])
-- Box 9, Pop Out Button 2 --
	abfOptions1aBox9PopOut2.Text:SetText(ABFactionBars["Bar1"]["NormalTextureGradientOptions2"])
-- Box 9, Pop Out Button 3 --
	abfOptions1aBox9PopOut3.Text:SetText(ABFactionBars["Bar1"]["NormalTextureGradientOrientation"])
end
-- Options Box 1, Top Art --
-- Box 1, Pop Out Button 1, Top Art choice --
-- enter --
abfOptions1aBox1PopOut1:SetScript("OnEnter", function(self)
	abfEnteringMenus(self)
	GameTooltip:SetText("|T"..C_AddOns.GetAddOnMetadata("ABF", "IconTexture")..":16|t"..abfMainColor:WrapTextInColorCode(C_AddOns.GetAddOnMetadata("ABF", "Title")).."|nChoose the Top Art for|nthe Action Bar 1") 
end)
-- leave --
abfOptions1aBox1PopOut1:SetScript("OnLeave", abfLeavingMenus)
-- drop down --
abfClickPopOut(abfOptions1aBox1PopOut1, abfOptions1aBox1PopOut1Choice0)
-- sort --
for i = 1, 3, 1 do
	_G["abfOptions1aBox1PopOut1Choice"..i]:SetParent(abfOptions1aBox1PopOut1Choice0)
	_G["abfOptions1aBox1PopOut1Choice"..i]:SetPoint("TOP", _G["abfOptions1aBox1PopOut1Choice"..i-1], "BOTTOM", 0, 0)
-- on leave --
	_G["abfOptions1aBox1PopOut1Choice"..i]:HookScript("OnLeave", function(self) abfOptions1aBox1PopOut1.Example:Hide() abfOptions1aBox1PopOut1.Example1:Hide() end)
end
-- naming at Options10 --
-- clicking --
for i = 0, 3, 1 do
	_G["abfOptions1aBox1PopOut1Choice"..i]:HookScript("OnClick", function(self, button, down)
		if button == "LeftButton" and down == false then
			ABFactionBars["Bar1"]["Top"]["Art"] = self.Text:GetText()
			abfOptions1aBox1PopOut1.Text:SetText(self.Text:GetText())
			abfOptions1aBox1PopOut1Choice0:Hide()
			if ABFactionBars["Bar1"]["Top"]["Art"] == "JailersTower" then
				if not abfOptions1aBox1PopOut3:IsShown() then abfOptions1aBox1PopOut3:Show() end
				if not abfOptions1aBox1PopOut4:IsShown() then abfOptions1aBox1PopOut4:Show() end
			else
				if abfOptions1aBox1PopOut3:IsShown() then abfOptions1aBox1PopOut3:Hide() end
				if abfOptions1aBox1PopOut4:IsShown() then abfOptions1aBox1PopOut4:Hide() end
			end
			abfSavedArtTop("Bar1", MainMenuBar)
		end
	end)
end
-- entering the pop out buttons at Options10 --
-- Box 1, Pop Out Button 2, Top Art color choice --
-- enter --
abfOptions1aBox1PopOut2:SetScript("OnEnter", function(self)
	abfEnteringMenus(self)
	GameTooltip:SetText("|T"..C_AddOns.GetAddOnMetadata("ABF", "IconTexture")..":16|t"..abfMainColor:WrapTextInColorCode(C_AddOns.GetAddOnMetadata("ABF", "Title")).."|nChoose the mode color for|nthe Top Art! (one color or gradient color)") 
end)
-- leave --
abfOptions1aBox1PopOut2:SetScript("OnLeave", abfLeavingMenus)
-- drop down --
abfClickPopOut(abfOptions1aBox1PopOut2, abfOptions1aBox1PopOut2Choice0)
-- naming at Options10 --
-- sort --
for i = 1, 1, 1 do
	_G["abfOptions1aBox1PopOut2Choice"..i]:SetParent(abfOptions1aBox1PopOut2Choice0)
	_G["abfOptions1aBox1PopOut2Choice"..i]:SetPoint("TOP", _G["abfOptions1aBox1PopOut2Choice"..i-1], "BOTTOM", 0, 0)
end
-- click --
for i = 0, 1, 1 do
	_G["abfOptions1aBox1PopOut2Choice"..i]:HookScript("OnClick", function(self, button, down)
		if button == "LeftButton" and down == false then
			ABFactionBars["Bar1"]["Top"]["ArtColorChoice"] = self.Text:GetText()
			abfOptions1aBox1PopOut2.Text:SetText(self.Text:GetText())
			abfOptions1aBox1PopOut2Choice0:Hide()
			abfSavedColorTop("Bar1", MainMenuBar)
			if ABFactionBars["Bar1"]["Top"]["ArtColorChoice"] == "One Color" then
				if not abfOptions1aBox2:IsShown() then abfOptions1aBox2:Show() end
				if abfOptions1aBox3:IsShown() then abfOptions1aBox3:Hide() end
			elseif ABFactionBars["Bar1"]["Top"]["ArtColorChoice"] == "Gradient Color" then
				if abfOptions1aBox2:IsShown() then abfOptions1aBox2:Hide() end
				if not abfOptions1aBox3:IsShown() then abfOptions1aBox3:Show() end
			end
		end
	end)
end
-- Box 1, Pop Out Button 3, Top Art Animation --
-- enter --
abfOptions1aBox1PopOut3:SetScript("OnEnter", function(self)
	abfEnteringMenus(self)
	GameTooltip:SetText("|T"..C_AddOns.GetAddOnMetadata("ABF", "IconTexture")..":16|t"..abfMainColor:WrapTextInColorCode(C_AddOns.GetAddOnMetadata("ABF", "Title")).."|nWhould you like the animation|nfor the Top Art to be shown?")
end)
-- leave --
abfOptions1aBox1PopOut3:SetScript("OnLeave", abfLeavingMenus)
-- drop down --
abfClickPopOut(abfOptions1aBox1PopOut3, abfOptions1aBox1PopOut3Choice0)
-- naming at Options10 --
-- sort --
for i = 1, 1, 1 do
	_G["abfOptions1aBox1PopOut3Choice"..i]:SetParent(abfOptions1aBox1PopOut3Choice0)
	_G["abfOptions1aBox1PopOut3Choice"..i]:SetPoint("TOP", _G["abfOptions1aBox1PopOut3Choice"..i-1], "BOTTOM", 0, 0)
end
-- click --
for i = 0, 1, 1 do
	_G["abfOptions1aBox1PopOut3Choice"..i]:HookScript("OnClick", function(self, button, down)
		if button == "LeftButton" and down == false then
			abfOptions1aBox1PopOut3.Text:SetText(self.Text:GetText())
			abfOptions1aBox1PopOut3Choice0:Hide()
			if self.Text:GetText() == "Hide" then
				ABFactionBars["Bar1"]["Top"]["Animation"] = false
			elseif self.Text:GetText() == "Show" then
				ABFactionBars["Bar1"]["Top"]["Animation"] = true
			end
			abfSavedTopArtAnimation("Bar1", MainMenuBar)
		end
	end)
end
-- Box 1, Pop Out Button 4, Bottom Art Animation Color --
-- enter --
abfOptions1aBox1PopOut4:SetScript("OnEnter", function(self)
	abfEnteringMenus(self)
	GameTooltip:SetText("|T"..C_AddOns.GetAddOnMetadata("ABF", "IconTexture")..":16|t"..abfMainColor:WrapTextInColorCode(C_AddOns.GetAddOnMetadata("ABF", "Title")).."|nChoose the color for the animation")
end)
-- leave --
abfOptions1aBox1PopOut4:SetScript("OnLeave", abfLeavingMenus)
-- drop down --
abfClickPopOut(abfOptions1aBox1PopOut4, abfOptions1aBox1PopOut4Choice0)
-- naming at Options10 --
-- sort --
for i = 1, 2, 1 do
	_G["abfOptions1aBox1PopOut4Choice"..i]:SetParent(abfOptions1aBox1PopOut4Choice0)
	_G["abfOptions1aBox1PopOut4Choice"..i]:SetPoint("TOP", _G["abfOptions1aBox1PopOut4Choice"..i-1], "BOTTOM", 0, 0)
end
-- click --
for i = 0, 2, 1 do
	_G["abfOptions1aBox1PopOut4Choice"..i]:HookScript("OnClick", function(self, button, down)
		if button == "LeftButton" and down == false then
			ABFactionBars["Bar1"]["Top"]["AnimationColorOptions"] = self.Text:GetText()
			abfOptions1aBox1PopOut4.Text:SetText(self.Text:GetText())
			abfOptions1aBox1PopOut4Choice0:Hide()
			if ABFactionBars["Bar1"]["Top"]["AnimationColorOptions"] == "Default Color" then
				ABFactionBars["Bar1"]["Top"]["AnimationColor"] = {r = 1, g = 1, b = 1, a = 1}
				abfSavedTopArtAnimation("Bar1", MainMenuBar)
			elseif ABFactionBars["Bar1"]["Top"]["AnimationColorOptions"] == "Class Color" then
				ABFactionBars["Bar1"]["Top"]["AnimationColor"] = CreateColor(abfClassColor:GetRGB())
				abfSavedTopArtAnimation("Bar1", MainMenuBar)
			elseif ABFactionBars["Bar1"]["Top"]["AnimationColorOptions"] == "Custom Color" then
				abfShowColorPicker("Bar1", MainMenuBar, "Top", abfSavedTopArtAnimation, "AnimationColor")
			end
		end
	end)
end
-- Options Box 2, Top color one --
-- Box 2, Pop Out Button 1, Top color one choices --
-- enter --
abfOptions1aBox2PopOut1:SetScript("OnEnter", function(self)
	abfEnteringMenus(self)
	GameTooltip:SetText("|T"..C_AddOns.GetAddOnMetadata("ABF", "IconTexture")..":16|t"..abfMainColor:WrapTextInColorCode(C_AddOns.GetAddOnMetadata("ABF", "Title")).."|nChoose the color for the Top Art")
end)
-- leave --
abfOptions1aBox2PopOut1:SetScript("OnLeave", abfLeavingMenus)
-- drop down --
abfClickPopOut(abfOptions1aBox2PopOut1, abfOptions1aBox2PopOut1Choice0)
-- naming at Options10 --
-- sort --
for i = 1, 2, 1 do
	_G["abfOptions1aBox2PopOut1Choice"..i]:SetParent(abfOptions1aBox2PopOut1Choice0)
	_G["abfOptions1aBox2PopOut1Choice"..i]:SetPoint("TOP", _G["abfOptions1aBox2PopOut1Choice"..i-1], "BOTTOM", 0, 0)
end
-- click --
for i = 0, 2, 1 do
	_G["abfOptions1aBox2PopOut1Choice"..i]:HookScript("OnClick", function(self, button, down)
		if button == "LeftButton" and down == false then
			ABFactionBars["Bar1"]["Top"]["ArtColorOptions"] = self.Text:GetText()
			abfOptions1aBox2PopOut1.Text:SetText(self.Text:GetText())
			abfOptions1aBox2PopOut1Choice0:Hide()
			if ABFactionBars["Bar1"]["Top"]["ArtColorOptions"] == "Default Color" then
				ABFactionBars["Bar1"]["Top"]["ArtColor"] = {r = 1, g = 1, b = 1, a = 1}
				if abfOptions1aBox2Slider1:IsShown() then abfOptions1aBox2Slider1:Hide() end
				abfSavedColorTop("Bar1", MainMenuBar)
			elseif ABFactionBars["Bar1"]["Top"]["ArtColorOptions"] == "Class Color" then
				ABFactionBars["Bar1"]["Top"]["ArtColor"] = CreateColor(abfClassColor:GetRGB())
				if abfOptions1aBox2Slider1:IsShown() then abfOptions1aBox2Slider1:Hide() end
				abfSavedColorTop("Bar1", MainMenuBar)
			elseif ABFactionBars["Bar1"]["Top"]["ArtColorOptions"] == "Custom Color" then
				if not abfOptions1aBox2Slider1:IsShown() then abfOptions1aBox2Slider1:Show() end
				abfShowColorPicker("Bar1", MainMenuBar, "Top", abfSavedColorTop, "ArtColor")
			end
		end
	end)
end
-- Box 2, Slider 1, Top Desaturation --
-- min max values --
abfOptions1aBox2Slider1.MinText:SetText(0)
abfOptions1aBox2Slider1.MaxText:SetText(1)
abfOptions1aBox2Slider1.Slider:SetMinMaxValues(0, 10)
-- enter --
abfOptions1aBox2Slider1.Slider:SetScript("OnEnter", function(self)
	abfEnteringMenus(self)
	GameTooltip:SetText("|T"..C_AddOns.GetAddOnMetadata("ABF", "IconTexture")..":16|t "..abfMainColor:WrapTextInColorCode(C_AddOns.GetAddOnMetadata("ABF", "Title")).."|nYou can also use your mousewheel|nor the buttons to the edge|nto change the value!") 
end)
-- leave --
abfOptions1aBox2Slider1.Slider:SetScript("OnLeave", abfLeavingMenus)
-- on mouse wheel --
abfOptions1aBox2Slider1.Slider:SetScript("OnMouseWheel", abfMouseWheelSlider)
-- On Value Changed --
abfOptions1aBox2Slider1.Slider:SetScript("OnValueChanged", function (self, value, userInput)
	abfOptions1aBox2Slider1.TopText:SetText("Desaturation of the Artwork: "..(self:GetValue()/10))
	ABFactionBars["Bar1"]["Top"]["ArtColorDesaturation"] = self:GetValue()/10
	abfSavedColorTop("Bar1", MainMenuBar)
end)
-- Options Box 3, Top color Gradient --
-- Box 3, Pop Out Button 1, Top Color Gradient One --
-- enter --
abfOptions1aBox3PopOut1:SetScript("OnEnter", function(self)
	abfEnteringMenus(self)
	GameTooltip:SetText("|T"..C_AddOns.GetAddOnMetadata("ABF", "IconTexture")..":16|t"..abfMainColor:WrapTextInColorCode(C_AddOns.GetAddOnMetadata("ABF", "Title")).."|nChoose the first grandient color for the Top Art")
end)
-- leave --
abfOptions1aBox3PopOut1:SetScript("OnLeave", abfLeavingMenus)
-- drop down --
abfClickPopOut(abfOptions1aBox3PopOut1, abfOptions1aBox3PopOut1Choice0)
-- naming at Options10 --
-- sort --
for i = 1, 2, 1 do
	_G["abfOptions1aBox3PopOut1Choice"..i]:SetParent(abfOptions1aBox3PopOut1Choice0)
	_G["abfOptions1aBox3PopOut1Choice"..i]:SetPoint("TOP", _G["abfOptions1aBox3PopOut1Choice"..i-1], "BOTTOM", 0, 0)
end
-- click --
for i = 0, 2, 1 do
	_G["abfOptions1aBox3PopOut1Choice"..i]:HookScript("OnClick", function(self, button, down)
		if button == "LeftButton" and down == false then
			ABFactionBars["Bar1"]["Top"]["ArtGradientOptions1"] = self.Text:GetText()
			abfOptions1aBox3PopOut1.Text:SetText(self.Text:GetText())
			abfOptions1aBox3PopOut1Choice0:Hide()
			if ABFactionBars["Bar1"]["Top"]["ArtGradientOptions1"] == "Default Color" then
				ABFactionBars["Bar1"]["Top"]["ArtGradientColor1"] = {r = 1, g = 1, b = 1, a = 1}
				abfSavedColorTop("Bar1", MainMenuBar)
			elseif ABFactionBars["Bar1"]["Top"]["ArtGradientOptions1"] == "Class Color" then
				ABFactionBars["Bar1"]["Top"]["ArtGradientColor1"] = CreateColor(abfClassColor:GetRGB())
				abfSavedColorTop("Bar1", MainMenuBar)
			elseif ABFactionBars["Bar1"]["Top"]["ArtGradientOptions1"] == "Custom Color" then
				abfShowColorPicker("Bar1", MainMenuBar, "Top", abfSavedColorTop, "ArtGradientColor1")
			end
		end
	end)
end
-- Box 3, Pop Out Button 2, Top Color Gradient One --
-- enter --
abfOptions1aBox3PopOut2:SetScript("OnEnter", function(self)
	abfEnteringMenus(self)
	GameTooltip:SetText("|T"..C_AddOns.GetAddOnMetadata("ABF", "IconTexture")..":16|t"..abfMainColor:WrapTextInColorCode(C_AddOns.GetAddOnMetadata("ABF", "Title")).."|nChoose the second grandient color for the Top Art")
end)
-- leave --
abfOptions1aBox3PopOut2:SetScript("OnLeave", abfLeavingMenus)
-- drop down --
abfClickPopOut(abfOptions1aBox3PopOut2, abfOptions1aBox3PopOut2Choice0)
-- naming at Options10 --
-- sort --
for i = 1, 2, 1 do
	_G["abfOptions1aBox3PopOut2Choice"..i]:SetParent(abfOptions1aBox3PopOut2Choice0)
	_G["abfOptions1aBox3PopOut2Choice"..i]:SetPoint("TOP", _G["abfOptions1aBox3PopOut2Choice"..i-1], "BOTTOM", 0, 0)
end
-- click --
for i = 0, 2, 1 do
	_G["abfOptions1aBox3PopOut2Choice"..i]:HookScript("OnClick", function(self, button, down)
		if button == "LeftButton" and down == false then
			ABFactionBars["Bar1"]["Top"]["ArtGradientOptions2"] = self.Text:GetText()
			abfOptions1aBox3PopOut2.Text:SetText(self.Text:GetText())
			abfOptions1aBox3PopOut2Choice0:Hide()
			if ABFactionBars["Bar1"]["Top"]["ArtGradientOptions2"] == "Default Color" then
				ABFactionBars["Bar1"]["Top"]["ArtGradientColor2"] = {r = 1, g = 1, b = 1, a = 1}
				abfSavedColorTop("Bar1", MainMenuBar)
			elseif ABFactionBars["Bar1"]["Top"]["ArtGradientOptions2"] == "Class Color" then
				ABFactionBars["Bar1"]["Top"]["ArtGradientColor2"] = CreateColor(abfClassColor:GetRGB())
				abfSavedColorTop("Bar1", MainMenuBar)
			elseif ABFactionBars["Bar1"]["Top"]["ArtGradientOptions2"] == "Custom Color" then
				abfShowColorPicker("Bar1", MainMenuBar, "Top", abfSavedColorTop, "ArtGradientColor2")
			end
		end
	end)
end
-- Box 3, Pop Out Button 3, Top Color Gradient Orientation --
-- enter --
abfOptions1aBox3PopOut3:SetScript("OnEnter", function(self)
	abfEnteringMenus(self)
	GameTooltip:SetText("|T"..C_AddOns.GetAddOnMetadata("ABF", "IconTexture")..":16|t"..abfMainColor:WrapTextInColorCode(C_AddOns.GetAddOnMetadata("ABF", "Title")).."|nChoose the orientation|nof the colors for the Top Art")
end)
-- leave --
abfOptions1aBox3PopOut3:SetScript("OnLeave", abfLeavingMenus)
-- drop down --
abfClickPopOut(abfOptions1aBox3PopOut3, abfOptions1aBox3PopOut3Choice0)
-- naming at Options10 --
-- sort --
for i = 1, 1, 1 do
	_G["abfOptions1aBox3PopOut3Choice"..i]:SetParent(abfOptions1aBox3PopOut3Choice0)
	_G["abfOptions1aBox3PopOut3Choice"..i]:SetPoint("TOP", _G["abfOptions1aBox3PopOut3Choice"..i-1], "BOTTOM", 0, 0)
end
-- click --
for i = 0, 1, 1 do
	_G["abfOptions1aBox3PopOut3Choice"..i]:HookScript("OnClick", function(self, button, down)
		if button == "LeftButton" and down == false then
			ABFactionBars["Bar1"]["Top"]["ArtGradientOrientation"] = self.Text:GetText()
			abfOptions1aBox3PopOut3.Text:SetText(self.Text:GetText())
			abfOptions1aBox3PopOut3Choice0:Hide()
			abfSavedColorTop("Bar1", MainMenuBar)
		end
	end)
end
-- Options Box 4, Bottom Art --
-- Box 4, Pop Out Button 1, Bottom Art choice --
-- enter --
abfOptions1aBox4PopOut1:SetScript("OnEnter", function(self)
	abfEnteringMenus(self)
	GameTooltip:SetText("|T"..C_AddOns.GetAddOnMetadata("ABF", "IconTexture")..":16|t"..abfMainColor:WrapTextInColorCode(C_AddOns.GetAddOnMetadata("ABF", "Title")).."|nChoose the Bottom Art for|nthe Action Bar 1")
end)
-- leave --
abfOptions1aBox4PopOut1:SetScript("OnLeave", abfLeavingMenus)
-- drop down --
abfClickPopOut(abfOptions1aBox4PopOut1, abfOptions1aBox4PopOut1Choice0)
-- naming at Options10 --
-- sort --
for i = 1, 3, 1 do
	_G["abfOptions1aBox4PopOut1Choice"..i]:SetParent(abfOptions1aBox4PopOut1Choice0)
	_G["abfOptions1aBox4PopOut1Choice"..i]:SetPoint("TOP", _G["abfOptions1aBox4PopOut1Choice"..i-1], "BOTTOM", 0, 0)
end
-- click --
for i = 0, 3, 1 do
	_G["abfOptions1aBox4PopOut1Choice"..i]:HookScript("OnClick", function(self, button, down)
		if button == "LeftButton" and down == false then
			ABFactionBars["Bar1"]["Bottom"]["Art"] = self.Text:GetText()
			abfOptions1aBox4PopOut1.Text:SetText(self.Text:GetText())
			abfOptions1aBox4PopOut1Choice0:Hide()
			if ABFactionBars["Bar1"]["Bottom"]["Art"] == "SoftCloud" then
				if not abfOptions1aBox4PopOut3:IsShown() then abfOptions1aBox4PopOut3:Show() end
				if not abfOptions1aBox4PopOut4:IsShown() then abfOptions1aBox4PopOut4:Show() end
			else
				if abfOptions1aBox4PopOut3:IsShown() then abfOptions1aBox4PopOut3:Hide() end
				if abfOptions1aBox4PopOut4:IsShown() then abfOptions1aBox4PopOut4:Hide() end
			end
			abfSavedArtBottom("Bar1", MainMenuBar)
		end
	end)
end
-- Box 4, Pop Out Button 2, Bottom Art Color Choice --
-- enter --
abfOptions1aBox4PopOut2:SetScript("OnEnter", function(self)
	abfEnteringMenus(self)
	GameTooltip:SetText("|T"..C_AddOns.GetAddOnMetadata("ABF", "IconTexture")..":16|t"..abfMainColor:WrapTextInColorCode(C_AddOns.GetAddOnMetadata("ABF", "Title")).."|nChoose the mode color for|nthe Bottom Art! (one color or gradient color)") 
end)
-- leave --
abfOptions1aBox4PopOut2:SetScript("OnLeave", abfLeavingMenus)
-- drop down --
abfClickPopOut(abfOptions1aBox4PopOut2, abfOptions1aBox4PopOut2Choice0)
-- naming at Options10 --
-- sort --
for i = 1, 1, 1 do
	_G["abfOptions1aBox4PopOut2Choice"..i]:SetParent(abfOptions1aBox4PopOut2Choice0)
	_G["abfOptions1aBox4PopOut2Choice"..i]:SetPoint("TOP", _G["abfOptions1aBox4PopOut2Choice"..i-1], "BOTTOM", 0, 0)
end
-- click --
for i = 0, 1, 1 do
	_G["abfOptions1aBox4PopOut2Choice"..i]:HookScript("OnClick", function(self, button, down)
		if button == "LeftButton" and down == false then
			ABFactionBars["Bar1"]["Bottom"]["ArtColorChoice"] = self.Text:GetText()
			abfOptions1aBox4PopOut2.Text:SetText(self.Text:GetText())
			abfOptions1aBox4PopOut2Choice0:Hide()
			abfSavedColorBottom("Bar1", MainMenuBar)
			if ABFactionBars["Bar1"]["Bottom"]["ArtColorChoice"] == "One Color" then
				if not abfOptions1aBox5:IsShown() then abfOptions1aBox5:Show() end
				if abfOptions1aBox6:IsShown() then abfOptions1aBox6:Hide() end
			elseif ABFactionBars["Bar1"]["Bottom"]["ArtColorChoice"] == "Gradient Color" then
				if abfOptions1aBox5:IsShown() then abfOptions1aBox5:Hide() end
				if not abfOptions1aBox6:IsShown() then abfOptions1aBox6:Show() end
			end
		end
	end)
end
-- Box 4, Pop Out Button 3, Bottom Art Animation --
-- enter --
abfOptions1aBox4PopOut3:SetScript("OnEnter", function(self)
	abfEnteringMenus(self)
	GameTooltip:SetText("|T"..C_AddOns.GetAddOnMetadata("ABF", "IconTexture")..":16|t"..abfMainColor:WrapTextInColorCode(C_AddOns.GetAddOnMetadata("ABF", "Title")).."|nWhould you like the animation|nfor the Bottom Art to be shown?")
end)
-- leave --
abfOptions1aBox4PopOut3:SetScript("OnLeave", abfLeavingMenus)
-- drop down --
abfClickPopOut(abfOptions1aBox4PopOut3, abfOptions1aBox4PopOut3Choice0)
-- naming at Options10 --
-- sort --
for i = 1, 1, 1 do
	_G["abfOptions1aBox4PopOut3Choice"..i]:SetParent(abfOptions1aBox4PopOut3Choice0)
	_G["abfOptions1aBox4PopOut3Choice"..i]:SetPoint("TOP", _G["abfOptions1aBox4PopOut3Choice"..i-1], "BOTTOM", 0, 0)
end
-- click --
for i = 0, 1, 1 do
	_G["abfOptions1aBox4PopOut3Choice"..i]:HookScript("OnClick", function(self, button, down)
		if button == "LeftButton" and down == false then
			abfOptions1aBox4PopOut3.Text:SetText(self.Text:GetText())
			abfOptions1aBox4PopOut3Choice0:Hide()
			if self.Text:GetText() == "Hide" then
				ABFactionBars["Bar1"]["Bottom"]["Animation"] = false
			elseif self.Text:GetText() == "Show" then
				ABFactionBars["Bar1"]["Bottom"]["Animation"] = true
			end
			--abfSavedAnimationBottom("Bar1", MainMenuBar)
		end
	end)
end
-- Box 4, Pop Out Button 4, Bottom Art Animation Color --
-- enter --
abfOptions1aBox4PopOut4:SetScript("OnEnter", function(self)
	abfEnteringMenus(self)
	GameTooltip:SetText("|T"..C_AddOns.GetAddOnMetadata("ABF", "IconTexture")..":16|t"..abfMainColor:WrapTextInColorCode(C_AddOns.GetAddOnMetadata("ABF", "Title")).."|nChoose the color for the animation")
end)
-- leave --
abfOptions1aBox4PopOut4:SetScript("OnLeave", abfLeavingMenus)
-- drop down --
abfClickPopOut(abfOptions1aBox4PopOut4, abfOptions1aBox4PopOut4Choice0)
-- naming at Options10 --
-- sort --
for i = 1, 2, 1 do
	_G["abfOptions1aBox4PopOut4Choice"..i]:SetParent(abfOptions1aBox4PopOut4Choice0)
	_G["abfOptions1aBox4PopOut4Choice"..i]:SetPoint("TOP", _G["abfOptions1aBox4PopOut4Choice"..i-1], "BOTTOM", 0, 0)
end
-- click --
for i = 0, 2, 1 do
	_G["abfOptions1aBox4PopOut4Choice"..i]:HookScript("OnClick", function(self, button, down)
		if button == "LeftButton" and down == false then
			ABFactionBars["Bar1"]["Bottom"]["AnimationColorOptions"] = self.Text:GetText()
			abfOptions1aBox4PopOut4.Text:SetText(self.Text:GetText())
			abfOptions1aBox4PopOut4Choice0:Hide()
			if ABFactionBars["Bar1"]["Bottom"]["AnimationColorOptions"] == "Default Color" then
				ABFactionBars["Bar1"]["Bottom"]["AnimationColor"] = {r = 1, g = 1, b = 1, a = 1}
				--abfSavedAnimationBottomColor("Bar1", MainMenuBar)
			elseif ABFactionBars["Bar1"]["Bottom"]["AnimationColorOptions"] == "Class Color" then
				ABFactionBars["Bar1"]["Bottom"]["AnimationColor"] = CreateColor(abfClassColor:GetRGB())
				--abfSavedAnimationBottomColor("Bar1", MainMenuBar)
			elseif ABFactionBars["Bar1"]["Bottom"]["AnimationColorOptions"] == "Custom Color" then
				--abfShowColorPicker("Bar1", MainMenuBar, "Bottom", abfSavedAnimationBottomColor, "AnimationColor")
			end
		end
	end)
end
-- Options Box 5, Bottom Color One --
-- Box 5, Pop Out Button 1, Bottom Color One Choices --
-- enter --
abfOptions1aBox5PopOut1:SetScript("OnEnter", function(self)
	abfEnteringMenus(self)
	GameTooltip:SetText("|T"..C_AddOns.GetAddOnMetadata("ABF", "IconTexture")..":16|t"..abfMainColor:WrapTextInColorCode(C_AddOns.GetAddOnMetadata("ABF", "Title")).."|nChoose the color for the Bottom Art")
end)
-- leave --
abfOptions1aBox5PopOut1:SetScript("OnLeave", abfLeavingMenus)
-- drop down --
abfClickPopOut(abfOptions1aBox5PopOut1, abfOptions1aBox5PopOut1Choice0)
-- naming at Options10 --
-- sort --
for i = 1, 2, 1 do
	_G["abfOptions1aBox5PopOut1Choice"..i]:SetParent(abfOptions1aBox5PopOut1Choice0)
	_G["abfOptions1aBox5PopOut1Choice"..i]:SetPoint("TOP", _G["abfOptions1aBox5PopOut1Choice"..i-1], "BOTTOM", 0, 0)
end
-- click --
for i = 0, 2, 1 do
	_G["abfOptions1aBox5PopOut1Choice"..i]:HookScript("OnClick", function(self, button, down)
		if button == "LeftButton" and down == false then
			ABFactionBars["Bar1"]["Bottom"]["ArtColorOptions"] = self.Text:GetText()
			abfOptions1aBox5PopOut1.Text:SetText(self.Text:GetText())
			abfOptions1aBox5PopOut1Choice0:Hide()
			if ABFactionBars["Bar1"]["Bottom"]["ArtColorOptions"] == "Default Color" then
				ABFactionBars["Bar1"]["Bottom"]["ArtColor"] = {r = 1, g = 1, b = 1, a = 1}
				if abfOptions1aBox5Slider1:IsShown() then abfOptions1aBox5Slider1:Hide() end
				abfSavedColorBottom("Bar1", MainMenuBar)
			elseif ABFactionBars["Bar1"]["Bottom"]["ArtColorOptions"] == "Class Color" then
				ABFactionBars["Bar1"]["Bottom"]["ArtColor"] = CreateColor(abfClassColor:GetRGB())
				if abfOptions1aBox5Slider1:IsShown() then abfOptions1aBox5Slider1:Hide() end
				abfSavedColorBottom("Bar1", MainMenuBar)
			elseif ABFactionBars["Bar1"]["Bottom"]["ArtColorOptions"] == "Custom Color" then
				if not abfOptions1aBox5Slider1:IsShown() then abfOptions1aBox5Slider1:Show() end
				abfShowColorPicker("Bar1", MainMenuBar, "Bottom", abfSavedColorBottom, "ArtColor")
			end
		end
	end)
end
-- Box 5, Slider 1, Bottom Desaturation --
-- min max values --
abfOptions1aBox5Slider1.MinText:SetText(0)
abfOptions1aBox5Slider1.MaxText:SetText(1)
abfOptions1aBox5Slider1.Slider:SetMinMaxValues(0, 10)
-- enter --
abfOptions1aBox5Slider1.Slider:SetScript("OnEnter", function(self)
	abfEnteringMenus(self)
	GameTooltip:SetText("|T"..C_AddOns.GetAddOnMetadata("ABF", "IconTexture")..":16|t "..abfMainColor:WrapTextInColorCode(C_AddOns.GetAddOnMetadata("ABF", "Title")).."|nYou can also use your mousewheel|nor the buttons to the edge|nto change the value!") 
end)
-- leave --
abfOptions1aBox5Slider1.Slider:SetScript("OnLeave", abfLeavingMenus)
-- on mouse wheel --
abfOptions1aBox5Slider1.Slider:SetScript("OnMouseWheel", abfMouseWheelSlider)
-- On Value Changed --
abfOptions1aBox5Slider1.Slider:SetScript("OnValueChanged", function (self, value, userInput)
	abfOptions1aBox5Slider1.TopText:SetText("Desaturation of the Artwork: "..(self:GetValue()/10))
	ABFactionBars["Bar1"]["Bottom"]["ArtColorDesaturation"] = self:GetValue()/10
	abfSavedColorBottom("Bar1", MainMenuBar)
end)
-- Options Box 6, Bottom Color Gradient --
-- Box 6, Pop Out Button 1, Bottom Color Gradient One --
-- enter --
abfOptions1aBox6PopOut1:SetScript("OnEnter", function(self)
	abfEnteringMenus(self)
	GameTooltip:SetText("|T"..C_AddOns.GetAddOnMetadata("ABF", "IconTexture")..":16|t"..abfMainColor:WrapTextInColorCode(C_AddOns.GetAddOnMetadata("ABF", "Title")).."|nChoose the first grandient color for the Bottom Art")
end)
-- leave --
abfOptions1aBox6PopOut1:SetScript("OnLeave", abfLeavingMenus)
-- drop down --
abfClickPopOut(abfOptions1aBox6PopOut1, abfOptions1aBox6PopOut1Choice0)
-- naming at Options10 --
-- sort --
for i = 1, 2, 1 do
	_G["abfOptions1aBox6PopOut1Choice"..i]:SetParent(abfOptions1aBox6PopOut1Choice0)
	_G["abfOptions1aBox6PopOut1Choice"..i]:SetPoint("TOP", _G["abfOptions1aBox6PopOut1Choice"..i-1], "BOTTOM", 0, 0)
end
-- click --
for i = 0, 2, 1 do
	_G["abfOptions1aBox6PopOut1Choice"..i]:HookScript("OnClick", function(self, button, down)
		if button == "LeftButton" and down == false then
			ABFactionBars["Bar1"]["Bottom"]["ArtGradientOptions1"] = self.Text:GetText()
			abfOptions1aBox6PopOut1.Text:SetText(self.Text:GetText())
			abfOptions1aBox6PopOut1Choice0:Hide()
			if ABFactionBars["Bar1"]["Bottom"]["ArtGradientOptions1"] == "Default Color" then
				ABFactionBars["Bar1"]["Bottom"]["ArtGradientColor1"] = {r = 1, g = 1, b = 1, a = 1}
				abfSavedColorBottom("Bar1", MainMenuBar)
			elseif ABFactionBars["Bar1"]["Bottom"]["ArtGradientOptions1"] == "Class Color" then
				ABFactionBars["Bar1"]["Bottom"]["ArtGradientColor1"] = CreateColor(abfClassColor:GetRGB())
				abfSavedColorBottom("Bar1", MainMenuBar)
			elseif ABFactionBars["Bar1"]["Bottom"]["ArtGradientOptions1"] == "Custom Color" then
				abfShowColorPicker("Bar1", MainMenuBar, "Bottom", abfSavedColorBottom, "ArtGradientColor1")
			end
		end
	end)
end
-- Box 6, Pop Out Button 2, Bottom Color Gradient Two --
-- enter --
abfOptions1aBox6PopOut2:SetScript("OnEnter", function(self)
	abfEnteringMenus(self)
	GameTooltip:SetText("|T"..C_AddOns.GetAddOnMetadata("ABF", "IconTexture")..":16|t"..abfMainColor:WrapTextInColorCode(C_AddOns.GetAddOnMetadata("ABF", "Title")).."|nChoose the second grandient color for the Bottom Art")
end)
-- leave --
abfOptions1aBox6PopOut2:SetScript("OnLeave", abfLeavingMenus)
-- drop down --
abfClickPopOut(abfOptions1aBox6PopOut2, abfOptions1aBox6PopOut2Choice0)
-- naming at Options10 --
-- sort --
for i = 1, 2, 1 do
	_G["abfOptions1aBox6PopOut2Choice"..i]:SetParent(abfOptions1aBox6PopOut2Choice0)
	_G["abfOptions1aBox6PopOut2Choice"..i]:SetPoint("TOP", _G["abfOptions1aBox6PopOut2Choice"..i-1], "BOTTOM", 0, 0)
end
-- click --
for i = 0, 2, 1 do
	_G["abfOptions1aBox6PopOut2Choice"..i]:HookScript("OnClick", function(self, button, down)
		if button == "LeftButton" and down == false then
			ABFactionBars["Bar1"]["Bottom"]["ArtGradientOptions2"] = self.Text:GetText()
			abfOptions1aBox6PopOut2.Text:SetText(self.Text:GetText())
			abfOptions1aBox6PopOut2Choice0:Hide()
			if ABFactionBars["Bar1"]["Bottom"]["ArtGradientOptions2"] == "Default Color" then
				ABFactionBars["Bar1"]["Bottom"]["ArtGradientColor2"] = {r = 1, g = 1, b = 1, a = 1}
				abfSavedColorBottom("Bar1", MainMenuBar)
			elseif ABFactionBars["Bar1"]["Bottom"]["ArtGradientOptions2"] == "Class Color" then
				ABFactionBars["Bar1"]["Bottom"]["ArtGradientColor2"] = CreateColor(abfClassColor:GetRGB())
				abfSavedColorBottom("Bar1", MainMenuBar)
			elseif ABFactionBars["Bar1"]["Bottom"]["ArtGradientOptions2"] == "Custom Color" then
				abfShowColorPicker("Bar1", MainMenuBar, "Bottom", abfSavedColorBottom, "ArtGradientColor2")
			end
		end
	end)
end
-- Box 6, Pop Out Button 3, Bottom Color Gradient Orientation --
-- enter --
abfOptions1aBox6PopOut3:SetScript("OnEnter", function(self)
	abfEnteringMenus(self)
	GameTooltip:SetText("|T"..C_AddOns.GetAddOnMetadata("ABF", "IconTexture")..":16|t"..abfMainColor:WrapTextInColorCode(C_AddOns.GetAddOnMetadata("ABF", "Title")).."|nChoose the orientation|nof the colors for the Bottom Art")
end)
-- leave --
abfOptions1aBox6PopOut3:SetScript("OnLeave", abfLeavingMenus)
-- drop down --
abfClickPopOut(abfOptions1aBox6PopOut3, abfOptions1aBox6PopOut3Choice0)
-- naming at Options10 --
-- sort --
for i = 1, 1, 1 do
	_G["abfOptions1aBox6PopOut3Choice"..i]:SetParent(abfOptions1aBox6PopOut3Choice0)
	_G["abfOptions1aBox6PopOut3Choice"..i]:SetPoint("TOP", _G["abfOptions1aBox6PopOut3Choice"..i-1], "BOTTOM", 0, 0)
end
-- click --
for i = 0, 1, 1 do
	_G["abfOptions1aBox6PopOut3Choice"..i]:HookScript("OnClick", function(self, button, down)
		if button == "LeftButton" and down == false then
			ABFactionBars["Bar1"]["Bottom"]["ArtGradientOrientation"] = self.Text:GetText()
			abfOptions1aBox6PopOut3.Text:SetText(self.Text:GetText())
			abfOptions1aBox6PopOut3Choice0:Hide()
			abfSavedColorBottom("Bar1", MainMenuBar)
		end
	end)
end
-- Options Box 7, Normal Texture Color --
-- Box 7, Pop Out Button 1, Normal Texture Color Choice --
-- enter --
abfOptions1aBox7PopOut1:SetScript("OnEnter", function(self)
	abfEnteringMenus(self)
	GameTooltip:SetText("|T"..C_AddOns.GetAddOnMetadata("ABF", "IconTexture")..":16|t"..abfMainColor:WrapTextInColorCode(C_AddOns.GetAddOnMetadata("ABF", "Title")).."|nChoose the mode color for|nthe Buttons Border! (one color or gradient color)") 
end)
-- leave --
abfOptions1aBox7PopOut1:SetScript("OnLeave", abfLeavingMenus)
-- drop down --
abfClickPopOut(abfOptions1aBox7PopOut1, abfOptions1aBox7PopOut1Choice0)
-- naming at Options10 --
-- sort --
for i = 1, 1, 1 do
	_G["abfOptions1aBox7PopOut1Choice"..i]:SetParent(abfOptions1aBox7PopOut1Choice0)
	_G["abfOptions1aBox7PopOut1Choice"..i]:SetPoint("TOP", _G["abfOptions1aBox7PopOut1Choice"..i-1], "BOTTOM", 0, 0)
end
-- click --
for i = 0, 1, 1 do
	_G["abfOptions1aBox7PopOut1Choice"..i]:HookScript("OnClick", function(self, button, down)
		if button == "LeftButton" and down == false then
			ABFactionBars["Bar1"]["NormalTextureColorMode"] = self.Text:GetText()
			abfOptions1aBox7PopOut1.Text:SetText(self.Text:GetText())
			abfOptions1aBox7PopOut1Choice0:Hide()
			abfSavedColorNormalTexture("Bar1", MainMenuBar)
			if ABFactionBars["Bar1"]["NormalTextureColorMode"] == "One Color" then
				if not abfOptions1aBox8:IsShown() then abfOptions1aBox8:Show() end
				if abfOptions1aBox9:IsShown() then abfOptions1aBox9:Hide() end
			elseif ABFactionBars["Bar1"]["NormalTextureColorMode"] == "Gradient Color" then
				if abfOptions1aBox8:IsShown() then abfOptions1aBox8:Hide() end
				if not abfOptions1aBox9:IsShown() then abfOptions1aBox9:Show() end
			end
		end
	end)
end
-- Options Box 8, Normal Texture Color One --
-- Box 8, Pop Out Button 1, Normal Texture Color One Choices --
-- enter --
abfOptions1aBox8PopOut1:SetScript("OnEnter", function(self)
	abfEnteringMenus(self)
	GameTooltip:SetText("|T"..C_AddOns.GetAddOnMetadata("ABF", "IconTexture")..":16|t"..abfMainColor:WrapTextInColorCode(C_AddOns.GetAddOnMetadata("ABF", "Title")).."|nChoose the color for the Buttons Borders")
end)
-- leave --
abfOptions1aBox8PopOut1:SetScript("OnLeave", abfLeavingMenus)
-- drop down --
abfClickPopOut(abfOptions1aBox8PopOut1, abfOptions1aBox8PopOut1Choice0)
-- naming at Options10 --
-- sort --
for i = 1, 2, 1 do
	_G["abfOptions1aBox8PopOut1Choice"..i]:SetParent(abfOptions1aBox8PopOut1Choice0)
	_G["abfOptions1aBox8PopOut1Choice"..i]:SetPoint("TOP", _G["abfOptions1aBox8PopOut1Choice"..i-1], "BOTTOM", 0, 0)
end
-- click --
for i = 0, 2, 1 do
	_G["abfOptions1aBox8PopOut1Choice"..i]:HookScript("OnClick", function(self, button, down)
		if button == "LeftButton" and down == false then
			ABFactionBars["Bar1"]["NormalTextureColorOptions"] = self.Text:GetText()
			abfOptions1aBox8PopOut1.Text:SetText(self.Text:GetText())
			abfOptions1aBox8PopOut1Choice0:Hide()
			if ABFactionBars["Bar1"]["NormalTextureColorOptions"] == "Default Color" then
				ABFactionBars["Bar1"]["NormalTextureColor"] = {r = 1, g = 1, b = 1, a = 1}
				abfSavedColorNormalTexture("Bar1", MainMenuBar)
			elseif ABFactionBars["Bar1"]["NormalTextureColorOptions"] == "Class Color" then
				ABFactionBars["Bar1"]["NormalTextureColor"] = CreateColor(abfClassColor:GetRGB())
				abfSavedColorNormalTexture("Bar1", MainMenuBar)
			elseif ABFactionBars["Bar1"]["NormalTextureColorOptions"] == "Custom Color" then
				abfShowColorPickerCD("Bar1", MainMenuBar, "NormalTextureColor", abfSavedColorNormalTexture)
			end
		end
	end)
end
-- Options Box 9, Normal Texture Color Gradient --
-- Box 9, Pop Out Button 1, Normal Texture Color Gradient One --
-- enter --
abfOptions1aBox9PopOut1:SetScript("OnEnter", function(self)
	abfEnteringMenus(self)
	GameTooltip:SetText("|T"..C_AddOns.GetAddOnMetadata("ABF", "IconTexture")..":16|t"..abfMainColor:WrapTextInColorCode(C_AddOns.GetAddOnMetadata("ABF", "Title")).."|nChoose the first grandient color for the Buttons Borders")
end)
-- leave --
abfOptions1aBox9PopOut1:SetScript("OnLeave", abfLeavingMenus)
-- drop down --
abfClickPopOut(abfOptions1aBox9PopOut1, abfOptions1aBox9PopOut1Choice0)
-- naming at Options10 --
-- sort --
for i = 1, 2, 1 do
	_G["abfOptions1aBox9PopOut1Choice"..i]:SetParent(abfOptions1aBox9PopOut1Choice0)
	_G["abfOptions1aBox9PopOut1Choice"..i]:SetPoint("TOP", _G["abfOptions1aBox9PopOut1Choice"..i-1], "BOTTOM", 0, 0)
end
-- click --
for i = 0, 2, 1 do
	_G["abfOptions1aBox9PopOut1Choice"..i]:HookScript("OnClick", function(self, button, down)
		if button == "LeftButton" and down == false then
			ABFactionBars["Bar1"]["NormalTextureGradientOptions1"] = self.Text:GetText()
			abfOptions1aBox9PopOut1.Text:SetText(self.Text:GetText())
			abfOptions1aBox9PopOut1Choice0:Hide()
			if ABFactionBars["Bar1"]["NormalTextureGradientOptions1"] == "Default Color" then
				ABFactionBars["Bar1"]["NormalTextureGradient1"] = {r = 1, g = 1, b = 1, a = 1}
				abfSavedColorNormalTexture("Bar1", MainMenuBar)
			elseif ABFactionBars["Bar1"]["NormalTextureGradientOptions1"] == "Class Color" then
				ABFactionBars["Bar1"]["NormalTextureGradient1"] = CreateColor(abfClassColor:GetRGB())
				abfSavedColorNormalTexture("Bar1", MainMenuBar)
			elseif ABFactionBars["Bar1"]["NormalTextureGradientOptions1"] == "Custom Color" then
				abfShowColorPickerCD("Bar1", MainMenuBar, "NormalTextureGradient1", abfSavedColorNormalTexture)
			end
		end
	end)
end
-- Box 9, Pop Out Button 2, Normal Texture Color Gradient two --
-- enter --
abfOptions1aBox9PopOut2:SetScript("OnEnter", function(self)
	abfEnteringMenus(self)
	GameTooltip:SetText("|T"..C_AddOns.GetAddOnMetadata("ABF", "IconTexture")..":16|t"..abfMainColor:WrapTextInColorCode(C_AddOns.GetAddOnMetadata("ABF", "Title")).."|nChoose the second grandient color for the Buttons Borders")
end)
-- leave --
abfOptions1aBox9PopOut2:SetScript("OnLeave", abfLeavingMenus)
-- drop down --
abfClickPopOut(abfOptions1aBox9PopOut2, abfOptions1aBox9PopOut2Choice0)
-- naming at Options10 --
-- sort --
for i = 1, 2, 1 do
	_G["abfOptions1aBox9PopOut2Choice"..i]:SetParent(abfOptions1aBox9PopOut2Choice0)
	_G["abfOptions1aBox9PopOut2Choice"..i]:SetPoint("TOP", _G["abfOptions1aBox9PopOut2Choice"..i-1], "BOTTOM", 0, 0)
end
-- click --
for i = 0, 2, 1 do
	_G["abfOptions1aBox9PopOut2Choice"..i]:HookScript("OnClick", function(self, button, down)
		if button == "LeftButton" and down == false then
			ABFactionBars["Bar1"]["NormalTextureGradientOptions2"] = self.Text:GetText()
			abfOptions1aBox9PopOut2.Text:SetText(self.Text:GetText())
			abfOptions1aBox9PopOut2Choice0:Hide()
			if ABFactionBars["Bar1"]["NormalTextureGradientOptions2"] == "Default Color" then
				ABFactionBars["Bar1"]["NormalTextureGradient2"] = {r = 1, g = 1, b = 1, a = 1}
				abfSavedColorNormalTexture("Bar1", MainMenuBar)
			elseif ABFactionBars["Bar1"]["NormalTextureGradientOptions2"] == "Class Color" then
				ABFactionBars["Bar1"]["NormalTextureGradient2"] = CreateColor(abfClassColor:GetRGB())
				abfSavedColorNormalTexture("Bar1", MainMenuBar)
			elseif ABFactionBars["Bar1"]["NormalTextureGradientOptions2"] == "Custom Color" then
				abfShowColorPickerCD("Bar1", MainMenuBar, "NormalTextureGradient2", abfSavedColorNormalTexture)
			end
		end
	end)
end
-- Box 9, Pop Out Button 3, Normal Texture Color Gradient Orientation --
-- enter --
abfOptions1aBox9PopOut3:SetScript("OnEnter", function(self)
	abfEnteringMenus(self)
	GameTooltip:SetText("|T"..C_AddOns.GetAddOnMetadata("ABF", "IconTexture")..":16|t"..abfMainColor:WrapTextInColorCode(C_AddOns.GetAddOnMetadata("ABF", "Title")).."|nChoose the orientation|nof the colors for the Buttons Borders")
end)
-- leave --
abfOptions1aBox9PopOut3:SetScript("OnLeave", abfLeavingMenus)
-- drop down --
abfClickPopOut(abfOptions1aBox9PopOut3, abfOptions1aBox9PopOut3Choice0)
-- naming at Options10 --
-- sort --
for i = 1, 1, 1 do
	_G["abfOptions1aBox9PopOut3Choice"..i]:SetParent(abfOptions1aBox9PopOut3Choice0)
	_G["abfOptions1aBox9PopOut3Choice"..i]:SetPoint("TOP", _G["abfOptions1aBox9PopOut3Choice"..i-1], "BOTTOM", 0, 0)
end
-- click --
for i = 0, 1, 1 do
	_G["abfOptions1aBox9PopOut3Choice"..i]:HookScript("OnClick", function(self, button, down)
		if button == "LeftButton" and down == false then
			ABFactionBars["Bar1"]["NormalTextureGradientOrientation"] = self.Text:GetText()
			abfOptions1aBox9PopOut3.Text:SetText(self.Text:GetText())
			abfOptions1aBox9PopOut3Choice0:Hide()
			abfSavedColorNormalTexture("Bar1", MainMenuBar)
		end
	end)
end
-- Showing the panel --
abfOptions1a:HookScript("OnShow", function(self)
	CheckSavedVariables()
-- panels --
	if abfOptions1:IsShown() then abfOptions1:Hide() end
-- tabs --
	abfOptions00Tab1.Text:SetTextColor(abfHighColor:GetRGB())
	for i = 2, 10, 1 do
		_G["abfOptions00Tab"..i].Text:SetTextColor(abfMainColor:GetRGB())
	end
-- buttons --
	abfOptions00PageButton1a.Text:SetTextColor(abfMainColor:GetRGB())
	abfOptions00PageButton2a.Text:SetTextColor(abfHighColor:GetRGB())
end)
