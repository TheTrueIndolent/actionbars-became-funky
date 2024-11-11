-- takeing care the rest boxes --
abfOptions5aBox2:SetPoint("TOPLEFT", abfOptions5aBox1, "BOTTOMLEFT", 0, 6)
abfOptions5aBox3:SetPoint("TOPLEFT", abfOptions5aBox1, "BOTTOMLEFT", 0, 6)
abfOptions5aBox01:SetPoint("TOPLEFT", abfOptions5aBox3, "BOTTOMLEFT", 0, 0)
abfOptions5aBox5:SetPoint("TOPRIGHT", abfOptions5aBox4, "BOTTOMRIGHT", 0, 6)
abfOptions5aBox6:SetPoint("TOPRIGHT", abfOptions5aBox4, "BOTTOMRIGHT", 0, 6)
abfOptions5aBox02:SetPoint("TOPRIGHT", abfOptions5aBox6, "BOTTOMRIGHT", 0, 0)
abfOptions5aBox7:SetPoint("TOPLEFT", abfOptions5aBox01, "BOTTOMLEFT", 0, 0)
abfOptions5aBox8:SetPoint("TOPLEFT", abfOptions5aBox7, "BOTTOMLEFT", 0, 6)
abfOptions5aBox9:SetPoint("TOPLEFT", abfOptions5aBox7, "BOTTOMLEFT", 0, 6)
abfOptions5aBox1.BorderBottom:Hide()
abfOptions5aBox2.BorderTop:Hide()
abfOptions5aBox3.BorderTop:Hide()
abfOptions5aBox4.BorderBottom:Hide()
abfOptions5aBox5.BorderTop:Hide()
abfOptions5aBox6.BorderTop:Hide()
abfOptions5aBox7.BorderBottom:Hide()
abfOptions5aBox8.BorderTop:Hide()
abfOptions5aBox9.BorderTop:Hide()
-- naming tabs --
abfOptions5aBox1.TitleTxt:SetText("Top Art, Color Mode & Animation")
abfOptions5aBox2.TitleTxt:SetText("Top Art One Color")
abfOptions5aBox3.TitleTxt:SetText("Top Art Gradient Color")
abfOptions5aBox4.TitleTxt:SetText("Bottom Art, Color Mode & Animation")
abfOptions5aBox5.TitleTxt:SetText("Bottom Art One Color")
abfOptions5aBox6.TitleTxt:SetText("Bottom Art Gradient Color")
abfOptions5aBox7.TitleTxt:SetText("Buttons Border Color Mode")
abfOptions5aBox8.TitleTxt:SetText("Buttons Border One Color")
abfOptions5aBox9.TitleTxt:SetText("Buttons Border Gradient Color")
-- Checking the Saved Variables --
local function CheckSavedVariables()
-- Box 1, Pop Out Button 1 --
	abfOptions5aBox1PopOut1.Text:SetText(ABFactionBars["Bar5"]["Top"]["Art"])
	if ABFactionBars["Bar5"]["Top"]["Art"] == "JailersTower" then
		if not abfOptions5aBox1PopOut3:IsShown() then abfOptions5aBox1PopOut3:Show() end
		if not abfOptions5aBox1PopOut4:IsShown() then abfOptions5aBox1PopOut4:Show() end
	else
		if abfOptions5aBox1PopOut3:IsShown() then abfOptions5aBox1PopOut3:Hide() end
		if abfOptions5aBox1PopOut4:IsShown() then abfOptions5aBox1PopOut4:Hide() end
	end
-- Box 1, Pop Out Button 2 --
	abfOptions5aBox1PopOut2.Text:SetText(ABFactionBars["Bar5"]["Top"]["ArtColorChoice"])
	if ABFactionBars["Bar5"]["Top"]["ArtColorChoice"] == "One Color" then
		if not abfOptions5aBox2:IsShown() then abfOptions5aBox2:Show() end
		if abfOptions5aBox3:IsShown() then abfOptions5aBox3:Hide() end
	elseif ABFactionBars["Bar5"]["Top"]["ArtColorChoice"] == "Gradient Color" then
		if abfOptions5aBox2:IsShown() then abfOptions5aBox2:Hide() end
		if not abfOptions5aBox3:IsShown() then abfOptions5aBox3:Show() end
	end
-- Box 1, Pop Out Button 3--
	if ABFactionBars["Bar5"]["Top"]["Animation"] then
		abfOptions5aBox1PopOut3.Text:SetText("Show")
	elseif not ABFactionBars["Bar5"]["Top"]["Animation"] then
		abfOptions5aBox1PopOut3.Text:SetText("Hide")
	end
-- Box 1, Pop Out Button 4 --
	abfOptions5aBox1PopOut4.Text:SetText(ABFactionBars["Bar5"]["Top"]["AnimationColorOptions"])
-- Box 2, Pop Out Button 1
	abfOptions5aBox2PopOut1.Text:SetText(ABFactionBars["Bar5"]["Top"]["ArtColorOptions"])
	if ABFactionBars["Bar5"]["Top"]["ArtColorOptions"] == "Custom Color" then
		if not abfOptions5aBox2Slider1:IsShown() then abfOptions5aBox2Slider1:Show() end
	else
		if abfOptions5aBox2Slider1:IsShown() then abfOptions5aBox2Slider1:Hide() end
	end
-- Box 2, Slider 1 --
	abfOptions5aBox2Slider1.Slider:SetValue(ABFactionBars["Bar5"]["Top"]["ArtColorDesaturation"] * 10)
-- Box 3, Pop Out Button 1 --
	abfOptions5aBox3PopOut1.Text:SetText(ABFactionBars["Bar5"]["Top"]["ArtGradientOptions1"])
-- Box 3, Pop Out Button 2 --
	abfOptions5aBox3PopOut2.Text:SetText(ABFactionBars["Bar5"]["Top"]["ArtGradientOptions2"])
-- Box 3, Pop Out Button 3 --
	abfOptions5aBox3PopOut3.Text:SetText(ABFactionBars["Bar5"]["Top"]["ArtGradientOrientation"])
-- Box 4, Pop Out Button 1 --
	abfOptions5aBox4PopOut1.Text:SetText(ABFactionBars["Bar5"]["Bottom"]["Art"])
	if ABFactionBars["Bar5"]["Bottom"]["Art"] == "SoftCloud" then
		if not abfOptions5aBox4PopOut3:IsShown() then abfOptions5aBox4PopOut3:Show() end
		if not abfOptions5aBox4PopOut4:IsShown() then abfOptions5aBox4PopOut4:Show() end
	else
		if abfOptions5aBox4PopOut3:IsShown() then abfOptions5aBox4PopOut3:Hide() end
		if abfOptions5aBox4PopOut4:IsShown() then abfOptions5aBox4PopOut4:Hide() end
	end
-- Box 4, Pop Out Button 2 --
	abfOptions5aBox4PopOut2.Text:SetText(ABFactionBars["Bar5"]["Bottom"]["ArtColorChoice"])
	if ABFactionBars["Bar5"]["Bottom"]["ArtColorChoice"] == "One Color" then
		if not abfOptions5aBox5:IsShown() then abfOptions5aBox5:Show() end
		if abfOptions5aBox6:IsShown() then abfOptions5aBox6:Hide() end
	elseif ABFactionBars["Bar5"]["Bottom"]["ArtColorChoice"] == "Gradient Color" then
		if abfOptions5aBox5:IsShown() then abfOptions5aBox5:Hide() end
		if not abfOptions5aBox6:IsShown() then abfOptions5aBox6:Show() end
	end
-- Box 4, Pop Out Button 3 --
	if ABFactionBars["Bar5"]["Bottom"]["Animation"] then
		abfOptions5aBox4PopOut3.Text:SetText("Show")
	elseif not ABFactionBars["Bar5"]["Bottom"]["Animation"] then
		abfOptions5aBox4PopOut3.Text:SetText("Hide")
	end
