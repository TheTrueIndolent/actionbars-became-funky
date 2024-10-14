-- takeing care the rest boxes --
abfOptions4aBox2:SetPoint("TOPLEFT", abfOptions4aBox1, "BOTTOMLEFT", 0, 6)
abfOptions4aBox3:SetPoint("TOPLEFT", abfOptions4aBox1, "BOTTOMLEFT", 0, 6)
abfOptions4aBox01:SetPoint("TOPLEFT", abfOptions4aBox3, "BOTTOMLEFT", 0, 0)
abfOptions4aBox5:SetPoint("TOPRIGHT", abfOptions4aBox4, "BOTTOMRIGHT", 0, 6)
abfOptions4aBox6:SetPoint("TOPRIGHT", abfOptions4aBox4, "BOTTOMRIGHT", 0, 6)
abfOptions4aBox02:SetPoint("TOPRIGHT", abfOptions4aBox6, "BOTTOMRIGHT", 0, 0)
abfOptions4aBox7:SetPoint("TOPLEFT", abfOptions4aBox01, "BOTTOMLEFT", 0, 0)
abfOptions4aBox8:SetPoint("TOPLEFT", abfOptions4aBox7, "BOTTOMLEFT", 0, 6)
abfOptions4aBox9:SetPoint("TOPLEFT", abfOptions4aBox7, "BOTTOMLEFT", 0, 6)
abfOptions4aBox1.BorderBottom:Hide()
abfOptions4aBox2.BorderTop:Hide()
abfOptions4aBox3.BorderTop:Hide()
abfOptions4aBox4.BorderBottom:Hide()
abfOptions4aBox5.BorderTop:Hide()
abfOptions4aBox6.BorderTop:Hide()
abfOptions4aBox7.BorderBottom:Hide()
abfOptions4aBox8.BorderTop:Hide()
abfOptions4aBox9.BorderTop:Hide()
-- naming tabs --
abfOptions4aBox1.TitleTxt:SetText("Top Art, Color Mode & Animation")
abfOptions4aBox2.TitleTxt:SetText("Top Art One Color")
abfOptions4aBox3.TitleTxt:SetText("Top Art Gradient Color")
abfOptions4aBox4.TitleTxt:SetText("Bottom Art, Color Mode & Animation")
abfOptions4aBox5.TitleTxt:SetText("Bottom Art One Color")
abfOptions4aBox6.TitleTxt:SetText("Bottom Art Gradient Color")
abfOptions4aBox7.TitleTxt:SetText("Buttons Border Color Mode")
abfOptions4aBox8.TitleTxt:SetText("Buttons Border One Color")
abfOptions4aBox9.TitleTxt:SetText("Buttons Border Gradient Color")
-- Checking the Saved Variables --
local function CheckSavedVariables()
-- Box 1, Pop Out Button 1 --
	abfOptions4aBox1PopOut1.Text:SetText(ABFactionBars["Bar4"]["Top"]["Art"])
	if ABFactionBars["Bar4"]["Top"]["Art"] == "JailersTower" then
		if not abfOptions4aBox1PopOut3:IsShown() then abfOptions4aBox1PopOut3:Show() end
		if not abfOptions4aBox1PopOut4:IsShown() then abfOptions4aBox1PopOut4:Show() end
	else
		if abfOptions4aBox1PopOut3:IsShown() then abfOptions4aBox1PopOut3:Hide() end
		if abfOptions4aBox1PopOut4:IsShown() then abfOptions4aBox1PopOut4:Hide() end
	end
-- Box 1, Pop Out Button 2 --
	abfOptions4aBox1PopOut2.Text:SetText(ABFactionBars["Bar4"]["Top"]["ArtColorChoice"])
	if ABFactionBars["Bar4"]["Top"]["ArtColorChoice"] == "One Color" then
		if not abfOptions4aBox2:IsShown() then abfOptions4aBox2:Show() end
		if abfOptions4aBox3:IsShown() then abfOptions4aBox3:Hide() end
	elseif ABFactionBars["Bar4"]["Top"]["ArtColorChoice"] == "Gradient Color" then
		if abfOptions4aBox2:IsShown() then abfOptions4aBox2:Hide() end
		if not abfOptions4aBox3:IsShown() then abfOptions4aBox3:Show() end
	end
-- Box 1, Pop Out Button 3--
	if ABFactionBars["Bar4"]["Top"]["Animation"] then
		abfOptions4aBox1PopOut3.Text:SetText("Show")
	elseif not ABFactionBars["Bar4"]["Top"]["Animation"] then
		abfOptions4aBox1PopOut3.Text:SetText("Hide")
	end
-- Box 1, Pop Out Button 4 --
	abfOptions4aBox1PopOut4.Text:SetText(ABFactionBars["Bar4"]["Top"]["AnimationColorOptions"])
-- Box 2, Pop Out Button 1
	abfOptions4aBox2PopOut1.Text:SetText(ABFactionBars["Bar4"]["Top"]["ArtColorOptions"])
	if ABFactionBars["Bar4"]["Top"]["ArtColorOptions"] == "Custom Color" then
		if not abfOptions4aBox2Slider1:IsShown() then abfOptions4aBox2Slider1:Show() end
	else
		if abfOptions4aBox2Slider1:IsShown() then abfOptions4aBox2Slider1:Hide() end
	end
-- Box 2, Slider 1 --
	abfOptions4aBox2Slider1.Slider:SetValue(ABFactionBars["Bar4"]["Top"]["ArtColorDesaturation"] * 10)
-- Box 3, Pop Out Button 1 --
	abfOptions4aBox3PopOut1.Text:SetText(ABFactionBars["Bar4"]["Top"]["ArtGradientOptions1"])
-- Box 3, Pop Out Button 2 --
	abfOptions4aBox3PopOut2.Text:SetText(ABFactionBars["Bar4"]["Top"]["ArtGradientOptions2"])
-- Box 3, Pop Out Button 3 --
	abfOptions4aBox3PopOut3.Text:SetText(ABFactionBars["Bar4"]["Top"]["ArtGradientOrientation"])
-- Box 4, Pop Out Button 1 --
	abfOptions4aBox4PopOut1.Text:SetText(ABFactionBars["Bar4"]["Bottom"]["Art"])
	if ABFactionBars["Bar4"]["Bottom"]["Art"] == "SoftCloud" then
		if not abfOptions4aBox4PopOut3:IsShown() then abfOptions4aBox4PopOut3:Show() end
		if not abfOptions4aBox4PopOut4:IsShown() then abfOptions4aBox4PopOut4:Show() end
	else
		if abfOptions4aBox4PopOut3:IsShown() then abfOptions4aBox4PopOut3:Hide() end
		if abfOptions4aBox4PopOut4:IsShown() then abfOptions4aBox4PopOut4:Hide() end
	end
-- Box 4, Pop Out Button 2 --
	abfOptions4aBox4PopOut2.Text:SetText(ABFactionBars["Bar4"]["Bottom"]["ArtColorChoice"])
	if ABFactionBars["Bar4"]["Bottom"]["ArtColorChoice"] == "One Color" then
		if not abfOptions4aBox5:IsShown() then abfOptions4aBox5:Show() end
		if abfOptions4aBox6:IsShown() then abfOptions4aBox6:Hide() end
	elseif ABFactionBars["Bar4"]["Bottom"]["ArtColorChoice"] == "Gradient Color" then
		if abfOptions4aBox5:IsShown() then abfOptions4aBox5:Hide() end
		if not abfOptions4aBox6:IsShown() then abfOptions4aBox6:Show() end
	end
-- Box 4, Pop Out Button 3 --
	if ABFactionBars["Bar4"]["Bottom"]["Animation"] then
		abfOptions4aBox4PopOut3.Text:SetText("Show")
	elseif not ABFactionBars["Bar4"]["Bottom"]["Animation"] then
		abfOptions4aBox4PopOut3.Text:SetText("Hide")
	end
-- Box 4, Pop Out Button 4 --
	abfOptions4aBox4PopOut4.Text:SetText(ABFactionBars["Bar4"]["Bottom"]["AnimationColorOptions"])
-- Box 5, Pop Out Button 1 --
	abfOptions4aBox5PopOut1:SetText(ABFactionBars["Bar4"]["Bottom"]["ArtColorOptions"])
	if ABFactionBars["Bar4"]["Bottom"]["ArtColorOptions"] == "Custom Color" then
		if not abfOptions4aBox5Slider1:IsShown() then abfOptions4aBox5Slider1:Hide() end
	else
		if abfOptions4aBox5Slider1:IsShown() then abfOptions4aBox5Slider1:Hide() end
	end