-- Box 4, Pop Out Button 4 --
	abfOptions5aBox4PopOut4.Text:SetText(ABFactionBars["Bar5"]["Bottom"]["AnimationColorOptions"])
-- Box 5, Pop Out Button 1 --
	abfOptions5aBox5PopOut1:SetText(ABFactionBars["Bar5"]["Bottom"]["ArtColorOptions"])
	if ABFactionBars["Bar5"]["Bottom"]["ArtColorOptions"] == "Custom Color" then
		if not abfOptions5aBox5Slider1:IsShown() then abfOptions5aBox5Slider1:Hide() end
	else
		if abfOptions5aBox5Slider1:IsShown() then abfOptions5aBox5Slider1:Hide() end
	end
-- Box 5, Slider 1 --
	abfOptions5aBox5Slider1.Slider:SetValue(ABFactionBars["Bar5"]["Bottom"]["ArtColorDesaturation"] * 10)
-- Box 6, Pop Out Button 1 --
	abfOptions5aBox6PopOut1.Text:SetText(ABFactionBars["Bar5"]["Bottom"]["ArtGradientOptions1"])
-- Box 6, Pop Out Button 2 --
	abfOptions5aBox6PopOut2.Text:SetText(ABFactionBars["Bar5"]["Bottom"]["ArtGradientOptions2"])
-- Box 6, Pop Out Button 2 --
	abfOptions5aBox6PopOut3.Text:SetText(ABFactionBars["Bar5"]["Bottom"]["ArtGradientOrientation"])
-- Box 7, Pop Out Button 1 --
	abfOptions5aBox7PopOut1.Text:SetText(ABFactionBars["Bar5"]["NormalTextureColorMode"])
	if ABFactionBars["Bar5"]["NormalTextureColorMode"] == "One Color" then
		if not abfOptions5aBox8:IsShown() then abfOptions5aBox8:Show() end
		if abfOptions5aBox9:IsShown() then abfOptions5aBox9:Hide() end
	elseif ABFactionBars["Bar5"]["NormalTextureColorMode"] == "Gradient Color" then
		if abfOptions5aBox8:IsShown() then abfOptions5aBox8:Hide() end
		if not abfOptions5aBox9:IsShown() then abfOptions5aBox9:Show() end
	end
-- Box 8, Pop Out Button 1 --
	abfOptions5aBox8PopOut1.Text:SetText(ABFactionBars["Bar5"]["NormalTextureColorOptions"])
-- Box 9, Pop Out Button 1 --
	abfOptions5aBox9PopOut1.Text:SetText(ABFactionBars["Bar5"]["NormalTextureGradientOptions1"])
-- Box 9, Pop Out Button 2 --
	abfOptions5aBox9PopOut2.Text:SetText(ABFactionBars["Bar5"]["NormalTextureGradientOptions2"])
-- Box 9, Pop Out Button 3 --
	abfOptions5aBox9PopOut3.Text:SetText(ABFactionBars["Bar5"]["NormalTextureGradientOrientation"])
end
-- Options Box 1, Top Art --
-- Box 1, Pop Out Button 1, Top Art choice --
-- enter --
abfOptions5aBox1PopOut1:SetScript("OnEnter", function(self)
	abfEnteringMenus(self)
	GameTooltip:SetText("|T"..C_AddOns.GetAddOnMetadata("ABF", "IconTexture")..":16|t"..abfMainColor:WrapTextInColorCode(C_AddOns.GetAddOnMetadata("ABF", "Title")).."|nChoose the Top Art for|nthe Action Bar 5") 
end)
-- leave --
abfOptions5aBox1PopOut1:SetScript("OnLeave", abfLeavingMenus)
-- drop down --
abfClickPopOut(abfOptions5aBox1PopOut1, abfOptions5aBox1PopOut1Choice0)
-- sort --
for i = 1, 3, 1 do
	_G["abfOptions5aBox1PopOut1Choice"..i]:SetParent(abfOptions5aBox1PopOut1Choice0)
	_G["abfOptions5aBox1PopOut1Choice"..i]:SetPoint("TOP", _G["abfOptions5aBox1PopOut1Choice"..i-1], "BOTTOM", 0, 0)
-- on leave --
	_G["abfOptions5aBox1PopOut1Choice"..i]:HookScript("OnLeave", function(self) abfOptions5aBox1PopOut1.Example:Hide() abfOptions5aBox1PopOut1.Example1:Hide() end)
end
-- naming at Options10 --
-- clicking --
for i = 0, 3, 1 do
	_G["abfOptions5aBox1PopOut1Choice"..i]:HookScript("OnClick", function(self, button, down)
		if button == "LeftButton" and down == false then
			ABFactionBars["Bar5"]["Top"]["Art"] = self.Text:GetText()
			abfOptions5aBox1PopOut1.Text:SetText(self.Text:GetText())
			abfOptions5aBox1PopOut1Choice0:Hide()
			if ABFactionBars["Bar5"]["Top"]["Art"] == "JailersTower" then
				if not abfOptions5aBox1PopOut3:IsShown() then abfOptions5aBox1PopOut3:Show() end
				if not abfOptions5aBox1PopOut4:IsShown() then abfOptions5aBox1PopOut4:Show() end
			else
				if abfOptions5aBox1PopOut3:IsShown() then abfOptions5aBox1PopOut3:Hide() end
				if abfOptions5aBox1PopOut4:IsShown() then abfOptions5aBox1PopOut4:Hide() end
			end
			abfSavedArtTop("Bar5", MultiBarLeft)
		end
	end)
end
-- entering the pop out buttons at Options10 --
-- Box 1, Pop Out Button 2, Top Art color choice --
-- enter --
abfOptions5aBox1PopOut2:SetScript("OnEnter", function(self)
	abfEnteringMenus(self)
	GameTooltip:SetText("|T"..C_AddOns.GetAddOnMetadata("ABF", "IconTexture")..":16|t"..abfMainColor:WrapTextInColorCode(C_AddOns.GetAddOnMetadata("ABF", "Title")).."|nChoose the mode color for|nthe Top Art! (one color or gradient color)") 
end)
-- leave --
abfOptions5aBox1PopOut2:SetScript("OnLeave", abfLeavingMenus)
-- drop down --
abfClickPopOut(abfOptions5aBox1PopOut2, abfOptions5aBox1PopOut2Choice0)
-- naming at Options10 --
-- sort --
for i = 1, 1, 1 do
	_G["abfOptions5aBox1PopOut2Choice"..i]:SetParent(abfOptions5aBox1PopOut2Choice0)
	_G["abfOptions5aBox1PopOut2Choice"..i]:SetPoint("TOP", _G["abfOptions5aBox1PopOut2Choice"..i-1], "BOTTOM", 0, 0)
end
-- click --
for i = 0, 1, 1 do
	_G["abfOptions5aBox1PopOut2Choice"..i]:HookScript("OnClick", function(self, button, down)
		if button == "LeftButton" and down == false then
			ABFactionBars["Bar5"]["Top"]["ArtColorChoice"] = self.Text:GetText()
			abfOptions5aBox1PopOut2.Text:SetText(self.Text:GetText())
			abfOptions5aBox1PopOut2Choice0:Hide()
			abfSavedColorTop("Bar5", MultiBarLeft)
			if ABFactionBars["Bar5"]["Top"]["ArtColorChoice"] == "One Color" then
				if not abfOptions5aBox2:IsShown() then abfOptions5aBox2:Show() end
				if abfOptions5aBox3:IsShown() then abfOptions5aBox3:Hide() end
			elseif ABFactionBars["Bar5"]["Top"]["ArtColorChoice"] == "Gradient Color" then
				if abfOptions5aBox2:IsShown() then abfOptions5aBox2:Hide() end
				if not abfOptions5aBox3:IsShown() then abfOptions5aBox3:Show() end
			end
		end
	end)