-- Box 5, Slider 1 --
	abfOptions4aBox5Slider1.Slider:SetValue(ABFactionBars["Bar4"]["Bottom"]["ArtColorDesaturation"] * 10)
-- Box 6, Pop Out Button 1 --
	abfOptions4aBox6PopOut1.Text:SetText(ABFactionBars["Bar4"]["Bottom"]["ArtGradientOptions1"])
-- Box 6, Pop Out Button 2 --
	abfOptions4aBox6PopOut2.Text:SetText(ABFactionBars["Bar4"]["Bottom"]["ArtGradientOptions2"])
-- Box 6, Pop Out Button 2 --
	abfOptions4aBox6PopOut3.Text:SetText(ABFactionBars["Bar4"]["Bottom"]["ArtGradientOrientation"])
-- Box 7, Pop Out Button 1 --
	abfOptions4aBox7PopOut1.Text:SetText(ABFactionBars["Bar4"]["NormalTextureColorMode"])
	if ABFactionBars["Bar4"]["NormalTextureColorMode"] == "One Color" then
		if not abfOptions4aBox8:IsShown() then abfOptions4aBox8:Show() end
		if abfOptions4aBox9:IsShown() then abfOptions4aBox9:Hide() end
	elseif ABFactionBars["Bar4"]["NormalTextureColorMode"] == "Gradient Color" then
		if abfOptions4aBox8:IsShown() then abfOptions4aBox8:Hide() end
		if not abfOptions4aBox9:IsShown() then abfOptions4aBox9:Show() end
	end
-- Box 8, Pop Out Button 1 --
	abfOptions4aBox8PopOut1.Text:SetText(ABFactionBars["Bar4"]["NormalTextureColorOptions"])
-- Box 9, Pop Out Button 1 --
	abfOptions4aBox9PopOut1.Text:SetText(ABFactionBars["Bar4"]["NormalTextureGradientOptions1"])
-- Box 9, Pop Out Button 2 --
	abfOptions4aBox9PopOut2.Text:SetText(ABFactionBars["Bar4"]["NormalTextureGradientOptions2"])
-- Box 9, Pop Out Button 3 --
	abfOptions4aBox9PopOut3.Text:SetText(ABFactionBars["Bar4"]["NormalTextureGradientOrientation"])
end
-- Options Box 1, Top Art --
-- Box 1, Pop Out Button 1, Top Art choice --
-- enter --
abfOptions4aBox1PopOut1:SetScript("OnEnter", function(self)
	abfEnteringMenus(self)
	GameTooltip:SetText("|T"..C_AddOns.GetAddOnMetadata("ABF", "IconTexture")..":16|t"..abfMainColor:WrapTextInColorCode(C_AddOns.GetAddOnMetadata("ABF", "Title")).."|nChoose the Top Art for|nthe Action Bar 4") 
end)
-- leave --
abfOptions4aBox1PopOut1:SetScript("OnLeave", abfLeavingMenus)
-- drop down --
abfClickPopOut(abfOptions4aBox1PopOut1, abfOptions4aBox1PopOut1Choice0)
-- sort --
for i = 1, 3, 1 do
	_G["abfOptions4aBox1PopOut1Choice"..i]:SetParent(abfOptions4aBox1PopOut1Choice0)
	_G["abfOptions4aBox1PopOut1Choice"..i]:SetPoint("TOP", _G["abfOptions4aBox1PopOut1Choice"..i-1], "BOTTOM", 0, 0)
-- on leave --
	_G["abfOptions4aBox1PopOut1Choice"..i]:HookScript("OnLeave", function(self) abfOptions4aBox1PopOut1.Example:Hide() abfOptions4aBox1PopOut1.Example1:Hide() end)
end
-- naming at Options10 --
-- clicking --
for i = 0, 3, 1 do
	_G["abfOptions4aBox1PopOut1Choice"..i]:HookScript("OnClick", function(self, button, down)
		if button == "LeftButton" and down == false then
			ABFactionBars["Bar4"]["Top"]["Art"] = self.Text:GetText()
			abfOptions4aBox1PopOut1.Text:SetText(self.Text:GetText())
			abfOptions4aBox1PopOut1Choice0:Hide()
			abfSavedArtTop("Bar4", MultiBarRight)
			if ABFactionBars["Bar4"]["Top"]["Art"] == "JailersTower" then
				if not abfOptions4aBox1PopOut3:IsShown() then abfOptions4aBox1PopOut3:Show() end
				if not abfOptions4aBox1PopOut4:IsShown() then abfOptions4aBox1PopOut4:Show() end
			else
				if abfOptions4aBox1PopOut3:IsShown() then abfOptions4aBox1PopOut3:Hide() end
				if abfOptions4aBox1PopOut4:IsShown() then abfOptions4aBox1PopOut4:Hide() end
			end
		end
	end)
end
-- entering the pop out buttons at Options10 --
-- Box 1, Pop Out Button 2, Top Art color choice --
-- enter --
abfOptions4aBox1PopOut2:SetScript("OnEnter", function(self)
	abfEnteringMenus(self)
	GameTooltip:SetText("|T"..C_AddOns.GetAddOnMetadata("ABF", "IconTexture")..":16|t"..abfMainColor:WrapTextInColorCode(C_AddOns.GetAddOnMetadata("ABF", "Title")).."|nChoose the mode color for|nthe Top Art! (one color or gradient color)") 
end)
-- leave --
abfOptions4aBox1PopOut2:SetScript("OnLeave", abfLeavingMenus)
-- drop down --
abfClickPopOut(abfOptions4aBox1PopOut2, abfOptions4aBox1PopOut2Choice0)
-- naming at Options10 --
-- sort --
for i = 1, 1, 1 do
	_G["abfOptions4aBox1PopOut2Choice"..i]:SetParent(abfOptions4aBox1PopOut2Choice0)
	_G["abfOptions4aBox1PopOut2Choice"..i]:SetPoint("TOP", _G["abfOptions4aBox1PopOut2Choice"..i-1], "BOTTOM", 0, 0)
end
-- click --
for i = 0, 1, 1 do
	_G["abfOptions4aBox1PopOut2Choice"..i]:HookScript("OnClick", function(self, button, down)
		if button == "LeftButton" and down == false then
			ABFactionBars["Bar4"]["Top"]["ArtColorChoice"] = self.Text:GetText()
			abfOptions4aBox1PopOut2.Text:SetText(self.Text:GetText())
			abfOptions4aBox1PopOut2Choice0:Hide()
			abfSavedColorTop("Bar4", MultiBarRight)
			if ABFactionBars["Bar4"]["Top"]["ArtColorChoice"] == "One Color" then
				if not abfOptions4aBox2:IsShown() then abfOptions4aBox2:Show() end
				if abfOptions4aBox3:IsShown() then abfOptions4aBox3:Hide() end
			elseif ABFactionBars["Bar4"]["Top"]["ArtColorChoice"] == "Gradient Color" then
				if abfOptions4aBox2:IsShown() then abfOptions4aBox2:Hide() end
				if not abfOptions4aBox3:IsShown() then abfOptions4aBox3:Show() end
			end
		end
	end)
end
-- Box 1, Pop Out Button 3, Top Art Animation --
-- enter --
abfOptions4aBox1PopOut3:SetScript("OnEnter", function(self)
	abfEnteringMenus(self)
	GameTooltip:SetText("|T"..C_AddOns.GetAddOnMetadata("ABF", "IconTexture")..":16|t"..abfMainColor:WrapTextInColorCode(C_AddOns.GetAddOnMetadata("ABF", "Title")).."|nWhould you like the animation|nfor the Top Art to be shown?")
end)
-- leave --
abfOptions4aBox1PopOut3:SetScript("OnLeave", abfLeavingMenus)
-- drop down --
abfClickPopOut(abfOptions4aBox1PopOut3, abfOptions4aBox1PopOut3Choice0)
-- naming at Options10 --
-- sort --
for i = 1, 1, 1 do
	_G["abfOptions4aBox1PopOut3Choice"..i]:SetParent(abfOptions4aBox1PopOut3Choice0)
	_G["abfOptions4aBox1PopOut3Choice"..i]:SetPoint("TOP", _G["abfOptions4aBox1PopOut3Choice"..i-1], "BOTTOM", 0, 0)
end
-- click --
for i = 0, 1, 1 do
	_G["abfOptions4aBox1PopOut3Choice"..i]:HookScript("OnClick", function(self, button, down)
		if button == "LeftButton" and down == false then
			abfOptions4aBox1PopOut3.Text:SetText(self.Text:GetText())
			abfOptions4aBox1PopOut3Choice0:Hide()
			if self.Text:GetText() == "Hide" then
				ABFactionBars["Bar4"]["Top"]["Animation"] = false
			elseif self.Text:GetText() == "Show" then
				ABFactionBars["Bar4"]["Top"]["Animation"] = true
			end
			abfSavedTopArtAnimation("Bar4", MultiBarRight)
		end
	end)
end
-- Box 1, Pop Out Button 4, Bottom Art Animation Color --
-- enter --
abfOptions4aBox1PopOut4:SetScript("OnEnter", function(self)
	abfEnteringMenus(self)
	GameTooltip:SetText("|T"..C_AddOns.GetAddOnMetadata("ABF", "IconTexture")..":16|t"..abfMainColor:WrapTextInColorCode(C_AddOns.GetAddOnMetadata("ABF", "Title")).."|nChoose the color for the animation")
end)
-- leave --
abfOptions4aBox1PopOut4:SetScript("OnLeave", abfLeavingMenus)
-- drop down --
abfClickPopOut(abfOptions4aBox1PopOut4, abfOptions4aBox1PopOut4Choice0)
-- naming at Options10 --
-- sort --
for i = 1, 3, 1 do
	_G["abfOptions4aBox1PopOut4Choice"..i]:SetParent(abfOptions4aBox1PopOut4Choice0)
	_G["abfOptions4aBox1PopOut4Choice"..i]:SetPoint("TOP", _G["abfOptions4aBox1PopOut4Choice"..i-1], "BOTTOM", 0, 0)
end
-- click --
for i = 0, 3, 1 do
	_G["abfOptions4aBox1PopOut4Choice"..i]:HookScript("OnClick", function(self, button, down)
		if button == "LeftButton" and down == false then
			ABFactionBars["Bar4"]["Top"]["AnimationColorOptions"] = self.Text:GetText()
			abfOptions4aBox1PopOut4.Text:SetText(self.Text:GetText())
			abfOptions4aBox1PopOut4Choice0:Hide()
			if ABFactionBars["Bar4"]["Top"]["AnimationColorOptions"] == "Default Color" then
				ABFactionBars["Bar4"]["Top"]["AnimationColor"] = {r = 1, g = 1, b = 1, a = 1}
				abfSavedTopArtAnimation("Bar4", MultiBarRight)
			elseif ABFactionBars["Bar4"]["Top"]["AnimationColorOptions"] == "Class Color" then
				ABFactionBars["Bar4"]["Top"]["AnimationColor"] = CreateColor(abfClassColor:GetRGB())
				abfSavedTopArtAnimation("Bar4", MultiBarRight)
			elseif ABFactionBars["Bar4"]["Top"]["AnimationColorOptions"] == "Faction Color" then
				ABFactionBars["Bar4"]["Top"]["AnimationColor"] = CreateColor(_G["PLAYER_FACTION_COLOR_"..string.upper(abfFaction.name)]:GetRGB())
				abfSavedTopArtAnimation("Bar4", MultiBarRight)
			elseif ABFactionBars["Bar4"]["Top"]["AnimationColorOptions"] == "Custom Color" then
				abfShowColorPicker("Bar4", MultiBarRight, "Top", abfSavedTopArtAnimation, "AnimationColor")
			end
		end
	end)
end
-- Options Box 2, Top color one --
-- Box 2, Pop Out Button 1, Top color one choices --
-- enter --
abfOptions4aBox2PopOut1:SetScript("OnEnter", function(self)
	abfEnteringMenus(self)
	GameTooltip:SetText("|T"..C_AddOns.GetAddOnMetadata("ABF", "IconTexture")..":16|t"..abfMainColor:WrapTextInColorCode(C_AddOns.GetAddOnMetadata("ABF", "Title")).."|nChoose the color for the Top Art")
end)
-- leave --
abfOptions4aBox2PopOut1:SetScript("OnLeave", abfLeavingMenus)
-- drop down --
abfClickPopOut(abfOptions4aBox2PopOut1, abfOptions4aBox2PopOut1Choice0)
-- naming at Options10 --
-- sort --
for i = 1, 3, 1 do
	_G["abfOptions4aBox2PopOut1Choice"..i]:SetParent(abfOptions4aBox2PopOut1Choice0)
	_G["abfOptions4aBox2PopOut1Choice"..i]:SetPoint("TOP", _G["abfOptions4aBox2PopOut1Choice"..i-1], "BOTTOM", 0, 0)
end
-- click --
for i = 0, 3, 1 do
	_G["abfOptions4aBox2PopOut1Choice"..i]:HookScript("OnClick", function(self, button, down)
		if button == "LeftButton" and down == false then
			ABFactionBars["Bar4"]["Top"]["ArtColorOptions"] = self.Text:GetText()
			abfOptions4aBox2PopOut1.Text:SetText(self.Text:GetText())
			abfOptions4aBox2PopOut1Choice0:Hide()
			if ABFactionBars["Bar4"]["Top"]["ArtColorOptions"] == "Default Color" then
				ABFactionBars["Bar4"]["Top"]["ArtColor"] = {r = 1, g = 1, b = 1, a = 1}
				if abfOptions4aBox2Slider1:IsShown() then abfOptions4aBox2Slider1:Hide() end
				abfSavedColorTop("Bar4", MultiBarRight)
			elseif ABFactionBars["Bar4"]["Top"]["ArtColorOptions"] == "Class Color" then
				ABFactionBars["Bar4"]["Top"]["ArtColor"] = CreateColor(abfClassColor:GetRGB())
				if abfOptions4aBox2Slider1:IsShown() then abfOptions4aBox2Slider1:Hide() end
				abfSavedColorTop("Bar4", MultiBarRight)
			elseif ABFactionBars["Bar4"]["Top"]["ArtColorOptions"] == "Faction Color" then
				ABFactionBars["Bar4"]["Top"]["ArtColor"] = CreateColor(_G["PLAYER_FACTION_COLOR_"..string.upper(abfFaction.name)]:GetRGB())
				if abfOptions4aBox2Slider1:IsShown() then abfOptions4aBox2Slider1:Hide() end
				abfSavedColorTop("Bar4", MultiBarRight)
			elseif ABFactionBars["Bar4"]["Top"]["ArtColorOptions"] == "Custom Color" then
				if not abfOptions4aBox2Slider1:IsShown() then abfOptions4aBox2Slider1:Show() end
				abfShowColorPicker("Bar4", MultiBarRight, "Top", abfSavedColorTop, "ArtColor")
			end
		end
	end)
end
-- Box 2, Slider 1, Top Desaturation --
-- min max values --
abfOptions4aBox2Slider1.MinText:SetText(0)
abfOptions4aBox2Slider1.MaxText:SetText(1)
abfOptions4aBox2Slider1.Slider:SetMinMaxValues(0, 10)
-- enter --
abfOptions4aBox2Slider1.Slider:SetScript("OnEnter", function(self)
	abfEnteringMenus(self)
	GameTooltip:SetText("|T"..C_AddOns.GetAddOnMetadata("ABF", "IconTexture")..":16|t "..abfMainColor:WrapTextInColorCode(C_AddOns.GetAddOnMetadata("ABF", "Title")).."|nYou can also use your mousewheel|nor the buttons to the edge|nto change the value!") 
end)
-- leave --
abfOptions4aBox2Slider1.Slider:SetScript("OnLeave", abfLeavingMenus)
-- on mouse wheel --
abfOptions4aBox2Slider1.Slider:SetScript("OnMouseWheel", abfMouseWheelSlider)
-- On Value Changed --
abfOptions4aBox2Slider1.Slider:SetScript("OnValueChanged", function (self, value, userInput)
	abfOptions4aBox2Slider1.TopText:SetText("Desaturation of the Artwork: "..(self:GetValue()/10))
	ABFactionBars["Bar4"]["Top"]["ArtColorDesaturation"] = self:GetValue()/10
	abfSavedColorTop("Bar4", MultiBarRight)
end)
-- Options Box 3, Top color Gradient --
-- Box 3, Pop Out Button 1, Top Color Gradient One --
-- enter --
abfOptions4aBox3PopOut1:SetScript("OnEnter", function(self)
	abfEnteringMenus(self)
	GameTooltip:SetText("|T"..C_AddOns.GetAddOnMetadata("ABF", "IconTexture")..":16|t"..abfMainColor:WrapTextInColorCode(C_AddOns.GetAddOnMetadata("ABF", "Title")).."|nChoose the first grandient color for the Top Art")
end)
-- leave --
abfOptions4aBox3PopOut1:SetScript("OnLeave", abfLeavingMenus)
-- drop down --
abfClickPopOut(abfOptions4aBox3PopOut1, abfOptions4aBox3PopOut1Choice0)
-- naming at Options10 --
-- sort --
for i = 1, 3, 1 do
	_G["abfOptions4aBox3PopOut1Choice"..i]:SetParent(abfOptions4aBox3PopOut1Choice0)
	_G["abfOptions4aBox3PopOut1Choice"..i]:SetPoint("TOP", _G["abfOptions4aBox3PopOut1Choice"..i-1], "BOTTOM", 0, 0)