end
-- Box 1, Pop Out Button 3, Top Art Animation --
-- enter --
abfOptions5aBox1PopOut3:SetScript("OnEnter", function(self)
	abfEnteringMenus(self)
	GameTooltip:SetText("|T"..C_AddOns.GetAddOnMetadata("ABF", "IconTexture")..":16|t"..abfMainColor:WrapTextInColorCode(C_AddOns.GetAddOnMetadata("ABF", "Title")).."|nWhould you like the animation|nfor the Top Art to be shown?")
end)
-- leave --
abfOptions5aBox1PopOut3:SetScript("OnLeave", abfLeavingMenus)
-- drop down --
abfClickPopOut(abfOptions5aBox1PopOut3, abfOptions5aBox1PopOut3Choice0)
-- naming at Options10 --
-- sort --
for i = 1, 1, 1 do
	_G["abfOptions5aBox1PopOut3Choice"..i]:SetParent(abfOptions5aBox1PopOut3Choice0)
	_G["abfOptions5aBox1PopOut3Choice"..i]:SetPoint("TOP", _G["abfOptions5aBox1PopOut3Choice"..i-1], "BOTTOM", 0, 0)
end
-- click --
for i = 0, 1, 1 do
	_G["abfOptions5aBox1PopOut3Choice"..i]:HookScript("OnClick", function(self, button, down)
		if button == "LeftButton" and down == false then
			abfOptions5aBox1PopOut3.Text:SetText(self.Text:GetText())
			abfOptions5aBox1PopOut3Choice0:Hide()
			if self.Text:GetText() == "Hide" then
				ABFactionBars["Bar5"]["Top"]["Animation"] = false
			elseif self.Text:GetText() == "Show" then
				ABFactionBars["Bar5"]["Top"]["Animation"] = true
			end
			abfSavedTopArtAnimation("Bar5", MultiBarLeft)
		end
	end)
end
-- Box 1, Pop Out Button 4, Bottom Art Animation Color --
-- enter --
abfOptions5aBox1PopOut4:SetScript("OnEnter", function(self)
	abfEnteringMenus(self)
	GameTooltip:SetText("|T"..C_AddOns.GetAddOnMetadata("ABF", "IconTexture")..":16|t"..abfMainColor:WrapTextInColorCode(C_AddOns.GetAddOnMetadata("ABF", "Title")).."|nChoose the color for the animation")
end)
-- leave --
abfOptions5aBox1PopOut4:SetScript("OnLeave", abfLeavingMenus)
-- drop down --
abfClickPopOut(abfOptions5aBox1PopOut4, abfOptions5aBox1PopOut4Choice0)
-- naming at Options10 --
-- sort --
for i = 1, 2, 1 do
	_G["abfOptions5aBox1PopOut4Choice"..i]:SetParent(abfOptions5aBox1PopOut4Choice0)
	_G["abfOptions5aBox1PopOut4Choice"..i]:SetPoint("TOP", _G["abfOptions5aBox1PopOut4Choice"..i-1], "BOTTOM", 0, 0)
end
-- click --
for i = 0, 2, 1 do
	_G["abfOptions5aBox1PopOut4Choice"..i]:HookScript("OnClick", function(self, button, down)
		if button == "LeftButton" and down == false then
			ABFactionBars["Bar5"]["Top"]["AnimationColorOptions"] = self.Text:GetText()
			abfOptions5aBox1PopOut4.Text:SetText(self.Text:GetText())
			abfOptions5aBox1PopOut4Choice0:Hide()
			if ABFactionBars["Bar5"]["Top"]["AnimationColorOptions"] == "Default Color" then
				ABFactionBars["Bar5"]["Top"]["AnimationColor"] = {r = 1, g = 1, b = 1, a = 1}
				abfSavedTopArtAnimation("Bar5", MultiBarLeft)
			elseif ABFactionBars["Bar5"]["Top"]["AnimationColorOptions"] == "Class Color" then
				ABFactionBars["Bar5"]["Top"]["AnimationColor"] = CreateColor(abfClassColor:GetRGB())
				abfSavedTopArtAnimation("Bar5", MultiBarLeft)
			elseif ABFactionBars["Bar5"]["Top"]["AnimationColorOptions"] == "Custom Color" then
				abfShowColorPicker("Bar5", MultiBarLeft, "Top", abfSavedTopArtAnimation, "AnimationColor")
			end
		end
	end)
end
-- Options Box 2, Top color one --
-- Box 2, Pop Out Button 1, Top color one choices --
-- enter --
abfOptions5aBox2PopOut1:SetScript("OnEnter", function(self)
	abfEnteringMenus(self)
	GameTooltip:SetText("|T"..C_AddOns.GetAddOnMetadata("ABF", "IconTexture")..":16|t"..abfMainColor:WrapTextInColorCode(C_AddOns.GetAddOnMetadata("ABF", "Title")).."|nChoose the color for the Top Art")
end)
-- leave --
abfOptions5aBox2PopOut1:SetScript("OnLeave", abfLeavingMenus)
-- drop down --
abfClickPopOut(abfOptions5aBox2PopOut1, abfOptions5aBox2PopOut1Choice0)
-- naming at Options10 --
-- sort --
for i = 1, 2, 1 do
	_G["abfOptions5aBox2PopOut1Choice"..i]:SetParent(abfOptions5aBox2PopOut1Choice0)
	_G["abfOptions5aBox2PopOut1Choice"..i]:SetPoint("TOP", _G["abfOptions5aBox2PopOut1Choice"..i-1], "BOTTOM", 0, 0)
end
-- click --
for i = 0, 2, 1 do
	_G["abfOptions5aBox2PopOut1Choice"..i]:HookScript("OnClick", function(self, button, down)
		if button == "LeftButton" and down == false then
			ABFactionBars["Bar5"]["Top"]["ArtColorOptions"] = self.Text:GetText()
			abfOptions5aBox2PopOut1.Text:SetText(self.Text:GetText())
			abfOptions5aBox2PopOut1Choice0:Hide()
			if ABFactionBars["Bar5"]["Top"]["ArtColorOptions"] == "Default Color" then
				ABFactionBars["Bar5"]["Top"]["ArtColor"] = {r = 1, g = 1, b = 1, a = 1}
				if abfOptions5aBox2Slider1:IsShown() then abfOptions5aBox2Slider1:Hide() end
				abfSavedColorTop("Bar5", MultiBarLeft)
			elseif ABFactionBars["Bar5"]["Top"]["ArtColorOptions"] == "Class Color" then
				ABFactionBars["Bar5"]["Top"]["ArtColor"] = CreateColor(abfClassColor:GetRGB())
				if abfOptions5aBox2Slider1:IsShown() then abfOptions5aBox2Slider1:Hide() end
				abfSavedColorTop("Bar5", MultiBarLeft)
			elseif ABFactionBars["Bar5"]["Top"]["ArtColorOptions"] == "Custom Color" then
				if not abfOptions5aBox2Slider1:IsShown() then abfOptions5aBox2Slider1:Show() end
				abfShowColorPicker("Bar5", MultiBarLeft, "Top", abfSavedColorTop, "ArtColor")
			end
		end
	end)
end
-- Box 2, Slider 1, Top Desaturation --
-- min max values --
abfOptions5aBox2Slider1.MinText:SetText(0)
abfOptions5aBox2Slider1.MaxText:SetText(1)
abfOptions5aBox2Slider1.Slider:SetMinMaxValues(0, 10)
-- enter --
abfOptions5aBox2Slider1.Slider:SetScript("OnEnter", function(self)
	abfEnteringMenus(self)
	GameTooltip:SetText("|T"..C_AddOns.GetAddOnMetadata("ABF", "IconTexture")..":16|t "..abfMainColor:WrapTextInColorCode(C_AddOns.GetAddOnMetadata("ABF", "Title")).."|nYou can also use your mousewheel|nor the buttons to the edge|nto change the value!") 
end)
-- leave --
abfOptions5aBox2Slider1.Slider:SetScript("OnLeave", abfLeavingMenus)
-- on mouse wheel --
abfOptions5aBox2Slider1.Slider:SetScript("OnMouseWheel", abfMouseWheelSlider)
-- On Value Changed --
abfOptions5aBox2Slider1.Slider:SetScript("OnValueChanged", function (self, value, userInput)
	abfOptions5aBox2Slider1.TopText:SetText("Desaturation of the Artwork: "..(self:GetValue()/10))
	ABFactionBars["Bar5"]["Top"]["ArtColorDesaturation"] = self:GetValue()/10
	abfSavedColorTop("Bar5", MultiBarLeft)
end)
-- Options Box 3, Top color Gradient --
-- Box 3, Pop Out Button 1, Top Color Gradient One --
-- enter --
abfOptions5aBox3PopOut1:SetScript("OnEnter", function(self)
	abfEnteringMenus(self)
	GameTooltip:SetText("|T"..C_AddOns.GetAddOnMetadata("ABF", "IconTexture")..":16|t"..abfMainColor:WrapTextInColorCode(C_AddOns.GetAddOnMetadata("ABF", "Title")).."|nChoose the first grandient color for the Top Art")
end)
-- leave --
abfOptions5aBox3PopOut1:SetScript("OnLeave", abfLeavingMenus)
-- drop down --
abfClickPopOut(abfOptions5aBox3PopOut1, abfOptions5aBox3PopOut1Choice0)
-- naming at Options10 --
-- sort --
for i = 1, 2, 1 do
	_G["abfOptions5aBox3PopOut1Choice"..i]:SetParent(abfOptions5aBox3PopOut1Choice0)
	_G["abfOptions5aBox3PopOut1Choice"..i]:SetPoint("TOP", _G["abfOptions5aBox3PopOut1Choice"..i-1], "BOTTOM", 0, 0)
end
-- click --
for i = 0, 2, 1 do
	_G["abfOptions5aBox3PopOut1Choice"..i]:HookScript("OnClick", function(self, button, down)
		if button == "LeftButton" and down == false then
			ABFactionBars["Bar5"]["Top"]["ArtGradientOptions1"] = self.Text:GetText()
			abfOptions5aBox3PopOut1.Text:SetText(self.Text:GetText())
			abfOptions5aBox3PopOut1Choice0:Hide()
			if ABFactionBars["Bar5"]["Top"]["ArtGradientOptions1"] == "Default Color" then
				ABFactionBars["Bar5"]["Top"]["ArtGradientColor1"] = {r = 1, g = 1, b = 1, a = 1}
				abfSavedColorTop("Bar5", MultiBarLeft)
			elseif ABFactionBars["Bar5"]["Top"]["ArtGradientOptions1"] == "Class Color" then
				ABFactionBars["Bar5"]["Top"]["ArtGradientColor1"] = CreateColor(abfClassColor:GetRGB())
				abfSavedColorTop("Bar5", MultiBarLeft)
			elseif ABFactionBars["Bar5"]["Top"]["ArtGradientOptions1"] == "Custom Color" then
				abfShowColorPicker("Bar5", MultiBarLeft, "Top", abfSavedColorTop, "ArtGradientColor1")
			end
		end
	end)
end
-- Box 3, Pop Out Button 2, Top Color Gradient One --
-- enter --
abfOptions5aBox3PopOut2:SetScript("OnEnter", function(self)
	abfEnteringMenus(self)
	GameTooltip:SetText("|T"..C_AddOns.GetAddOnMetadata("ABF", "IconTexture")..":16|t"..abfMainColor:WrapTextInColorCode(C_AddOns.GetAddOnMetadata("ABF", "Title")).."|nChoose the second grandient color for the Top Art")
end)
-- leave --
abfOptions5aBox3PopOut2:SetScript("OnLeave", abfLeavingMenus)
-- drop down --
abfClickPopOut(abfOptions5aBox3PopOut2, abfOptions5aBox3PopOut2Choice0)
-- naming at Options10 --
-- sort --
for i = 1, 2, 1 do
	_G["abfOptions5aBox3PopOut2Choice"..i]:SetParent(abfOptions5aBox3PopOut2Choice0)
	_G["abfOptions5aBox3PopOut2Choice"..i]:SetPoint("TOP", _G["abfOptions5aBox3PopOut2Choice"..i-1], "BOTTOM", 0, 0)
end
-- click --
for i = 0, 2, 1 do
	_G["abfOptions5aBox3PopOut2Choice"..i]:HookScript("OnClick", function(self, button, down)
		if button == "LeftButton" and down == false then
			ABFactionBars["Bar5"]["Top"]["ArtGradientOptions2"] = self.Text:GetText()
			abfOptions5aBox3PopOut2.Text:SetText(self.Text:GetText())
			abfOptions5aBox3PopOut2Choice0:Hide()
			if ABFactionBars["Bar5"]["Top"]["ArtGradientOptions2"] == "Default Color" then
				ABFactionBars["Bar5"]["Top"]["ArtGradientColor2"] = {r = 1, g = 1, b = 1, a = 1}
				abfSavedColorTop("Bar5", MultiBarLeft)
			elseif ABFactionBars["Bar5"]["Top"]["ArtGradientOptions2"] == "Class Color" then
				ABFactionBars["Bar5"]["Top"]["ArtGradientColor2"] = CreateColor(abfClassColor:GetRGB())
				abfSavedColorTop("Bar5", MultiBarLeft)
			elseif ABFactionBars["Bar5"]["Top"]["ArtGradientOptions2"] == "Custom Color" then
				abfShowColorPicker("Bar5", MultiBarLeft, "Top", abfSavedColorTop, "ArtGradientColor2")
			end
		end
	end)
end
-- Box 3, Pop Out Button 3, Top Color Gradient Orientation --
-- enter --
abfOptions5aBox3PopOut3:SetScript("OnEnter", function(self)
	abfEnteringMenus(self)
	GameTooltip:SetText("|T"..C_AddOns.GetAddOnMetadata("ABF", "IconTexture")..":16|t"..abfMainColor:WrapTextInColorCode(C_AddOns.GetAddOnMetadata("ABF", "Title")).."|nChoose the orientation|nof the colors for the Top Art")
end)
-- leave --
abfOptions5aBox3PopOut3:SetScript("OnLeave", abfLeavingMenus)
-- drop down --
abfClickPopOut(abfOptions5aBox3PopOut3, abfOptions5aBox3PopOut3Choice0)
-- naming at Options10 --
-- sort --
for i = 1, 1, 1 do
	_G["abfOptions5aBox3PopOut3Choice"..i]:SetParent(abfOptions5aBox3PopOut3Choice0)
	_G["abfOptions5aBox3PopOut3Choice"..i]:SetPoint("TOP", _G["abfOptions5aBox3PopOut3Choice"..i-1], "BOTTOM", 0, 0)
end
-- click --
for i = 0, 1, 1 do
	_G["abfOptions5aBox3PopOut3Choice"..i]:HookScript("OnClick", function(self, button, down)
		if button == "LeftButton" and down == false then
			ABFactionBars["Bar5"]["Top"]["ArtGradientOrientation"] = self.Text:GetText()
			abfOptions5aBox3PopOut3.Text:SetText(self.Text:GetText())
			abfOptions5aBox3PopOut3Choice0:Hide()
			abfSavedColorTop("Bar5", MultiBarLeft)
		end
	end)
end
-- Options Box 4, Bottom Art --
-- Box 4, Pop Out Button 1, Bottom Art choice --
-- enter --
abfOptions5aBox4PopOut1:SetScript("OnEnter", function(self)
	abfEnteringMenus(self)
	GameTooltip:SetText("|T"..C_AddOns.GetAddOnMetadata("ABF", "IconTexture")..":16|t"..abfMainColor:WrapTextInColorCode(C_AddOns.GetAddOnMetadata("ABF", "Title")).."|nChoose the Bottom Art for|nthe Action Bar 5")
end)
-- leave --
abfOptions5aBox4PopOut1:SetScript("OnLeave", abfLeavingMenus)
-- drop down --
abfClickPopOut(abfOptions5aBox4PopOut1, abfOptions5aBox4PopOut1Choice0)
-- naming at Options10 --
-- sort --
for i = 1, 3, 1 do
	_G["abfOptions5aBox4PopOut1Choice"..i]:SetParent(abfOptions5aBox4PopOut1Choice0)
	_G["abfOptions5aBox4PopOut1Choice"..i]:SetPoint("TOP", _G["abfOptions5aBox4PopOut1Choice"..i-1], "BOTTOM", 0, 0)