end
-- click --
for i = 0, 3, 1 do
	_G["abfOptions4aBox3PopOut1Choice"..i]:HookScript("OnClick", function(self, button, down)
		if button == "LeftButton" and down == false then
			ABFactionBars["Bar4"]["Top"]["ArtGradientOptions1"] = self.Text:GetText()
			abfOptions4aBox3PopOut1.Text:SetText(self.Text:GetText())
			abfOptions4aBox3PopOut1Choice0:Hide()
			if ABFactionBars["Bar4"]["Top"]["ArtGradientOptions1"] == "Default Color" then
				ABFactionBars["Bar4"]["Top"]["ArtGradientColor1"] = {r = 1, g = 1, b = 1, a = 1}
				abfSavedColorTop("Bar4", MultiBarRight)
			elseif ABFactionBars["Bar4"]["Top"]["ArtGradientOptions1"] == "Class Color" then
				ABFactionBars["Bar4"]["Top"]["ArtGradientColor1"] = CreateColor(abfClassColor:GetRGB())
				abfSavedColorTop("Bar4", MultiBarRight)
			elseif ABFactionBars["Bar4"]["Top"]["ArtGradientOptions1"] == "Faction Color" then
				ABFactionBars["Bar4"]["Top"]["ArtGradientColor1"] = CreateColor(_G["PLAYER_FACTION_COLOR_"..string.upper(abfFaction.name)]:GetRGB())
				abfSavedColorTop("Bar4", MultiBarRight)
			elseif ABFactionBars["Bar4"]["Top"]["ArtGradientOptions1"] == "Custom Color" then
				abfShowColorPicker("Bar4", MultiBarRight, "Top", abfSavedColorTop, "ArtGradientColor1")
			end
		end
	end)
end
-- Box 3, Pop Out Button 2, Top Color Gradient One --
-- enter --
abfOptions4aBox3PopOut2:SetScript("OnEnter", function(self)
	abfEnteringMenus(self)
	GameTooltip:SetText("|T"..C_AddOns.GetAddOnMetadata("ABF", "IconTexture")..":16|t"..abfMainColor:WrapTextInColorCode(C_AddOns.GetAddOnMetadata("ABF", "Title")).."|nChoose the second grandient color for the Top Art")
end)
-- leave --
abfOptions4aBox3PopOut2:SetScript("OnLeave", abfLeavingMenus)
-- drop down --
abfClickPopOut(abfOptions4aBox3PopOut2, abfOptions4aBox3PopOut2Choice0)
-- naming at Options10 --
-- sort --
for i = 1, 3, 1 do
	_G["abfOptions4aBox3PopOut2Choice"..i]:SetParent(abfOptions4aBox3PopOut2Choice0)
	_G["abfOptions4aBox3PopOut2Choice"..i]:SetPoint("TOP", _G["abfOptions4aBox3PopOut2Choice"..i-1], "BOTTOM", 0, 0)
end
-- click --
for i = 0, 3, 1 do
	_G["abfOptions4aBox3PopOut2Choice"..i]:HookScript("OnClick", function(self, button, down)
		if button == "LeftButton" and down == false then
			ABFactionBars["Bar4"]["Top"]["ArtGradientOptions2"] = self.Text:GetText()
			abfOptions4aBox3PopOut2.Text:SetText(self.Text:GetText())
			abfOptions4aBox3PopOut2Choice0:Hide()
			if ABFactionBars["Bar4"]["Top"]["ArtGradientOptions2"] == "Default Color" then
				ABFactionBars["Bar4"]["Top"]["ArtGradientColor2"] = {r = 1, g = 1, b = 1, a = 1}
				abfSavedColorTop("Bar4", MultiBarRight)
			elseif ABFactionBars["Bar4"]["Top"]["ArtGradientOptions2"] == "Class Color" then
				ABFactionBars["Bar4"]["Top"]["ArtGradientColor2"] = CreateColor(abfClassColor:GetRGB())
				abfSavedColorTop("Bar4", MultiBarRight)
			elseif ABFactionBars["Bar4"]["Top"]["ArtGradientOptions2"] == "Faction Color" then
				ABFactionBars["Bar4"]["Top"]["ArtGradientColor2"] = CreateColor(_G["PLAYER_FACTION_COLOR_"..string.upper(abfFaction.name)]:GetRGB())
				abfSavedColorTop("Bar4", MultiBarRight)
			elseif ABFactionBars["Bar4"]["Top"]["ArtGradientOptions2"] == "Custom Color" then
				abfShowColorPicker("Bar4", MultiBarRight, "Top", abfSavedColorTop, "ArtGradientColor2")
			end
		end
	end)
end
-- Box 3, Pop Out Button 3, Top Color Gradient Orientation --
-- enter --
abfOptions4aBox3PopOut3:SetScript("OnEnter", function(self)
	abfEnteringMenus(self)
	GameTooltip:SetText("|T"..C_AddOns.GetAddOnMetadata("ABF", "IconTexture")..":16|t"..abfMainColor:WrapTextInColorCode(C_AddOns.GetAddOnMetadata("ABF", "Title")).."|nChoose the orientation|nof the colors for the Top Art")
end)
-- leave --
abfOptions4aBox3PopOut3:SetScript("OnLeave", abfLeavingMenus)
-- drop down --
abfClickPopOut(abfOptions4aBox3PopOut3, abfOptions4aBox3PopOut3Choice0)
-- naming at Options10 --
-- sort --
for i = 1, 1, 1 do
	_G["abfOptions4aBox3PopOut3Choice"..i]:SetParent(abfOptions4aBox3PopOut3Choice0)
	_G["abfOptions4aBox3PopOut3Choice"..i]:SetPoint("TOP", _G["abfOptions4aBox3PopOut3Choice"..i-1], "BOTTOM", 0, 0)
end
-- click --
for i = 0, 1, 1 do
	_G["abfOptions4aBox3PopOut3Choice"..i]:HookScript("OnClick", function(self, button, down)
		if button == "LeftButton" and down == false then
			ABFactionBars["Bar4"]["Top"]["ArtGradientOrientation"] = self.Text:GetText()
			abfOptions4aBox3PopOut3.Text:SetText(self.Text:GetText())
			abfOptions4aBox3PopOut3Choice0:Hide()
			abfSavedColorTop("Bar4", MultiBarRight)
		end
	end)
end
-- Options Box 4, Bottom Art --
-- Box 4, Pop Out Button 1, Bottom Art choice --
-- enter --
abfOptions4aBox4PopOut1:SetScript("OnEnter", function(self)
	abfEnteringMenus(self)
	GameTooltip:SetText("|T"..C_AddOns.GetAddOnMetadata("ABF", "IconTexture")..":16|t"..abfMainColor:WrapTextInColorCode(C_AddOns.GetAddOnMetadata("ABF", "Title")).."|nChoose the Bottom Art for|nthe Action Bar 4")
end)
-- leave --
abfOptions4aBox4PopOut1:SetScript("OnLeave", abfLeavingMenus)
-- drop down --
abfClickPopOut(abfOptions4aBox4PopOut1, abfOptions4aBox4PopOut1Choice0)
-- naming at Options10 --
-- sort --
for i = 1, 3, 1 do
	_G["abfOptions4aBox4PopOut1Choice"..i]:SetParent(abfOptions4aBox4PopOut1Choice0)
	_G["abfOptions4aBox4PopOut1Choice"..i]:SetPoint("TOP", _G["abfOptions4aBox4PopOut1Choice"..i-1], "BOTTOM", 0, 0)