end
-- click --
for i = 0, 3, 1 do
	_G["abfOptions5aBox4PopOut1Choice"..i]:HookScript("OnClick", function(self, button, down)
		if button == "LeftButton" and down == false then
			ABFactionBars["Bar5"]["Bottom"]["Art"] = self.Text:GetText()
			abfOptions5aBox4PopOut1.Text:SetText(self.Text:GetText())
			abfOptions5aBox4PopOut1Choice0:Hide()
			if ABFactionBars["Bar5"]["Bottom"]["Art"] == "SoftCloud" then
				if not abfOptions5aBox4PopOut3:IsShown() then abfOptions5aBox4PopOut3:Show() end
				if not abfOptions5aBox4PopOut4:IsShown() then abfOptions5aBox4PopOut4:Show() end
			else
				if abfOptions5aBox4PopOut3:IsShown() then abfOptions5aBox4PopOut3:Hide() end
				if abfOptions5aBox4PopOut4:IsShown() then abfOptions5aBox4PopOut4:Hide() end
			end
			abfSavedArtBottom("Bar5", MultiBarLeft)
		end
	end)
end
-- Box 4, Pop Out Button 2, Bottom Art Color Choice --
-- enter --
abfOptions5aBox4PopOut2:SetScript("OnEnter", function(self)
	abfEnteringMenus(self)
	GameTooltip:SetText("|T"..C_AddOns.GetAddOnMetadata("ABF", "IconTexture")..":16|t"..abfMainColor:WrapTextInColorCode(C_AddOns.GetAddOnMetadata("ABF", "Title")).."|nChoose the mode color for|nthe Bottom Art! (one color or gradient color)") 
end)
-- leave --
abfOptions5aBox4PopOut2:SetScript("OnLeave", abfLeavingMenus)
-- drop down --
abfClickPopOut(abfOptions5aBox4PopOut2, abfOptions5aBox4PopOut2Choice0)
-- naming at Options10 --
-- sort --
for i = 1, 1, 1 do
	_G["abfOptions5aBox4PopOut2Choice"..i]:SetParent(abfOptions5aBox4PopOut2Choice0)
	_G["abfOptions5aBox4PopOut2Choice"..i]:SetPoint("TOP", _G["abfOptions5aBox4PopOut2Choice"..i-1], "BOTTOM", 0, 0)
end
-- click --
for i = 0, 1, 1 do
	_G["abfOptions5aBox4PopOut2Choice"..i]:HookScript("OnClick", function(self, button, down)
		if button == "LeftButton" and down == false then
			ABFactionBars["Bar5"]["Bottom"]["ArtColorChoice"] = self.Text:GetText()
			abfOptions5aBox4PopOut2.Text:SetText(self.Text:GetText())
			abfOptions5aBox4PopOut2Choice0:Hide()
			abfSavedColorBottom("Bar5", MultiBarLeft)
			if ABFactionBars["Bar5"]["Bottom"]["ArtColorChoice"] == "One Color" then
				if not abfOptions5aBox5:IsShown() then abfOptions5aBox5:Show() end
				if abfOptions5aBox6:IsShown() then abfOptions5aBox6:Hide() end
			elseif ABFactionBars["Bar5"]["Bottom"]["ArtColorChoice"] == "Gradient Color" then
				if abfOptions5aBox5:IsShown() then abfOptions5aBox5:Hide() end
				if not abfOptions5aBox6:IsShown() then abfOptions5aBox6:Show() end
			end
		end
	end)
end
-- Box 4, Pop Out Button 3, Bottom Art Animation --
-- enter --
abfOptions5aBox4PopOut3:SetScript("OnEnter", function(self)
	abfEnteringMenus(self)
	GameTooltip:SetText("|T"..C_AddOns.GetAddOnMetadata("ABF", "IconTexture")..":16|t"..abfMainColor:WrapTextInColorCode(C_AddOns.GetAddOnMetadata("ABF", "Title")).."|nWhould you like the animation|nfor the Bottom Art to be shown?")
end)
-- leave --
abfOptions5aBox4PopOut3:SetScript("OnLeave", abfLeavingMenus)
-- drop down --
abfClickPopOut(abfOptions5aBox4PopOut3, abfOptions5aBox4PopOut3Choice0)
-- naming at Options10 --
-- sort --
for i = 1, 1, 1 do
	_G["abfOptions5aBox4PopOut3Choice"..i]:SetParent(abfOptions5aBox4PopOut3Choice0)
	_G["abfOptions5aBox4PopOut3Choice"..i]:SetPoint("TOP", _G["abfOptions5aBox4PopOut3Choice"..i-1], "BOTTOM", 0, 0)
end
-- click --
for i = 0, 1, 1 do
	_G["abfOptions5aBox4PopOut3Choice"..i]:HookScript("OnClick", function(self, button, down)
		if button == "LeftButton" and down == false then
			abfOptions5aBox4PopOut3.Text:SetText(self.Text:GetText())
			abfOptions5aBox4PopOut3Choice0:Hide()
			if self.Text:GetText() == "Hide" then
				ABFactionBars["Bar5"]["Bottom"]["Animation"] = false
			elseif self.Text:GetText() == "Show" then
				ABFactionBars["Bar5"]["Bottom"]["Animation"] = true
			end
			--abfSavedAnimationBottom("Bar5", MultiBarLeft)
		end
	end)
end
-- Box 4, Pop Out Button 4, Bottom Art Animation Color --
-- enter --
abfOptions5aBox4PopOut4:SetScript("OnEnter", function(self)
	abfEnteringMenus(self)
	GameTooltip:SetText("|T"..C_AddOns.GetAddOnMetadata("ABF", "IconTexture")..":16|t"..abfMainColor:WrapTextInColorCode(C_AddOns.GetAddOnMetadata("ABF", "Title")).."|nChoose the color for the animation")
end)
-- leave --
abfOptions5aBox4PopOut4:SetScript("OnLeave", abfLeavingMenus)
-- drop down --
abfClickPopOut(abfOptions5aBox4PopOut4, abfOptions5aBox4PopOut4Choice0)
-- naming at Options10 --
-- sort --
for i = 1, 2, 1 do
	_G["abfOptions5aBox4PopOut4Choice"..i]:SetParent(abfOptions5aBox4PopOut4Choice0)
	_G["abfOptions5aBox4PopOut4Choice"..i]:SetPoint("TOP", _G["abfOptions5aBox4PopOut4Choice"..i-1], "BOTTOM", 0, 0)
end
-- click --
for i = 0, 2, 1 do
	_G["abfOptions5aBox4PopOut4Choice"..i]:HookScript("OnClick", function(self, button, down)
		if button == "LeftButton" and down == false then
			ABFactionBars["Bar5"]["Bottom"]["AnimationColorOptions"] = self.Text:GetText()
			abfOptions5aBox4PopOut4.Text:SetText(self.Text:GetText())
			abfOptions5aBox4PopOut4Choice0:Hide()
			if ABFactionBars["Bar5"]["Bottom"]["AnimationColorOptions"] == "Default Color" then
				ABFactionBars["Bar5"]["Bottom"]["AnimationColor"] = {r = 1, g = 1, b = 1, a = 1}
				--abfSavedAnimationBottomColor("Bar5", MultiBarLeft)
			elseif ABFactionBars["Bar5"]["Bottom"]["AnimationColorOptions"] == "Class Color" then
				ABFactionBars["Bar5"]["Bottom"]["AnimationColor"] = CreateColor(abfClassColor:GetRGB())
				--abfSavedAnimationBottomColor("Bar5", MultiBarLeft)
			elseif ABFactionBars["Bar5"]["Bottom"]["AnimationColorOptions"] == "Custom Color" then
				--abfShowColorPicker("Bar5", MultiBarLeft, "Bottom", abfSavedAnimationBottomColor, "AnimationColor")
			end
		end
	end)