end
-- click --
for i = 0, 3, 1 do
	_G["abfOptions4aBox4PopOut1Choice"..i]:HookScript("OnClick", function(self, button, down)
		if button == "LeftButton" and down == false then
			ABFactionBars["Bar4"]["Bottom"]["Art"] = self.Text:GetText()
			abfOptions4aBox4PopOut1.Text:SetText(self.Text:GetText())
			abfOptions4aBox4PopOut1Choice0:Hide()
			if ABFactionBars["Bar4"]["Bottom"]["Art"] == "SoftCloud" then
				if not abfOptions4aBox4PopOut3:IsShown() then abfOptions4aBox4PopOut3:Show() end
				if not abfOptions4aBox4PopOut4:IsShown() then abfOptions4aBox4PopOut4:Show() end
			else
				if abfOptions4aBox4PopOut3:IsShown() then abfOptions4aBox4PopOut3:Hide() end
				if abfOptions4aBox4PopOut4:IsShown() then abfOptions4aBox4PopOut4:Hide() end
			end
			abfSavedArtBottom("Bar4", MultiBarRight)
		end
	end)
end
-- Box 4, Pop Out Button 2, Bottom Art Color Choice --
-- enter --
abfOptions4aBox4PopOut2:SetScript("OnEnter", function(self)
	abfEnteringMenus(self)
	GameTooltip:SetText("|T"..C_AddOns.GetAddOnMetadata("ABF", "IconTexture")..":16|t"..abfMainColor:WrapTextInColorCode(C_AddOns.GetAddOnMetadata("ABF", "Title")).."|nChoose the mode color for|nthe Bottom Art! (one color or gradient color)") 
end)
-- leave --
abfOptions4aBox4PopOut2:SetScript("OnLeave", abfLeavingMenus)
-- drop down --
abfClickPopOut(abfOptions4aBox4PopOut2, abfOptions4aBox4PopOut2Choice0)
-- naming at Options10 --
-- sort --
for i = 1, 1, 1 do
	_G["abfOptions4aBox4PopOut2Choice"..i]:SetParent(abfOptions4aBox4PopOut2Choice0)
	_G["abfOptions4aBox4PopOut2Choice"..i]:SetPoint("TOP", _G["abfOptions4aBox4PopOut2Choice"..i-1], "BOTTOM", 0, 0)
end
-- click --
for i = 0, 1, 1 do
	_G["abfOptions4aBox4PopOut2Choice"..i]:HookScript("OnClick", function(self, button, down)
		if button == "LeftButton" and down == false then
			ABFactionBars["Bar4"]["Bottom"]["ArtColorChoice"] = self.Text:GetText()
			abfOptions4aBox4PopOut2.Text:SetText(self.Text:GetText())
			abfOptions4aBox4PopOut2Choice0:Hide()
			abfSavedColorBottom("Bar4", MultiBarRight)
			if ABFactionBars["Bar4"]["Bottom"]["ArtColorChoice"] == "One Color" then
				if not abfOptions4aBox5:IsShown() then abfOptions4aBox5:Show() end
				if abfOptions4aBox6:IsShown() then abfOptions4aBox6:Hide() end
			elseif ABFactionBars["Bar4"]["Bottom"]["ArtColorChoice"] == "Gradient Color" then
				if abfOptions4aBox5:IsShown() then abfOptions4aBox5:Hide() end
				if not abfOptions4aBox6:IsShown() then abfOptions4aBox6:Show() end
			end
		end
	end)
end
-- Box 4, Pop Out Button 3, Bottom Art Animation --
-- enter --
abfOptions4aBox4PopOut3:SetScript("OnEnter", function(self)
	abfEnteringMenus(self)
	GameTooltip:SetText("|T"..C_AddOns.GetAddOnMetadata("ABF", "IconTexture")..":16|t"..abfMainColor:WrapTextInColorCode(C_AddOns.GetAddOnMetadata("ABF", "Title")).."|nWhould you like the animation|nfor the Bottom Art to be shown?")
end)
-- leave --
abfOptions4aBox4PopOut3:SetScript("OnLeave", abfLeavingMenus)
-- drop down --
abfClickPopOut(abfOptions4aBox4PopOut3, abfOptions4aBox4PopOut3Choice0)
-- naming at Options10 --
-- sort --
for i = 1, 1, 1 do
	_G["abfOptions4aBox4PopOut3Choice"..i]:SetParent(abfOptions4aBox4PopOut3Choice0)
	_G["abfOptions4aBox4PopOut3Choice"..i]:SetPoint("TOP", _G["abfOptions4aBox4PopOut3Choice"..i-1], "BOTTOM", 0, 0)
end
-- click --
for i = 0, 1, 1 do
	_G["abfOptions4aBox4PopOut3Choice"..i]:HookScript("OnClick", function(self, button, down)
		if button == "LeftButton" and down == false then
			abfOptions4aBox4PopOut3.Text:SetText(self.Text:GetText())
			abfOptions4aBox4PopOut3Choice0:Hide()
			if self.Text:GetText() == "Hide" then
				ABFactionBars["Bar4"]["Bottom"]["Animation"] = false
			elseif self.Text:GetText() == "Show" then
				ABFactionBars["Bar4"]["Bottom"]["Animation"] = true
			end
			--abfSavedAnimationBottom("Bar4", MultiBarRight)
		end
	end)
end
-- Box 4, Pop Out Button 4, Bottom Art Animation Color --
-- enter --
abfOptions4aBox4PopOut4:SetScript("OnEnter", function(self)
	abfEnteringMenus(self)
	GameTooltip:SetText("|T"..C_AddOns.GetAddOnMetadata("ABF", "IconTexture")..":16|t"..abfMainColor:WrapTextInColorCode(C_AddOns.GetAddOnMetadata("ABF", "Title")).."|nChoose the color for the animation")
end)
-- leave --
abfOptions4aBox4PopOut4:SetScript("OnLeave", abfLeavingMenus)
-- drop down --
abfClickPopOut(abfOptions4aBox4PopOut4, abfOptions4aBox4PopOut4Choice0)
-- naming at Options10 --
-- sort --
for i = 1, 3, 1 do
	_G["abfOptions4aBox4PopOut4Choice"..i]:SetParent(abfOptions4aBox4PopOut4Choice0)
	_G["abfOptions4aBox4PopOut4Choice"..i]:SetPoint("TOP", _G["abfOptions4aBox4PopOut4Choice"..i-1], "BOTTOM", 0, 0)
end
-- click --
for i = 0, 3, 1 do
	_G["abfOptions4aBox4PopOut4Choice"..i]:HookScript("OnClick", function(self, button, down)
		if button == "LeftButton" and down == false then
			ABFactionBars["Bar4"]["Bottom"]["AnimationColorOptions"] = self.Text:GetText()
			abfOptions4aBox4PopOut4.Text:SetText(self.Text:GetText())
			abfOptions4aBox4PopOut4Choice0:Hide()
			if ABFactionBars["Bar4"]["Bottom"]["AnimationColorOptions"] == "Default Color" then
				ABFactionBars["Bar4"]["Bottom"]["AnimationColor"] = {r = 1, g = 1, b = 1, a = 1}
				--abfSavedAnimationBottomColor("Bar4", MultiBarRight)
			elseif ABFactionBars["Bar4"]["Bottom"]["AnimationColorOptions"] == "Class Color" then
				ABFactionBars["Bar4"]["Bottom"]["AnimationColor"] = CreateColor(abfClassColor:GetRGB())
				--abfSavedAnimationBottomColor("Bar4", MultiBarRight)
			elseif ABFactionBars["Bar4"]["Bottom"]["AnimationColorOptions"] == "Faction Color" then
				ABFactionBars["Bar4"]["Bottom"]["AnimationColor"] = CreateColor(_G["PLAYER_FACTION_COLOR_"..string.upper(abfFaction.name)]:GetRGB())
				--abfSavedAnimationBottomColor("Bar4", MultiBarRight)
			elseif ABFactionBars["Bar4"]["Bottom"]["AnimationColorOptions"] == "Custom Color" then
				--abfShowColorPicker("Bar4", MultiBarRight, "Bottom", abfSavedAnimationBottomColor, "AnimationColor")
			end
		end
	end)