end
-- Options Box 5, Bottom Color One --
-- Box 5, Pop Out Button 1, Bottom Color One Choices --
-- enter --
abfOptions5aBox5PopOut1:SetScript("OnEnter", function(self)
	abfEnteringMenus(self)
	GameTooltip:SetText("|T"..C_AddOns.GetAddOnMetadata("ABF", "IconTexture")..":16|t"..abfMainColor:WrapTextInColorCode(C_AddOns.GetAddOnMetadata("ABF", "Title")).."|nChoose the color for the Bottom Art")
end)
-- leave --
abfOptions5aBox5PopOut1:SetScript("OnLeave", abfLeavingMenus)
-- drop down --
abfClickPopOut(abfOptions5aBox5PopOut1, abfOptions5aBox5PopOut1Choice0)
-- naming at Options10 --
-- sort --
for i = 1, 2, 1 do
	_G["abfOptions5aBox5PopOut1Choice"..i]:SetParent(abfOptions5aBox5PopOut1Choice0)
	_G["abfOptions5aBox5PopOut1Choice"..i]:SetPoint("TOP", _G["abfOptions5aBox5PopOut1Choice"..i-1], "BOTTOM", 0, 0)
end
-- click --
for i = 0, 2, 1 do
	_G["abfOptions5aBox5PopOut1Choice"..i]:HookScript("OnClick", function(self, button, down)
		if button == "LeftButton" and down == false then
			ABFactionBars["Bar5"]["Bottom"]["ArtColorOptions"] = self.Text:GetText()
			abfOptions5aBox5PopOut1.Text:SetText(self.Text:GetText())
			abfOptions5aBox5PopOut1Choice0:Hide()
			if ABFactionBars["Bar5"]["Bottom"]["ArtColorOptions"] == "Default Color" then
				ABFactionBars["Bar5"]["Bottom"]["ArtColor"] = {r = 1, g = 1, b = 1, a = 1}
				if abfOptions5aBox5Slider1:IsShown() then abfOptions5aBox5Slider1:Hide() end
				abfSavedColorBottom("Bar5", MultiBarLeft)
			elseif ABFactionBars["Bar5"]["Bottom"]["ArtColorOptions"] == "Class Color" then
				ABFactionBars["Bar5"]["Bottom"]["ArtColor"] = CreateColor(abfClassColor:GetRGB())
				if abfOptions5aBox5Slider1:IsShown() then abfOptions5aBox5Slider1:Hide() end
				abfSavedColorBottom("Bar5", MultiBarLeft)
			elseif ABFactionBars["Bar5"]["Bottom"]["ArtColorOptions"] == "Custom Color" then
				if not abfOptions5aBox5Slider1:IsShown() then abfOptions5aBox5Slider1:Show() end
				abfShowColorPicker("Bar5", MultiBarLeft, "Bottom", abfSavedColorBottom, "ArtColor")
			end
		end
	end)
end
-- Box 5, Slider 1, Bottom Desaturation --
-- min max values --
abfOptions5aBox5Slider1.MinText:SetText(0)
abfOptions5aBox5Slider1.MaxText:SetText(1)
abfOptions5aBox5Slider1.Slider:SetMinMaxValues(0, 10)
-- enter --
abfOptions5aBox5Slider1.Slider:SetScript("OnEnter", function(self)
	abfEnteringMenus(self)
	GameTooltip:SetText("|T"..C_AddOns.GetAddOnMetadata("ABF", "IconTexture")..":16|t "..abfMainColor:WrapTextInColorCode(C_AddOns.GetAddOnMetadata("ABF", "Title")).."|nYou can also use your mousewheel|nor the buttons to the edge|nto change the value!") 
end)
-- leave --
abfOptions5aBox5Slider1.Slider:SetScript("OnLeave", abfLeavingMenus)
-- on mouse wheel --
abfOptions5aBox5Slider1.Slider:SetScript("OnMouseWheel", abfMouseWheelSlider)
-- On Value Changed --
abfOptions5aBox5Slider1.Slider:SetScript("OnValueChanged", function (self, value, userInput)
	abfOptions5aBox5Slider1.TopText:SetText("Desaturation of the Artwork: "..(self:GetValue()/10))
	ABFactionBars["Bar5"]["Bottom"]["ArtColorDesaturation"] = self:GetValue()/10
	abfSavedColorBottom("Bar5", MultiBarLeft)
end)
-- Options Box 6, Bottom Color Gradient --
-- Box 6, Pop Out Button 1, Bottom Color Gradient One --
-- enter --
abfOptions5aBox6PopOut1:SetScript("OnEnter", function(self)
	abfEnteringMenus(self)
	GameTooltip:SetText("|T"..C_AddOns.GetAddOnMetadata("ABF", "IconTexture")..":16|t"..abfMainColor:WrapTextInColorCode(C_AddOns.GetAddOnMetadata("ABF", "Title")).."|nChoose the first grandient color for the Bottom Art")
end)
-- leave --
abfOptions5aBox6PopOut1:SetScript("OnLeave", abfLeavingMenus)
-- drop down --
abfClickPopOut(abfOptions5aBox6PopOut1, abfOptions5aBox6PopOut1Choice0)
-- naming at Options10 --
-- sort --
for i = 1, 2, 1 do
	_G["abfOptions5aBox6PopOut1Choice"..i]:SetParent(abfOptions5aBox6PopOut1Choice0)
	_G["abfOptions5aBox6PopOut1Choice"..i]:SetPoint("TOP", _G["abfOptions5aBox6PopOut1Choice"..i-1], "BOTTOM", 0, 0)
end
-- click --
for i = 0, 2, 1 do
	_G["abfOptions5aBox6PopOut1Choice"..i]:HookScript("OnClick", function(self, button, down)
		if button == "LeftButton" and down == false then
			ABFactionBars["Bar5"]["Bottom"]["ArtGradientOptions1"] = self.Text:GetText()
			abfOptions5aBox6PopOut1.Text:SetText(self.Text:GetText())
			abfOptions5aBox6PopOut1Choice0:Hide()
			if ABFactionBars["Bar5"]["Bottom"]["ArtGradientOptions1"] == "Default Color" then
				ABFactionBars["Bar5"]["Bottom"]["ArtGradientColor1"] = {r = 1, g = 1, b = 1, a = 1}
				abfSavedColorBottom("Bar5", MultiBarLeft)
			elseif ABFactionBars["Bar5"]["Bottom"]["ArtGradientOptions1"] == "Class Color" then
				ABFactionBars["Bar5"]["Bottom"]["ArtGradientColor1"] = CreateColor(abfClassColor:GetRGB())
				abfSavedColorBottom("Bar5", MultiBarLeft)
			elseif ABFactionBars["Bar5"]["Bottom"]["ArtGradientOptions1"] == "Custom Color" then
				abfShowColorPicker("Bar5", MultiBarLeft, "Bottom", abfSavedColorBottom, "ArtGradientColor1")
			end
		end
	end)
end
-- Box 6, Pop Out Button 2, Bottom Color Gradient Two --
-- enter --
abfOptions5aBox6PopOut2:SetScript("OnEnter", function(self)
	abfEnteringMenus(self)
	GameTooltip:SetText("|T"..C_AddOns.GetAddOnMetadata("ABF", "IconTexture")..":16|t"..abfMainColor:WrapTextInColorCode(C_AddOns.GetAddOnMetadata("ABF", "Title")).."|nChoose the second grandient color for the Bottom Art")
end)
-- leave --
abfOptions5aBox6PopOut2:SetScript("OnLeave", abfLeavingMenus)
-- drop down --
abfClickPopOut(abfOptions5aBox6PopOut2, abfOptions5aBox6PopOut2Choice0)
-- naming at Options10 --
-- sort --
for i = 1, 2, 1 do
	_G["abfOptions5aBox6PopOut2Choice"..i]:SetParent(abfOptions5aBox6PopOut2Choice0)
	_G["abfOptions5aBox6PopOut2Choice"..i]:SetPoint("TOP", _G["abfOptions5aBox6PopOut2Choice"..i-1], "BOTTOM", 0, 0)