end
-- Options Box 5, Bottom Color One --
-- Box 5, Pop Out Button 1, Bottom Color One Choices --
-- enter --
abfOptions4aBox5PopOut1:SetScript("OnEnter", function(self)
	abfEnteringMenus(self)
	GameTooltip:SetText("|T"..C_AddOns.GetAddOnMetadata("ABF", "IconTexture")..":16|t"..abfMainColor:WrapTextInColorCode(C_AddOns.GetAddOnMetadata("ABF", "Title")).."|nChoose the color for the Bottom Art")
end)
-- leave --
abfOptions4aBox5PopOut1:SetScript("OnLeave", abfLeavingMenus)
-- drop down --
abfClickPopOut(abfOptions4aBox5PopOut1, abfOptions4aBox5PopOut1Choice0)
-- naming at Options10 --
-- sort --
for i = 1, 3, 1 do
	_G["abfOptions4aBox5PopOut1Choice"..i]:SetParent(abfOptions4aBox5PopOut1Choice0)
	_G["abfOptions4aBox5PopOut1Choice"..i]:SetPoint("TOP", _G["abfOptions4aBox5PopOut1Choice"..i-1], "BOTTOM", 0, 0)
end
-- click --
for i = 0, 3, 1 do
	_G["abfOptions4aBox5PopOut1Choice"..i]:HookScript("OnClick", function(self, button, down)
		if button == "LeftButton" and down == false then
			ABFactionBars["Bar4"]["Bottom"]["ArtColorOptions"] = self.Text:GetText()
			abfOptions4aBox5PopOut1.Text:SetText(self.Text:GetText())
			abfOptions4aBox5PopOut1Choice0:Hide()
			if ABFactionBars["Bar4"]["Bottom"]["ArtColorOptions"] == "Default Color" then
				ABFactionBars["Bar4"]["Bottom"]["ArtColor"] = {r = 1, g = 1, b = 1, a = 1}
				if abfOptions4aBox5Slider1:IsShown() then abfOptions4aBox5Slider1:Hide() end
				abfSavedColorBottom("Bar4", MultiBarRight)
			elseif ABFactionBars["Bar4"]["Bottom"]["ArtColorOptions"] == "Class Color" then
				ABFactionBars["Bar4"]["Bottom"]["ArtColor"] = CreateColor(abfClassColor:GetRGB())
				if abfOptions4aBox5Slider1:IsShown() then abfOptions4aBox5Slider1:Hide() end
				abfSavedColorBottom("Bar4", MultiBarRight)
			elseif ABFactionBars["Bar4"]["Bottom"]["ArtColorOptions"] == "Faction Color" then
				ABFactionBars["Bar4"]["Bottom"]["ArtColor"] = CreateColor(_G["PLAYER_FACTION_COLOR_"..string.upper(abfFaction.name)]:GetRGB())
				if abfOptions4aBox5Slider1:IsShown() then abfOptions4aBox5Slider1:Hide() end
				abfSavedColorBottom("Bar4", MultiBarRight)
			elseif ABFactionBars["Bar4"]["Bottom"]["ArtColorOptions"] == "Custom Color" then
				if not abfOptions4aBox5Slider1:IsShown() then abfOptions4aBox5Slider1:Show() end
				abfShowColorPicker("Bar4", MultiBarRight, "Bottom", abfSavedColorBottom, "ArtColor")
			end
		end
	end)
end
-- Box 5, Slider 1, Bottom Desaturation --
-- min max values --
abfOptions4aBox5Slider1.MinText:SetText(0)
abfOptions4aBox5Slider1.MaxText:SetText(1)
abfOptions4aBox5Slider1.Slider:SetMinMaxValues(0, 10)
-- enter --
abfOptions4aBox5Slider1.Slider:SetScript("OnEnter", function(self)
	abfEnteringMenus(self)
	GameTooltip:SetText("|T"..C_AddOns.GetAddOnMetadata("ABF", "IconTexture")..":16|t "..abfMainColor:WrapTextInColorCode(C_AddOns.GetAddOnMetadata("ABF", "Title")).."|nYou can also use your mousewheel|nor the buttons to the edge|nto change the value!") 
end)
-- leave --
abfOptions4aBox5Slider1.Slider:SetScript("OnLeave", abfLeavingMenus)
-- on mouse wheel --
abfOptions4aBox5Slider1.Slider:SetScript("OnMouseWheel", abfMouseWheelSlider)
-- On Value Changed --
abfOptions4aBox5Slider1.Slider:SetScript("OnValueChanged", function (self, value, userInput)
	abfOptions4aBox5Slider1.TopText:SetText("Desaturation of the Artwork: "..(self:GetValue()/10))
	ABFactionBars["Bar4"]["Bottom"]["ArtColorDesaturation"] = self:GetValue()/10
	abfSavedColorBottom("Bar4", MultiBarRight)
end)
-- Options Box 6, Bottom Color Gradient --
-- Box 6, Pop Out Button 1, Bottom Color Gradient One --
-- enter --
abfOptions4aBox6PopOut1:SetScript("OnEnter", function(self)
	abfEnteringMenus(self)
	GameTooltip:SetText("|T"..C_AddOns.GetAddOnMetadata("ABF", "IconTexture")..":16|t"..abfMainColor:WrapTextInColorCode(C_AddOns.GetAddOnMetadata("ABF", "Title")).."|nChoose the first grandient color for the Bottom Art")
end)
-- leave --
abfOptions4aBox6PopOut1:SetScript("OnLeave", abfLeavingMenus)
-- drop down --
abfClickPopOut(abfOptions4aBox6PopOut1, abfOptions4aBox6PopOut1Choice0)
-- naming at Options10 --
-- sort --
for i = 1, 3, 1 do
	_G["abfOptions4aBox6PopOut1Choice"..i]:SetParent(abfOptions4aBox6PopOut1Choice0)
	_G["abfOptions4aBox6PopOut1Choice"..i]:SetPoint("TOP", _G["abfOptions4aBox6PopOut1Choice"..i-1], "BOTTOM", 0, 0)
end
-- click --
for i = 0, 3, 1 do
	_G["abfOptions4aBox6PopOut1Choice"..i]:HookScript("OnClick", function(self, button, down)
		if button == "LeftButton" and down == false then
			ABFactionBars["Bar4"]["Bottom"]["ArtGradientOptions1"] = self.Text:GetText()
			abfOptions4aBox6PopOut1.Text:SetText(self.Text:GetText())
			abfOptions4aBox6PopOut1Choice0:Hide()
			if ABFactionBars["Bar4"]["Bottom"]["ArtGradientOptions1"] == "Default Color" then
				ABFactionBars["Bar4"]["Bottom"]["ArtGradientColor1"] = {r = 1, g = 1, b = 1, a = 1}
				abfSavedColorBottom("Bar4", MultiBarRight)
			elseif ABFactionBars["Bar4"]["Bottom"]["ArtGradientOptions1"] == "Class Color" then
				ABFactionBars["Bar4"]["Bottom"]["ArtGradientColor1"] = CreateColor(abfClassColor:GetRGB())
				abfSavedColorBottom("Bar4", MultiBarRight)
			elseif ABFactionBars["Bar4"]["Bottom"]["ArtGradientOptions1"] == "Faction Color" then
				ABFactionBars["Bar4"]["Bottom"]["ArtGradientColor1"] = CreateColor(_G["PLAYER_FACTION_COLOR_"..string.upper(abfFaction.name)]:GetRGB())
				abfSavedColorBottom("Bar4", MultiBarRight)
			elseif ABFactionBars["Bar4"]["Bottom"]["ArtGradientOptions1"] == "Custom Color" then
				abfShowColorPicker("Bar4", MultiBarRight, "Bottom", abfSavedColorBottom, "ArtGradientColor1")
			end
		end
	end)
end
-- Box 6, Pop Out Button 2, Bottom Color Gradient Two --
-- enter --
abfOptions4aBox6PopOut2:SetScript("OnEnter", function(self)
	abfEnteringMenus(self)
	GameTooltip:SetText("|T"..C_AddOns.GetAddOnMetadata("ABF", "IconTexture")..":16|t"..abfMainColor:WrapTextInColorCode(C_AddOns.GetAddOnMetadata("ABF", "Title")).."|nChoose the second grandient color for the Bottom Art")
end)
-- leave --
abfOptions4aBox6PopOut2:SetScript("OnLeave", abfLeavingMenus)
-- drop down --
abfClickPopOut(abfOptions4aBox6PopOut2, abfOptions4aBox6PopOut2Choice0)
-- naming at Options10 --
-- sort --
for i = 1, 3, 1 do
	_G["abfOptions4aBox6PopOut2Choice"..i]:SetParent(abfOptions4aBox6PopOut2Choice0)
	_G["abfOptions4aBox6PopOut2Choice"..i]:SetPoint("TOP", _G["abfOptions4aBox6PopOut2Choice"..i-1], "BOTTOM", 0, 0)