end
-- click --
for i = 0, 2, 1 do
	_G["abfOptions5aBox6PopOut2Choice"..i]:HookScript("OnClick", function(self, button, down)
		if button == "LeftButton" and down == false then
			ABFactionBars["Bar5"]["Bottom"]["ArtGradientOptions2"] = self.Text:GetText()
			abfOptions5aBox6PopOut2.Text:SetText(self.Text:GetText())
			abfOptions5aBox6PopOut2Choice0:Hide()
			if ABFactionBars["Bar5"]["Bottom"]["ArtGradientOptions2"] == "Default Color" then
				ABFactionBars["Bar5"]["Bottom"]["ArtGradientColor2"] = {r = 1, g = 1, b = 1, a = 1}
				abfSavedColorBottom("Bar5", MultiBarLeft)
			elseif ABFactionBars["Bar5"]["Bottom"]["ArtGradientOptions2"] == "Class Color" then
				ABFactionBars["Bar5"]["Bottom"]["ArtGradientColor2"] = CreateColor(abfClassColor:GetRGB())
				abfSavedColorBottom("Bar5", MultiBarLeft)
			elseif ABFactionBars["Bar5"]["Bottom"]["ArtGradientOptions2"] == "Custom Color" then
				abfShowColorPicker("Bar5", MultiBarLeft, "Bottom", abfSavedColorBottom, "ArtGradientColor2")
			end
		end
	end)
end
-- Box 6, Pop Out Button 3, Bottom Color Gradient Orientation --
-- enter --
abfOptions5aBox6PopOut3:SetScript("OnEnter", function(self)
	abfEnteringMenus(self)
	GameTooltip:SetText("|T"..C_AddOns.GetAddOnMetadata("ABF", "IconTexture")..":16|t"..abfMainColor:WrapTextInColorCode(C_AddOns.GetAddOnMetadata("ABF", "Title")).."|nChoose the orientation|nof the colors for the Bottom Art")
end)
-- leave --
abfOptions5aBox6PopOut3:SetScript("OnLeave", abfLeavingMenus)
-- drop down --
abfClickPopOut(abfOptions5aBox6PopOut3, abfOptions5aBox6PopOut3Choice0)
-- naming at Options10 --
-- sort --
for i = 1, 1, 1 do
	_G["abfOptions5aBox6PopOut3Choice"..i]:SetParent(abfOptions5aBox6PopOut3Choice0)
	_G["abfOptions5aBox6PopOut3Choice"..i]:SetPoint("TOP", _G["abfOptions5aBox6PopOut3Choice"..i-1], "BOTTOM", 0, 0)
end
-- click --
for i = 0, 1, 1 do
	_G["abfOptions5aBox6PopOut3Choice"..i]:HookScript("OnClick", function(self, button, down)
		if button == "LeftButton" and down == false then
			ABFactionBars["Bar5"]["Bottom"]["ArtGradientOrientation"] = self.Text:GetText()
			abfOptions5aBox6PopOut3.Text:SetText(self.Text:GetText())
			abfOptions5aBox6PopOut3Choice0:Hide()
			abfSavedColorBottom("Bar5", MultiBarLeft)
		end
	end)
end
-- Options Box 7, Normal Texture Color --
-- Box 7, Pop Out Button 1, Normal Texture Color Choice --
-- enter --
abfOptions5aBox7PopOut1:SetScript("OnEnter", function(self)
	abfEnteringMenus(self)
	GameTooltip:SetText("|T"..C_AddOns.GetAddOnMetadata("ABF", "IconTexture")..":16|t"..abfMainColor:WrapTextInColorCode(C_AddOns.GetAddOnMetadata("ABF", "Title")).."|nChoose the mode color for|nthe Buttons Border! (one color or gradient color)") 
end)
-- leave --
abfOptions5aBox7PopOut1:SetScript("OnLeave", abfLeavingMenus)
-- drop down --
abfClickPopOut(abfOptions5aBox7PopOut1, abfOptions5aBox7PopOut1Choice0)
-- naming at Options10 --
-- sort --
for i = 1, 1, 1 do
	_G["abfOptions5aBox7PopOut1Choice"..i]:SetParent(abfOptions5aBox7PopOut1Choice0)
	_G["abfOptions5aBox7PopOut1Choice"..i]:SetPoint("TOP", _G["abfOptions5aBox7PopOut1Choice"..i-1], "BOTTOM", 0, 0)
end
-- click --
for i = 0, 1, 1 do
	_G["abfOptions5aBox7PopOut1Choice"..i]:HookScript("OnClick", function(self, button, down)
		if button == "LeftButton" and down == false then
			ABFactionBars["Bar5"]["NormalTextureColorMode"] = self.Text:GetText()
			abfOptions5aBox7PopOut1.Text:SetText(self.Text:GetText())
			abfOptions5aBox7PopOut1Choice0:Hide()
			abfSavedColorNormalTexture("Bar5", MultiBarLeft)
			if ABFactionBars["Bar5"]["NormalTextureColorMode"] == "One Color" then
				if not abfOptions5aBox8:IsShown() then abfOptions5aBox8:Show() end
				if abfOptions5aBox9:IsShown() then abfOptions5aBox9:Hide() end
			elseif ABFactionBars["Bar5"]["NormalTextureColorMode"] == "Gradient Color" then
				if abfOptions5aBox8:IsShown() then abfOptions5aBox8:Hide() end
				if not abfOptions5aBox9:IsShown() then abfOptions5aBox9:Show() end
			end
		end
	end)
end
-- Options Box 8, Normal Texture Color One --
-- Box 8, Pop Out Button 1, Normal Texture Color One Choices --
-- enter --
abfOptions5aBox8PopOut1:SetScript("OnEnter", function(self)
	abfEnteringMenus(self)
	GameTooltip:SetText("|T"..C_AddOns.GetAddOnMetadata("ABF", "IconTexture")..":16|t"..abfMainColor:WrapTextInColorCode(C_AddOns.GetAddOnMetadata("ABF", "Title")).."|nChoose the color for the Buttons Borders")
end)
-- leave --
abfOptions5aBox8PopOut1:SetScript("OnLeave", abfLeavingMenus)
-- drop down --
abfClickPopOut(abfOptions5aBox8PopOut1, abfOptions5aBox8PopOut1Choice0)
-- naming at Options10 --
-- sort --
for i = 1, 2, 1 do
	_G["abfOptions5aBox8PopOut1Choice"..i]:SetParent(abfOptions5aBox8PopOut1Choice0)
	_G["abfOptions5aBox8PopOut1Choice"..i]:SetPoint("TOP", _G["abfOptions5aBox8PopOut1Choice"..i-1], "BOTTOM", 0, 0)
end
-- click --
for i = 0, 2, 1 do
	_G["abfOptions5aBox8PopOut1Choice"..i]:HookScript("OnClick", function(self, button, down)
		if button == "LeftButton" and down == false then
			ABFactionBars["Bar5"]["NormalTextureColorOptions"] = self.Text:GetText()
			abfOptions5aBox8PopOut1.Text:SetText(self.Text:GetText())
			abfOptions5aBox8PopOut1Choice0:Hide()
			if ABFactionBars["Bar5"]["NormalTextureColorOptions"] == "Default Color" then
				ABFactionBars["Bar5"]["NormalTextureColor"] = {r = 1, g = 1, b = 1, a = 1}
				abfSavedColorNormalTexture("Bar5", MultiBarLeft)
			elseif ABFactionBars["Bar5"]["NormalTextureColorOptions"] == "Class Color" then
				ABFactionBars["Bar5"]["NormalTextureColor"] = CreateColor(abfClassColor:GetRGB())
				abfSavedColorNormalTexture("Bar5", MultiBarLeft)
			elseif ABFactionBars["Bar5"]["NormalTextureColorOptions"] == "Custom Color" then
				abfShowColorPickerCD("Bar5", MultiBarLeft, "NormalTextureColor", abfSavedColorNormalTexture)
			end
		end
	end)