end
-- click --
for i = 0, 3, 1 do
	_G["abfOptions4aBox6PopOut2Choice"..i]:HookScript("OnClick", function(self, button, down)
		if button == "LeftButton" and down == false then
			ABFactionBars["Bar4"]["Bottom"]["ArtGradientOptions2"] = self.Text:GetText()
			abfOptions4aBox6PopOut2.Text:SetText(self.Text:GetText())
			abfOptions4aBox6PopOut2Choice0:Hide()
			if ABFactionBars["Bar4"]["Bottom"]["ArtGradientOptions2"] == "Default Color" then
				ABFactionBars["Bar4"]["Bottom"]["ArtGradientColor2"] = {r = 1, g = 1, b = 1, a = 1}
				abfSavedColorBottom("Bar4", MultiBarRight)
			elseif ABFactionBars["Bar4"]["Bottom"]["ArtGradientOptions2"] == "Class Color" then
				ABFactionBars["Bar4"]["Bottom"]["ArtGradientColor2"] = CreateColor(abfClassColor:GetRGB())
				abfSavedColorBottom("Bar4", MultiBarRight)
			elseif ABFactionBars["Bar4"]["Bottom"]["ArtGradientOptions2"] == "Faction Color" then
				ABFactionBars["Bar4"]["Bottom"]["ArtGradientColor2"] = CreateColor(_G["PLAYER_FACTION_COLOR_"..string.upper(abfFaction.name)]:GetRGB())
				abfSavedColorBottom("Bar4", MultiBarRight)
			elseif ABFactionBars["Bar4"]["Bottom"]["ArtGradientOptions2"] == "Custom Color" then
				abfShowColorPicker("Bar4", MultiBarRight, "Bottom", abfSavedColorBottom, "ArtGradientColor2")
			end
		end
	end)
end
-- Box 6, Pop Out Button 3, Bottom Color Gradient Orientation --
-- enter --
abfOptions4aBox6PopOut3:SetScript("OnEnter", function(self)
	abfEnteringMenus(self)
	GameTooltip:SetText("|T"..C_AddOns.GetAddOnMetadata("ABF", "IconTexture")..":16|t"..abfMainColor:WrapTextInColorCode(C_AddOns.GetAddOnMetadata("ABF", "Title")).."|nChoose the orientation|nof the colors for the Bottom Art")
end)
-- leave --
abfOptions4aBox6PopOut3:SetScript("OnLeave", abfLeavingMenus)
-- drop down --
abfClickPopOut(abfOptions4aBox6PopOut3, abfOptions4aBox6PopOut3Choice0)
-- naming at Options10 --
-- sort --
for i = 1, 1, 1 do
	_G["abfOptions4aBox6PopOut3Choice"..i]:SetParent(abfOptions4aBox6PopOut3Choice0)
	_G["abfOptions4aBox6PopOut3Choice"..i]:SetPoint("TOP", _G["abfOptions4aBox6PopOut3Choice"..i-1], "BOTTOM", 0, 0)
end
-- click --
for i = 0, 1, 1 do
	_G["abfOptions4aBox6PopOut3Choice"..i]:HookScript("OnClick", function(self, button, down)
		if button == "LeftButton" and down == false then
			ABFactionBars["Bar4"]["Bottom"]["ArtGradientOrientation"] = self.Text:GetText()
			abfOptions4aBox6PopOut3.Text:SetText(self.Text:GetText())
			abfOptions4aBox6PopOut3Choice0:Hide()
			abfSavedColorBottom("Bar4", MultiBarRight)
		end
	end)
end
-- Options Box 7, Normal Texture Color --
-- Box 7, Pop Out Button 1, Normal Texture Color Choice --
-- enter --
abfOptions4aBox7PopOut1:SetScript("OnEnter", function(self)
	abfEnteringMenus(self)
	GameTooltip:SetText("|T"..C_AddOns.GetAddOnMetadata("ABF", "IconTexture")..":16|t"..abfMainColor:WrapTextInColorCode(C_AddOns.GetAddOnMetadata("ABF", "Title")).."|nChoose the mode color for|nthe Buttons Border! (one color or gradient color)") 
end)
-- leave --
abfOptions4aBox7PopOut1:SetScript("OnLeave", abfLeavingMenus)
-- drop down --
abfClickPopOut(abfOptions4aBox7PopOut1, abfOptions4aBox7PopOut1Choice0)
-- naming at Options10 --
-- sort --
for i = 1, 1, 1 do
	_G["abfOptions4aBox7PopOut1Choice"..i]:SetParent(abfOptions4aBox7PopOut1Choice0)
	_G["abfOptions4aBox7PopOut1Choice"..i]:SetPoint("TOP", _G["abfOptions4aBox7PopOut1Choice"..i-1], "BOTTOM", 0, 0)
end
-- click --
for i = 0, 1, 1 do
	_G["abfOptions4aBox7PopOut1Choice"..i]:HookScript("OnClick", function(self, button, down)
		if button == "LeftButton" and down == false then
			ABFactionBars["Bar4"]["NormalTextureColorMode"] = self.Text:GetText()
			abfOptions4aBox7PopOut1.Text:SetText(self.Text:GetText())
			abfOptions4aBox7PopOut1Choice0:Hide()
			abfSavedColorNormalTexture("Bar4", MultiBarRight)
			if ABFactionBars["Bar4"]["NormalTextureColorMode"] == "One Color" then
				if not abfOptions4aBox8:IsShown() then abfOptions4aBox8:Show() end
				if abfOptions4aBox9:IsShown() then abfOptions4aBox9:Hide() end
			elseif ABFactionBars["Bar4"]["NormalTextureColorMode"] == "Gradient Color" then
				if abfOptions4aBox8:IsShown() then abfOptions4aBox8:Hide() end
				if not abfOptions4aBox9:IsShown() then abfOptions4aBox9:Show() end
			end
		end
	end)
end
-- Options Box 8, Normal Texture Color One --
-- Box 8, Pop Out Button 1, Normal Texture Color One Choices --
-- enter --
abfOptions4aBox8PopOut1:SetScript("OnEnter", function(self)
	abfEnteringMenus(self)
	GameTooltip:SetText("|T"..C_AddOns.GetAddOnMetadata("ABF", "IconTexture")..":16|t"..abfMainColor:WrapTextInColorCode(C_AddOns.GetAddOnMetadata("ABF", "Title")).."|nChoose the color for the Buttons Borders")
end)
-- leave --
abfOptions4aBox8PopOut1:SetScript("OnLeave", abfLeavingMenus)
-- drop down --
abfClickPopOut(abfOptions4aBox8PopOut1, abfOptions4aBox8PopOut1Choice0)
-- naming at Options10 --
-- sort --
for i = 1, 3, 1 do
	_G["abfOptions4aBox8PopOut1Choice"..i]:SetParent(abfOptions4aBox8PopOut1Choice0)
	_G["abfOptions4aBox8PopOut1Choice"..i]:SetPoint("TOP", _G["abfOptions4aBox8PopOut1Choice"..i-1], "BOTTOM", 0, 0)
end
-- click --
for i = 0, 3, 1 do
	_G["abfOptions4aBox8PopOut1Choice"..i]:HookScript("OnClick", function(self, button, down)
		if button == "LeftButton" and down == false then
			ABFactionBars["Bar4"]["NormalTextureColorOptions"] = self.Text:GetText()
			abfOptions4aBox8PopOut1.Text:SetText(self.Text:GetText())
			abfOptions4aBox8PopOut1Choice0:Hide()
			if ABFactionBars["Bar4"]["NormalTextureColorOptions"] == "Default Color" then
				ABFactionBars["Bar4"]["NormalTextureColor"] = {r = 1, g = 1, b = 1, a = 1}
				abfSavedColorNormalTexture("Bar4", MultiBarRight)
			elseif ABFactionBars["Bar4"]["NormalTextureColorOptions"] == "Class Color" then
				ABFactionBars["Bar4"]["NormalTextureColor"] = CreateColor(abfClassColor:GetRGB())
				abfSavedColorNormalTexture("Bar4", MultiBarRight)
			elseif ABFactionBars["Bar4"]["NormalTextureColorOptions"] == "Faction Color" then
				ABFactionBars["Bar4"]["NormalTextureColor"] = CreateColor(_G["PLAYER_FACTION_COLOR_"..string.upper(abfFaction.name)]:GetRGB())
				abfSavedColorNormalTexture("Bar4", MultiBarRight)
			elseif ABFactionBars["Bar4"]["NormalTextureColorOptions"] == "Custom Color" then
				abfShowColorPickerCD("Bar4", MultiBarRight, "NormalTextureColor", abfSavedColorNormalTexture)
			end
		end
	end)