end
-- Options Box 9, Normal Texture Color Gradient --
-- Box 9, Pop Out Button 1, Normal Texture Color Gradient One --
-- enter --
abfOptions5aBox9PopOut1:SetScript("OnEnter", function(self)
	abfEnteringMenus(self)
	GameTooltip:SetText("|T"..C_AddOns.GetAddOnMetadata("ABF", "IconTexture")..":16|t"..abfMainColor:WrapTextInColorCode(C_AddOns.GetAddOnMetadata("ABF", "Title")).."|nChoose the first grandient color for the Buttons Borders")
end)
-- leave --
abfOptions5aBox9PopOut1:SetScript("OnLeave", abfLeavingMenus)
-- drop down --
abfClickPopOut(abfOptions5aBox9PopOut1, abfOptions5aBox9PopOut1Choice0)
-- naming at Options10 --
-- sort --
for i = 1, 2, 1 do
	_G["abfOptions5aBox9PopOut1Choice"..i]:SetParent(abfOptions5aBox9PopOut1Choice0)
	_G["abfOptions5aBox9PopOut1Choice"..i]:SetPoint("TOP", _G["abfOptions5aBox9PopOut1Choice"..i-1], "BOTTOM", 0, 0)
end
-- click --
for i = 0, 2, 1 do
	_G["abfOptions5aBox9PopOut1Choice"..i]:HookScript("OnClick", function(self, button, down)
		if button == "LeftButton" and down == false then
			ABFactionBars["Bar5"]["NormalTextureGradientOptions1"] = self.Text:GetText()
			abfOptions5aBox9PopOut1.Text:SetText(self.Text:GetText())
			abfOptions5aBox9PopOut1Choice0:Hide()
			if ABFactionBars["Bar5"]["NormalTextureGradientOptions1"] == "Default Color" then
				ABFactionBars["Bar5"]["NormalTextureGradient1"] = {r = 1, g = 1, b = 1, a = 1}
				abfSavedColorNormalTexture("Bar5", MultiBarLeft)
			elseif ABFactionBars["Bar5"]["NormalTextureGradientOptions1"] == "Class Color" then
				ABFactionBars["Bar5"]["NormalTextureGradient1"] = CreateColor(abfClassColor:GetRGB())
				abfSavedColorNormalTexture("Bar5", MultiBarLeft)
			elseif ABFactionBars["Bar5"]["NormalTextureGradientOptions1"] == "Custom Color" then
				abfShowColorPickerCD("Bar5", MultiBarLeft, "NormalTextureGradient1", abfSavedColorNormalTexture)
			end
		end
	end)
end
-- Box 9, Pop Out Button 2, Normal Texture Color Gradient two --
-- enter --
abfOptions5aBox9PopOut2:SetScript("OnEnter", function(self)
	abfEnteringMenus(self)
	GameTooltip:SetText("|T"..C_AddOns.GetAddOnMetadata("ABF", "IconTexture")..":16|t"..abfMainColor:WrapTextInColorCode(C_AddOns.GetAddOnMetadata("ABF", "Title")).."|nChoose the second grandient color for the Buttons Borders")
end)
-- leave --
abfOptions5aBox9PopOut2:SetScript("OnLeave", abfLeavingMenus)
-- drop down --
abfClickPopOut(abfOptions5aBox9PopOut2, abfOptions5aBox9PopOut2Choice0)
-- naming at Options10 --
-- sort --
for i = 1, 2, 1 do
	_G["abfOptions5aBox9PopOut2Choice"..i]:SetParent(abfOptions5aBox9PopOut2Choice0)
	_G["abfOptions5aBox9PopOut2Choice"..i]:SetPoint("TOP", _G["abfOptions5aBox9PopOut2Choice"..i-1], "BOTTOM", 0, 0)
end
-- click --
for i = 0, 2, 1 do
	_G["abfOptions5aBox9PopOut2Choice"..i]:HookScript("OnClick", function(self, button, down)
		if button == "LeftButton" and down == false then
			ABFactionBars["Bar5"]["NormalTextureGradientOptions2"] = self.Text:GetText()
			abfOptions5aBox9PopOut2.Text:SetText(self.Text:GetText())
			abfOptions5aBox9PopOut2Choice0:Hide()
			if ABFactionBars["Bar5"]["NormalTextureGradientOptions2"] == "Default Color" then
				ABFactionBars["Bar5"]["NormalTextureGradient2"] = {r = 1, g = 1, b = 1, a = 1}
				abfSavedColorNormalTexture("Bar5", MultiBarLeft)
			elseif ABFactionBars["Bar5"]["NormalTextureGradientOptions2"] == "Class Color" then
				ABFactionBars["Bar5"]["NormalTextureGradient2"] = CreateColor(abfClassColor:GetRGB())
				abfSavedColorNormalTexture("Bar5", MultiBarLeft)
			elseif ABFactionBars["Bar5"]["NormalTextureGradientOptions2"] == "Custom Color" then
				abfShowColorPickerCD("Bar5", MultiBarLeft, "NormalTextureGradient2", abfSavedColorNormalTexture)
			end
		end
	end)
end
-- Box 9, Pop Out Button 3, Normal Texture Color Gradient Orientation --
-- enter --
abfOptions5aBox9PopOut3:SetScript("OnEnter", function(self)
	abfEnteringMenus(self)
	GameTooltip:SetText("|T"..C_AddOns.GetAddOnMetadata("ABF", "IconTexture")..":16|t"..abfMainColor:WrapTextInColorCode(C_AddOns.GetAddOnMetadata("ABF", "Title")).."|nChoose the orientation|nof the colors for the Buttons Borders")
end)
-- leave --
abfOptions5aBox9PopOut3:SetScript("OnLeave", abfLeavingMenus)
-- drop down --
abfClickPopOut(abfOptions5aBox9PopOut3, abfOptions5aBox9PopOut3Choice0)
-- naming at Options10 --
-- sort --
for i = 1, 1, 1 do
	_G["abfOptions5aBox9PopOut3Choice"..i]:SetParent(abfOptions5aBox9PopOut3Choice0)
	_G["abfOptions5aBox9PopOut3Choice"..i]:SetPoint("TOP", _G["abfOptions5aBox9PopOut3Choice"..i-1], "BOTTOM", 0, 0)
end
-- click --
for i = 0, 1, 1 do
	_G["abfOptions5aBox9PopOut3Choice"..i]:HookScript("OnClick", function(self, button, down)
		if button == "LeftButton" and down == false then
			ABFactionBars["Bar5"]["NormalTextureGradientOrientation"] = self.Text:GetText()
			abfOptions5aBox9PopOut3.Text:SetText(self.Text:GetText())
			abfOptions5aBox9PopOut3Choice0:Hide()
			abfSavedColorNormalTexture("Bar5", MultiBarLeft)
		end
	end)
end
-- Showing the panel --
abfOptions5a:HookScript("OnShow", function(self)
	CheckSavedVariables()
-- panels --
	if abfOptions5:IsShown() then abfOptions5:Hide() end
-- tabs --
	abfOptions00Tab5.Text:SetTextColor(abfHighColor:GetRGB())
	for i = 1, 4, 1 do
		_G["abfOptions00Tab"..i].Text:SetTextColor(abfMainColor:GetRGB())
	end
	for i = 6, 10, 1 do
		_G["abfOptions00Tab"..i].Text:SetTextColor(abfMainColor:GetRGB())
	end
-- buttons --
	abfOptions00PageButton1e.Text:SetTextColor(abfMainColor:GetRGB())
	abfOptions00PageButton2e.Text:SetTextColor(abfHighColor:GetRGB())
end)