end
-- Options Box 9, Normal Texture Color Gradient --
-- Box 9, Pop Out Button 1, Normal Texture Color Gradient One --
-- enter --
abfOptions4aBox9PopOut1:SetScript("OnEnter", function(self)
	abfEnteringMenus(self)
	GameTooltip:SetText("|T"..C_AddOns.GetAddOnMetadata("ABF", "IconTexture")..":16|t"..abfMainColor:WrapTextInColorCode(C_AddOns.GetAddOnMetadata("ABF", "Title")).."|nChoose the first grandient color for the Buttons Borders")
end)
-- leave --
abfOptions4aBox9PopOut1:SetScript("OnLeave", abfLeavingMenus)
-- drop down --
abfClickPopOut(abfOptions4aBox9PopOut1, abfOptions4aBox9PopOut1Choice0)
-- naming at Options10 --
-- sort --
for i = 1, 3, 1 do
	_G["abfOptions4aBox9PopOut1Choice"..i]:SetParent(abfOptions4aBox9PopOut1Choice0)
	_G["abfOptions4aBox9PopOut1Choice"..i]:SetPoint("TOP", _G["abfOptions4aBox9PopOut1Choice"..i-1], "BOTTOM", 0, 0)
end
-- click --
for i = 0, 3, 1 do
	_G["abfOptions4aBox9PopOut1Choice"..i]:HookScript("OnClick", function(self, button, down)
		if button == "LeftButton" and down == false then
			ABFactionBars["Bar4"]["NormalTextureGradientOptions1"] = self.Text:GetText()
			abfOptions4aBox9PopOut1.Text:SetText(self.Text:GetText())
			abfOptions4aBox9PopOut1Choice0:Hide()
			if ABFactionBars["Bar4"]["NormalTextureGradientOptions1"] == "Default Color" then
				ABFactionBars["Bar4"]["NormalTextureGradient1"] = {r = 1, g = 1, b = 1, a = 1}
				abfSavedColorNormalTexture("Bar4", MultiBarRight)
			elseif ABFactionBars["Bar4"]["NormalTextureGradientOptions1"] == "Class Color" then
				ABFactionBars["Bar4"]["NormalTextureGradient1"] = CreateColor(abfClassColor:GetRGB())
				abfSavedColorNormalTexture("Bar4", MultiBarRight)
			elseif ABFactionBars["Bar4"]["NormalTextureGradientOptions1"] == "Faction Color" then
				ABFactionBars["Bar4"]["NormalTextureGradient1"] = CreateColor(_G["PLAYER_FACTION_COLOR_"..string.upper(abfFaction.name)]:GetRGB())
				abfSavedColorNormalTexture("Bar4", MultiBarRight)
			elseif ABFactionBars["Bar4"]["NormalTextureGradientOptions1"] == "Custom Color" then
				abfShowColorPickerCD("Bar4", MultiBarRight, "NormalTextureGradient1", abfSavedColorNormalTexture)
			end
		end
	end)
end
-- Box 9, Pop Out Button 2, Normal Texture Color Gradient two --
-- enter --
abfOptions4aBox9PopOut2:SetScript("OnEnter", function(self)
	abfEnteringMenus(self)
	GameTooltip:SetText("|T"..C_AddOns.GetAddOnMetadata("ABF", "IconTexture")..":16|t"..abfMainColor:WrapTextInColorCode(C_AddOns.GetAddOnMetadata("ABF", "Title")).."|nChoose the second grandient color for the Buttons Borders")
end)
-- leave --
abfOptions4aBox9PopOut2:SetScript("OnLeave", abfLeavingMenus)
-- drop down --
abfClickPopOut(abfOptions4aBox9PopOut2, abfOptions4aBox9PopOut2Choice0)
-- naming at Options10 --
-- sort --
for i = 1, 3, 1 do
	_G["abfOptions4aBox9PopOut2Choice"..i]:SetParent(abfOptions4aBox9PopOut2Choice0)
	_G["abfOptions4aBox9PopOut2Choice"..i]:SetPoint("TOP", _G["abfOptions4aBox9PopOut2Choice"..i-1], "BOTTOM", 0, 0)
end
-- click --
for i = 0, 3, 1 do
	_G["abfOptions4aBox9PopOut2Choice"..i]:HookScript("OnClick", function(self, button, down)
		if button == "LeftButton" and down == false then
			ABFactionBars["Bar4"]["NormalTextureGradientOptions2"] = self.Text:GetText()
			abfOptions4aBox9PopOut2.Text:SetText(self.Text:GetText())
			abfOptions4aBox9PopOut2Choice0:Hide()
			if ABFactionBars["Bar4"]["NormalTextureGradientOptions2"] == "Default Color" then
				ABFactionBars["Bar4"]["NormalTextureGradient2"] = {r = 1, g = 1, b = 1, a = 1}
				abfSavedColorNormalTexture("Bar4", MultiBarRight)
			elseif ABFactionBars["Bar4"]["NormalTextureGradientOptions2"] == "Class Color" then
				ABFactionBars["Bar4"]["NormalTextureGradient2"] = CreateColor(abfClassColor:GetRGB())
				abfSavedColorNormalTexture("Bar4", MultiBarRight)
			elseif ABFactionBars["Bar4"]["NormalTextureGradientOptions2"] == "Faction Color" then
				ABFactionBars["Bar4"]["NormalTextureGradient2"] = CreateColor(_G["PLAYER_FACTION_COLOR_"..string.upper(abfFaction.name)]:GetRGB())
				abfSavedColorNormalTexture("Bar4", MultiBarRight)
			elseif ABFactionBars["Bar4"]["NormalTextureGradientOptions2"] == "Custom Color" then
				abfShowColorPickerCD("Bar4", MultiBarRight, "NormalTextureGradient2", abfSavedColorNormalTexture)
			end
		end
	end)
end
-- Box 9, Pop Out Button 3, Normal Texture Color Gradient Orientation --
-- enter --
abfOptions4aBox9PopOut3:SetScript("OnEnter", function(self)
	abfEnteringMenus(self)
	GameTooltip:SetText("|T"..C_AddOns.GetAddOnMetadata("ABF", "IconTexture")..":16|t"..abfMainColor:WrapTextInColorCode(C_AddOns.GetAddOnMetadata("ABF", "Title")).."|nChoose the orientation|nof the colors for the Buttons Borders")
end)
-- leave --
abfOptions4aBox9PopOut3:SetScript("OnLeave", abfLeavingMenus)
-- drop down --
abfClickPopOut(abfOptions4aBox9PopOut3, abfOptions4aBox9PopOut3Choice0)
-- naming at Options10 --
-- sort --
for i = 1, 1, 1 do
	_G["abfOptions4aBox9PopOut3Choice"..i]:SetParent(abfOptions4aBox9PopOut3Choice0)
	_G["abfOptions4aBox9PopOut3Choice"..i]:SetPoint("TOP", _G["abfOptions4aBox9PopOut3Choice"..i-1], "BOTTOM", 0, 0)
end
-- click --
for i = 0, 1, 1 do
	_G["abfOptions4aBox9PopOut3Choice"..i]:HookScript("OnClick", function(self, button, down)
		if button == "LeftButton" and down == false then
			ABFactionBars["Bar4"]["NormalTextureGradientOrientation"] = self.Text:GetText()
			abfOptions4aBox9PopOut3.Text:SetText(self.Text:GetText())
			abfOptions4aBox9PopOut3Choice0:Hide()
			abfSavedColorNormalTexture("Bar4", MultiBarRight)
		end
	end)
end
-- Showing the panel --
abfOptions4a:HookScript("OnShow", function(self)
	CheckSavedVariables()
-- panels --
	if abfOptions4:IsShown() then abfOptions4:Hide() end
-- tabs --
	abfOptions00Tab4.Text:SetTextColor(abfHighColor:GetRGB())
	for i = 1, 3, 1 do
		_G["abfOptions00Tab"..i].Text:SetTextColor(abfMainColor:GetRGB())
	end
	for i = 5, 10, 1 do
		_G["abfOptions00Tab"..i].Text:SetTextColor(abfMainColor:GetRGB())
	end
-- buttons --
	abfOptions00PageButton1d.Text:SetTextColor(abfMainColor:GetRGB())
	abfOptions00PageButton2d.Text:SetTextColor(abfHighColor:GetRGB())
end)
