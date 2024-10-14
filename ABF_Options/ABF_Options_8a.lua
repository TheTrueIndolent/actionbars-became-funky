-- takeing care the rest boxes --
abfOptions8aBox2:SetPoint("TOPLEFT", abfOptions8aBox1, "BOTTOMLEFT", 0, 6)
abfOptions8aBox3:SetPoint("TOPLEFT", abfOptions8aBox1, "BOTTOMLEFT", 0, 6)
abfOptions8aBox01:SetPoint("TOPLEFT", abfOptions8aBox3, "BOTTOMLEFT", 0, 0)
abfOptions8aBox5:SetPoint("TOPRIGHT", abfOptions8aBox4, "BOTTOMRIGHT", 0, 6)
abfOptions8aBox6:SetPoint("TOPRIGHT", abfOptions8aBox4, "BOTTOMRIGHT", 0, 6)
abfOptions8aBox02:SetPoint("TOPRIGHT", abfOptions8aBox6, "BOTTOMRIGHT", 0, 0)
abfOptions8aBox7:SetPoint("TOPLEFT", abfOptions8aBox01, "BOTTOMLEFT", 0, 0)
abfOptions8aBox8:SetPoint("TOPLEFT", abfOptions8aBox7, "BOTTOMLEFT", 0, 6)
abfOptions8aBox9:SetPoint("TOPLEFT", abfOptions8aBox7, "BOTTOMLEFT", 0, 6)
abfOptions8aBox1.BorderBottom:Hide()
abfOptions8aBox2.BorderTop:Hide()
abfOptions8aBox3.BorderTop:Hide()
abfOptions8aBox4.BorderBottom:Hide()
abfOptions8aBox5.BorderTop:Hide()
abfOptions8aBox6.BorderTop:Hide()
abfOptions8aBox7.BorderBottom:Hide()
abfOptions8aBox8.BorderTop:Hide()
abfOptions8aBox9.BorderTop:Hide()
-- naming tabs --
abfOptions8aBox1.TitleTxt:SetText("Top Art, Color Mode & Animation")
abfOptions8aBox2.TitleTxt:SetText("Top Art One Color")
abfOptions8aBox3.TitleTxt:SetText("Top Art Gradient Color")
abfOptions8aBox4.TitleTxt:SetText("Bottom Art, Color Mode & Animation")
abfOptions8aBox5.TitleTxt:SetText("Bottom Art One Color")
abfOptions8aBox6.TitleTxt:SetText("Bottom Art Gradient Color")
abfOptions8aBox7.TitleTxt:SetText("Buttons Border Color Mode")
abfOptions8aBox8.TitleTxt:SetText("Buttons Border One Color")
abfOptions8aBox9.TitleTxt:SetText("Buttons Border Gradient Color")
-- Checking the Saved Variables --
local function CheckSavedVariables()
-- Box 1, Pop Out Button 1 --
	abfOptions8aBox1PopOut1.Text:SetText(ABFactionBars["Bar8"]["Top"]["Art"])
	if ABFactionBars["Bar8"]["Top"]["Art"] == "JailersTower" then
		if not abfOptions8aBox1PopOut3:IsShown() then abfOptions8aBox1PopOut3:Show() end
		if not abfOptions8aBox1PopOut4:IsShown() then abfOptions8aBox1PopOut4:Show() end
	else
		if abfOptions8aBox1PopOut3:IsShown() then abfOptions8aBox1PopOut3:Hide() end
		if abfOptions8aBox1PopOut4:IsShown() then abfOptions8aBox1PopOut4:Hide() end
	end
-- Box 1, Pop Out Button 2 --
	abfOptions8aBox1PopOut2.Text:SetText(ABFactionBars["Bar8"]["Top"]["ArtColorChoice"])
	if ABFactionBars["Bar8"]["Top"]["ArtColorChoice"] == "One Color" then
		if not abfOptions8aBox2:IsShown() then abfOptions8aBox2:Show() end
		if abfOptions8aBox3:IsShown() then abfOptions8aBox3:Hide() end
	elseif ABFactionBars["Bar8"]["Top"]["ArtColorChoice"] == "Gradient Color" then
		if abfOptions8aBox2:IsShown() then abfOptions8aBox2:Hide() end
		if not abfOptions8aBox3:IsShown() then abfOptions8aBox3:Show() end
	end
-- Box 1, Pop Out Button 3--
	if ABFactionBars["Bar8"]["Top"]["Animation"] then
		abfOptions8aBox1PopOut3.Text:SetText("Show")
	elseif not ABFactionBars["Bar8"]["Top"]["Animation"] then
		abfOptions8aBox1PopOut3.Text:SetText("Hide")
	end
-- Box 1, Pop Out Button 4 --
	abfOptions8aBox1PopOut4.Text:SetText(ABFactionBars["Bar8"]["Top"]["AnimationColorOptions"])
-- Box 2, Pop Out Button 1
	abfOptions8aBox2PopOut1.Text:SetText(ABFactionBars["Bar8"]["Top"]["ArtColorOptions"])
	if ABFactionBars["Bar8"]["Top"]["ArtColorOptions"] == "Custom Color" then
		if not abfOptions8aBox2Slider1:IsShown() then abfOptions8aBox2Slider1:Show() end
	else
		if abfOptions8aBox2Slider1:IsShown() then abfOptions8aBox2Slider1:Hide() end
	end
-- Box 2, Slider 1 --
	abfOptions8aBox2Slider1.Slider:SetValue(ABFactionBars["Bar8"]["Top"]["ArtColorDesaturation"] * 10)
-- Box 3, Pop Out Button 1 --
	abfOptions8aBox3PopOut1.Text:SetText(ABFactionBars["Bar8"]["Top"]["ArtGradientOptions1"])
-- Box 3, Pop Out Button 2 --
	abfOptions8aBox3PopOut2.Text:SetText(ABFactionBars["Bar8"]["Top"]["ArtGradientOptions2"])
-- Box 3, Pop Out Button 3 --
	abfOptions8aBox3PopOut3.Text:SetText(ABFactionBars["Bar8"]["Top"]["ArtGradientOrientation"])
-- Box 4, Pop Out Button 1 --
	abfOptions8aBox4PopOut1.Text:SetText(ABFactionBars["Bar8"]["Bottom"]["Art"])
	if ABFactionBars["Bar8"]["Bottom"]["Art"] == "SoftCloud" then
		if not abfOptions8aBox4PopOut3:IsShown() then abfOptions8aBox4PopOut3:Show() end
		if not abfOptions8aBox4PopOut4:IsShown() then abfOptions8aBox4PopOut4:Show() end
	else
		if abfOptions8aBox4PopOut3:IsShown() then abfOptions8aBox4PopOut3:Hide() end
		if abfOptions8aBox4PopOut4:IsShown() then abfOptions8aBox4PopOut4:Hide() end
	end
-- Box 4, Pop Out Button 2 --
	abfOptions8aBox4PopOut2.Text:SetText(ABFactionBars["Bar8"]["Bottom"]["ArtColorChoice"])
	if ABFactionBars["Bar8"]["Bottom"]["ArtColorChoice"] == "One Color" then
		if not abfOptions8aBox5:IsShown() then abfOptions8aBox5:Show() end
		if abfOptions8aBox6:IsShown() then abfOptions8aBox6:Hide() end
	elseif ABFactionBars["Bar8"]["Bottom"]["ArtColorChoice"] == "Gradient Color" then
		if abfOptions8aBox5:IsShown() then abfOptions8aBox5:Hide() end
		if not abfOptions8aBox6:IsShown() then abfOptions8aBox6:Show() end
	end
-- Box 4, Pop Out Button 3 --
	if ABFactionBars["Bar8"]["Bottom"]["Animation"] then
		abfOptions8aBox4PopOut3.Text:SetText("Show")
	elseif not ABFactionBars["Bar8"]["Bottom"]["Animation"] then
		abfOptions8aBox4PopOut3.Text:SetText("Hide")
	end
-- Box 4, Pop Out Button 4 --
	abfOptions8aBox4PopOut4.Text:SetText(ABFactionBars["Bar8"]["Bottom"]["AnimationColorOptions"])
-- Box 5, Pop Out Button 1 --
	abfOptions8aBox5PopOut1:SetText(ABFactionBars["Bar8"]["Bottom"]["ArtColorOptions"])
	if ABFactionBars["Bar8"]["Bottom"]["ArtColorOptions"] == "Custom Color" then
		if not abfOptions8aBox5Slider1:IsShown() then abfOptions8aBox5Slider1:Hide() end
	else
		if abfOptions8aBox5Slider1:IsShown() then abfOptions8aBox5Slider1:Hide() end
	end
-- Box 5, Slider 1 --
	abfOptions8aBox5Slider1.Slider:SetValue(ABFactionBars["Bar8"]["Bottom"]["ArtColorDesaturation"] * 10)
-- Box 6, Pop Out Button 1 --
	abfOptions8aBox6PopOut1.Text:SetText(ABFactionBars["Bar8"]["Bottom"]["ArtGradientOptions1"])
-- Box 6, Pop Out Button 2 --
	abfOptions8aBox6PopOut2.Text:SetText(ABFactionBars["Bar8"]["Bottom"]["ArtGradientOptions2"])
-- Box 6, Pop Out Button 2 --
	abfOptions8aBox6PopOut3.Text:SetText(ABFactionBars["Bar8"]["Bottom"]["ArtGradientOrientation"])
-- Box 7, Pop Out Button 1 --
	abfOptions8aBox7PopOut1.Text:SetText(ABFactionBars["Bar8"]["NormalTextureColorMode"])
	if ABFactionBars["Bar8"]["NormalTextureColorMode"] == "One Color" then
		if not abfOptions8aBox8:IsShown() then abfOptions8aBox8:Show() end
		if abfOptions8aBox9:IsShown() then abfOptions8aBox9:Hide() end
	elseif ABFactionBars["Bar8"]["NormalTextureColorMode"] == "Gradient Color" then
		if abfOptions8aBox8:IsShown() then abfOptions8aBox8:Hide() end
		if not abfOptions8aBox9:IsShown() then abfOptions8aBox9:Show() end
	end
-- Box 8, Pop Out Button 1 --
	abfOptions8aBox8PopOut1.Text:SetText(ABFactionBars["Bar8"]["NormalTextureColorOptions"])
-- Box 9, Pop Out Button 1 --
	abfOptions8aBox9PopOut1.Text:SetText(ABFactionBars["Bar8"]["NormalTextureGradientOptions1"])
-- Box 9, Pop Out Button 2 --
	abfOptions8aBox9PopOut2.Text:SetText(ABFactionBars["Bar8"]["NormalTextureGradientOptions2"])
-- Box 9, Pop Out Button 3 --
	abfOptions8aBox9PopOut3.Text:SetText(ABFactionBars["Bar8"]["NormalTextureGradientOrientation"])
end
-- Options Box 1, Top Art --
-- Box 1, Pop Out Button 1, Top Art choice --
-- enter --
abfOptions8aBox1PopOut1:SetScript("OnEnter", function(self)
	abfEnteringMenus(self)
	GameTooltip:SetText("|T"..C_AddOns.GetAddOnMetadata("ABF", "IconTexture")..":16|t"..abfMainColor:WrapTextInColorCode(C_AddOns.GetAddOnMetadata("ABF", "Title")).."|nChoose the Top Art for|nthe Action Bar 8") 
end)
-- leave --
abfOptions8aBox1PopOut1:SetScript("OnLeave", abfLeavingMenus)
-- drop down --
abfClickPopOut(abfOptions8aBox1PopOut1, abfOptions8aBox1PopOut1Choice0)
-- sort --
for i = 1, 3, 1 do
	_G["abfOptions8aBox1PopOut1Choice"..i]:SetParent(abfOptions8aBox1PopOut1Choice0)
	_G["abfOptions8aBox1PopOut1Choice"..i]:SetPoint("TOP", _G["abfOptions8aBox1PopOut1Choice"..i-1], "BOTTOM", 0, 0)
-- on leave --
	_G["abfOptions8aBox1PopOut1Choice"..i]:HookScript("OnLeave", function(self) abfOptions8aBox1PopOut1.Example:Hide() abfOptions8aBox1PopOut1.Example1:Hide() end)
end
-- naming at Options10 --
-- clicking --
for i = 0, 3, 1 do
	_G["abfOptions8aBox1PopOut1Choice"..i]:HookScript("OnClick", function(self, button, down)
		if button == "LeftButton" and down == false then
			ABFactionBars["Bar8"]["Top"]["Art"] = self.Text:GetText()
			abfOptions8aBox1PopOut1.Text:SetText(self.Text:GetText())
			abfOptions8aBox1PopOut1Choice0:Hide()
			if ABFactionBars["Bar8"]["Top"]["Art"] == "JailersTower" then
				if not abfOptions8aBox1PopOut3:IsShown() then abfOptions8aBox1PopOut3:Show() end
				if not abfOptions8aBox1PopOut4:IsShown() then abfOptions8aBox1PopOut4:Show() end
			else
				if abfOptions8aBox1PopOut3:IsShown() then abfOptions8aBox1PopOut3:Hide() end
				if abfOptions8aBox1PopOut4:IsShown() then abfOptions8aBox1PopOut4:Hide() end
			end
			abfSavedArtTop("Bar8", MultiBar7)
		end
	end)
end
-- entering the pop out buttons at Options10 --
-- Box 1, Pop Out Button 2, Top Art color choice --
-- enter --
abfOptions8aBox1PopOut2:SetScript("OnEnter", function(self)
	abfEnteringMenus(self)
	GameTooltip:SetText("|T"..C_AddOns.GetAddOnMetadata("ABF", "IconTexture")..":16|t"..abfMainColor:WrapTextInColorCode(C_AddOns.GetAddOnMetadata("ABF", "Title")).."|nChoose the mode color for|nthe Top Art! (one color or gradient color)") 
end)
-- leave --
abfOptions8aBox1PopOut2:SetScript("OnLeave", abfLeavingMenus)
-- drop down --
abfClickPopOut(abfOptions8aBox1PopOut2, abfOptions8aBox1PopOut2Choice0)
-- naming at Options10 --
-- sort --
for i = 1, 1, 1 do
	_G["abfOptions8aBox1PopOut2Choice"..i]:SetParent(abfOptions8aBox1PopOut2Choice0)
	_G["abfOptions8aBox1PopOut2Choice"..i]:SetPoint("TOP", _G["abfOptions8aBox1PopOut2Choice"..i-1], "BOTTOM", 0, 0)
end
-- click --
for i = 0, 1, 1 do
	_G["abfOptions8aBox1PopOut2Choice"..i]:HookScript("OnClick", function(self, button, down)
		if button == "LeftButton" and down == false then
			ABFactionBars["Bar8"]["Top"]["ArtColorChoice"] = self.Text:GetText()
			abfOptions8aBox1PopOut2.Text:SetText(self.Text:GetText())
			abfOptions8aBox1PopOut2Choice0:Hide()
			abfSavedColorTop("Bar8", MultiBar7)
			if ABFactionBars["Bar8"]["Top"]["ArtColorChoice"] == "One Color" then
				if not abfOptions8aBox2:IsShown() then abfOptions8aBox2:Show() end
				if abfOptions8aBox3:IsShown() then abfOptions8aBox3:Hide() end
			elseif ABFactionBars["Bar8"]["Top"]["ArtColorChoice"] == "Gradient Color" then
				if abfOptions8aBox2:IsShown() then abfOptions8aBox2:Hide() end
				if not abfOptions8aBox3:IsShown() then abfOptions8aBox3:Show() end
			end
		end
	end)
end
-- Box 1, Pop Out Button 3, Top Art Animation --
-- enter --
abfOptions8aBox1PopOut3:SetScript("OnEnter", function(self)
	abfEnteringMenus(self)
	GameTooltip:SetText("|T"..C_AddOns.GetAddOnMetadata("ABF", "IconTexture")..":16|t"..abfMainColor:WrapTextInColorCode(C_AddOns.GetAddOnMetadata("ABF", "Title")).."|nWhould you like the animation|nfor the Top Art to be shown?")
end)
-- leave --
abfOptions8aBox1PopOut3:SetScript("OnLeave", abfLeavingMenus)
-- drop down --
abfClickPopOut(abfOptions8aBox1PopOut3, abfOptions8aBox1PopOut3Choice0)
-- naming at Options10 --
-- sort --
for i = 1, 1, 1 do
	_G["abfOptions8aBox1PopOut3Choice"..i]:SetParent(abfOptions8aBox1PopOut3Choice0)
	_G["abfOptions8aBox1PopOut3Choice"..i]:SetPoint("TOP", _G["abfOptions8aBox1PopOut3Choice"..i-1], "BOTTOM", 0, 0)
end
-- click --
for i = 0, 1, 1 do
	_G["abfOptions8aBox1PopOut3Choice"..i]:HookScript("OnClick", function(self, button, down)
		if button == "LeftButton" and down == false then
			abfOptions8aBox1PopOut3.Text:SetText(self.Text:GetText())
			abfOptions8aBox1PopOut3Choice0:Hide()
			if self.Text:GetText() == "Hide" then
				ABFactionBars["Bar8"]["Top"]["Animation"] = false
			elseif self.Text:GetText() == "Show" then
				ABFactionBars["Bar8"]["Top"]["Animation"] = true
			end
			abfSavedTopArtAnimation("Bar8", MultiBar7)
		end
	end)
end
-- Box 1, Pop Out Button 4, Bottom Art Animation Color --
-- enter --
abfOptions8aBox1PopOut4:SetScript("OnEnter", function(self)
	abfEnteringMenus(self)
	GameTooltip:SetText("|T"..C_AddOns.GetAddOnMetadata("ABF", "IconTexture")..":16|t"..abfMainColor:WrapTextInColorCode(C_AddOns.GetAddOnMetadata("ABF", "Title")).."|nChoose the color for the animation")
end)
-- leave --
abfOptions8aBox1PopOut4:SetScript("OnLeave", abfLeavingMenus)
-- drop down --
abfClickPopOut(abfOptions8aBox1PopOut4, abfOptions8aBox1PopOut4Choice0)
-- naming at Options10 --
-- sort --
for i = 1, 3, 1 do
	_G["abfOptions8aBox1PopOut4Choice"..i]:SetParent(abfOptions8aBox1PopOut4Choice0)
	_G["abfOptions8aBox1PopOut4Choice"..i]:SetPoint("TOP", _G["abfOptions8aBox1PopOut4Choice"..i-1], "BOTTOM", 0, 0)
end
-- click --
for i = 0, 3, 1 do
	_G["abfOptions8aBox1PopOut4Choice"..i]:HookScript("OnClick", function(self, button, down)
		if button == "LeftButton" and down == false then
			ABFactionBars["Bar8"]["Top"]["AnimationColorOptions"] = self.Text:GetText()
			abfOptions8aBox1PopOut4.Text:SetText(self.Text:GetText())
			abfOptions8aBox1PopOut4Choice0:Hide()
			if ABFactionBars["Bar8"]["Top"]["AnimationColorOptions"] == "Default Color" then
				ABFactionBars["Bar8"]["Top"]["AnimationColor"] = {r = 1, g = 1, b = 1, a = 1}
				abfSavedTopArtAnimation("Bar8", MultiBar7)
			elseif ABFactionBars["Bar8"]["Top"]["AnimationColorOptions"] == "Class Color" then
				ABFactionBars["Bar8"]["Top"]["AnimationColor"] = CreateColor(abfClassColor:GetRGB())
				abfSavedTopArtAnimation("Bar8", MultiBar7)
			elseif ABFactionBars["Bar8"]["Top"]["AnimationColorOptions"] == "Faction Color" then
				ABFactionBars["Bar8"]["Top"]["AnimationColor"] = CreateColor(_G["PLAYER_FACTION_COLOR_"..string.upper(abfFaction.name)]:GetRGB())
				abfSavedTopArtAnimation("Bar8", MultiBar7)
			elseif ABFactionBars["Bar8"]["Top"]["AnimationColorOptions"] == "Custom Color" then
				abfShowColorPicker("Bar8", MultiBar7, "Top", abfSavedTopArtAnimation, "AnimationColor")
			end
		end
	end)
end
-- Options Box 2, Top color one --
-- Box 2, Pop Out Button 1, Top color one choices --
-- enter --
abfOptions8aBox2PopOut1:SetScript("OnEnter", function(self)
	abfEnteringMenus(self)
	GameTooltip:SetText("|T"..C_AddOns.GetAddOnMetadata("ABF", "IconTexture")..":16|t"..abfMainColor:WrapTextInColorCode(C_AddOns.GetAddOnMetadata("ABF", "Title")).."|nChoose the color for the Top Art")
end)
-- leave --
abfOptions8aBox2PopOut1:SetScript("OnLeave", abfLeavingMenus)
-- drop down --
abfClickPopOut(abfOptions8aBox2PopOut1, abfOptions8aBox2PopOut1Choice0)
-- naming at Options10 --
-- sort --
for i = 1, 3, 1 do
	_G["abfOptions8aBox2PopOut1Choice"..i]:SetParent(abfOptions8aBox2PopOut1Choice0)
	_G["abfOptions8aBox2PopOut1Choice"..i]:SetPoint("TOP", _G["abfOptions8aBox2PopOut1Choice"..i-1], "BOTTOM", 0, 0)
end
-- click --
for i = 0, 3, 1 do
	_G["abfOptions8aBox2PopOut1Choice"..i]:HookScript("OnClick", function(self, button, down)
		if button == "LeftButton" and down == false then
			ABFactionBars["Bar8"]["Top"]["ArtColorOptions"] = self.Text:GetText()
			abfOptions8aBox2PopOut1.Text:SetText(self.Text:GetText())
			abfOptions8aBox2PopOut1Choice0:Hide()
			if ABFactionBars["Bar8"]["Top"]["ArtColorOptions"] == "Default Color" then
				ABFactionBars["Bar8"]["Top"]["ArtColor"] = {r = 1, g = 1, b = 1, a = 1}
				if abfOptions8aBox2Slider1:IsShown() then abfOptions8aBox2Slider1:Hide() end
				abfSavedColorTop("Bar8", MultiBar7)
			elseif ABFactionBars["Bar8"]["Top"]["ArtColorOptions"] == "Class Color" then
				ABFactionBars["Bar8"]["Top"]["ArtColor"] = CreateColor(abfClassColor:GetRGB())
				if abfOptions8aBox2Slider1:IsShown() then abfOptions8aBox2Slider1:Hide() end
				abfSavedColorTop("Bar8", MultiBar7)
			elseif ABFactionBars["Bar8"]["Top"]["ArtColorOptions"] == "Faction Color" then
				ABFactionBars["Bar8"]["Top"]["ArtColor"] = CreateColor(_G["PLAYER_FACTION_COLOR_"..string.upper(abfFaction.name)]:GetRGB())
				if abfOptions8aBox2Slider1:IsShown() then abfOptions8aBox2Slider1:Hide() end
				abfSavedColorTop("Bar8", MultiBar7)
			elseif ABFactionBars["Bar8"]["Top"]["ArtColorOptions"] == "Custom Color" then
				if not abfOptions8aBox2Slider1:IsShown() then abfOptions8aBox2Slider1:Show() end
				abfShowColorPicker("Bar8", MultiBar7, "Top", abfSavedColorTop, "ArtColor")
			end
		end
	end)
end
-- Box 2, Slider 1, Top Desaturation --
-- min max values --
abfOptions8aBox2Slider1.MinText:SetText(0)
abfOptions8aBox2Slider1.MaxText:SetText(1)
abfOptions8aBox2Slider1.Slider:SetMinMaxValues(0, 10)
-- enter --
abfOptions8aBox2Slider1.Slider:SetScript("OnEnter", function(self)
	abfEnteringMenus(self)
	GameTooltip:SetText("|T"..C_AddOns.GetAddOnMetadata("ABF", "IconTexture")..":16|t "..abfMainColor:WrapTextInColorCode(C_AddOns.GetAddOnMetadata("ABF", "Title")).."|nYou can also use your mousewheel|nor the buttons to the edge|nto change the value!") 
end)
-- leave --
abfOptions8aBox2Slider1.Slider:SetScript("OnLeave", abfLeavingMenus)
-- on mouse wheel --
abfOptions8aBox2Slider1.Slider:SetScript("OnMouseWheel", abfMouseWheelSlider)
-- On Value Changed --
abfOptions8aBox2Slider1.Slider:SetScript("OnValueChanged", function (self, value, userInput)
	abfOptions8aBox2Slider1.TopText:SetText("Desaturation of the Artwork: "..(self:GetValue()/10))
	ABFactionBars["Bar8"]["Top"]["ArtColorDesaturation"] = self:GetValue()/10
	abfSavedColorTop("Bar8", MultiBar7)
end)
-- Options Box 3, Top color Gradient --
-- Box 3, Pop Out Button 1, Top Color Gradient One --
-- enter --
abfOptions8aBox3PopOut1:SetScript("OnEnter", function(self)
	abfEnteringMenus(self)
	GameTooltip:SetText("|T"..C_AddOns.GetAddOnMetadata("ABF", "IconTexture")..":16|t"..abfMainColor:WrapTextInColorCode(C_AddOns.GetAddOnMetadata("ABF", "Title")).."|nChoose the first grandient color for the Top Art")
end)
-- leave --
abfOptions8aBox3PopOut1:SetScript("OnLeave", abfLeavingMenus)
-- drop down --
abfClickPopOut(abfOptions8aBox3PopOut1, abfOptions8aBox3PopOut1Choice0)
-- naming at Options10 --
-- sort --
for i = 1, 3, 1 do
	_G["abfOptions8aBox3PopOut1Choice"..i]:SetParent(abfOptions8aBox3PopOut1Choice0)
	_G["abfOptions8aBox3PopOut1Choice"..i]:SetPoint("TOP", _G["abfOptions8aBox3PopOut1Choice"..i-1], "BOTTOM", 0, 0)
end
-- click --
for i = 0, 3, 1 do
	_G["abfOptions8aBox3PopOut1Choice"..i]:HookScript("OnClick", function(self, button, down)
		if button == "LeftButton" and down == false then
			ABFactionBars["Bar8"]["Top"]["ArtGradientOptions1"] = self.Text:GetText()
			abfOptions8aBox3PopOut1.Text:SetText(self.Text:GetText())
			abfOptions8aBox3PopOut1Choice0:Hide()
			if ABFactionBars["Bar8"]["Top"]["ArtGradientOptions1"] == "Default Color" then
				ABFactionBars["Bar8"]["Top"]["ArtGradientColor1"] = {r = 1, g = 1, b = 1, a = 1}
				abfSavedColorTop("Bar8", MultiBar7)
			elseif ABFactionBars["Bar8"]["Top"]["ArtGradientOptions1"] == "Class Color" then
				ABFactionBars["Bar8"]["Top"]["ArtGradientColor1"] = CreateColor(abfClassColor:GetRGB())
				abfSavedColorTop("Bar8", MultiBar7)
			elseif ABFactionBars["Bar8"]["Top"]["ArtGradientOptions1"] == "Faction Color" then
				ABFactionBars["Bar8"]["Top"]["ArtGradientColor1"] = CreateColor(_G["PLAYER_FACTION_COLOR_"..string.upper(abfFaction.name)]:GetRGB())
				abfSavedColorTop("Bar8", MultiBar7)
			elseif ABFactionBars["Bar8"]["Top"]["ArtGradientOptions1"] == "Custom Color" then
				abfShowColorPicker("Bar8", MultiBar7, "Top", abfSavedColorTop, "ArtGradientColor1")
			end
		end
	end)
end
-- Box 3, Pop Out Button 2, Top Color Gradient One --
-- enter --
abfOptions8aBox3PopOut2:SetScript("OnEnter", function(self)
	abfEnteringMenus(self)
	GameTooltip:SetText("|T"..C_AddOns.GetAddOnMetadata("ABF", "IconTexture")..":16|t"..abfMainColor:WrapTextInColorCode(C_AddOns.GetAddOnMetadata("ABF", "Title")).."|nChoose the second grandient color for the Top Art")
end)
-- leave --
abfOptions8aBox3PopOut2:SetScript("OnLeave", abfLeavingMenus)
-- drop down --
abfClickPopOut(abfOptions8aBox3PopOut2, abfOptions8aBox3PopOut2Choice0)
-- naming at Options10 --
-- sort --
for i = 1, 3, 1 do
	_G["abfOptions8aBox3PopOut2Choice"..i]:SetParent(abfOptions8aBox3PopOut2Choice0)
	_G["abfOptions8aBox3PopOut2Choice"..i]:SetPoint("TOP", _G["abfOptions8aBox3PopOut2Choice"..i-1], "BOTTOM", 0, 0)
end
-- click --
for i = 0, 3, 1 do
	_G["abfOptions8aBox3PopOut2Choice"..i]:HookScript("OnClick", function(self, button, down)
		if button == "LeftButton" and down == false then
			ABFactionBars["Bar8"]["Top"]["ArtGradientOptions2"] = self.Text:GetText()
			abfOptions8aBox3PopOut2.Text:SetText(self.Text:GetText())
			abfOptions8aBox3PopOut2Choice0:Hide()
			if ABFactionBars["Bar8"]["Top"]["ArtGradientOptions2"] == "Default Color" then
				ABFactionBars["Bar8"]["Top"]["ArtGradientColor2"] = {r = 1, g = 1, b = 1, a = 1}
				abfSavedColorTop("Bar8", MultiBar7)
			elseif ABFactionBars["Bar8"]["Top"]["ArtGradientOptions2"] == "Class Color" then
				ABFactionBars["Bar8"]["Top"]["ArtGradientColor2"] = CreateColor(abfClassColor:GetRGB())
				abfSavedColorTop("Bar8", MultiBar7)
			elseif ABFactionBars["Bar8"]["Top"]["ArtGradientOptions2"] == "Faction Color" then
				ABFactionBars["Bar8"]["Top"]["ArtGradientColor2"] = CreateColor(_G["PLAYER_FACTION_COLOR_"..string.upper(abfFaction.name)]:GetRGB())
				abfSavedColorTop("Bar8", MultiBar7)
			elseif ABFactionBars["Bar8"]["Top"]["ArtGradientOptions2"] == "Custom Color" then
				abfShowColorPicker("Bar8", MultiBar7, "Top", abfSavedColorTop, "ArtGradientColor2")
			end
		end
	end)
end
-- Box 3, Pop Out Button 3, Top Color Gradient Orientation --
-- enter --
abfOptions8aBox3PopOut3:SetScript("OnEnter", function(self)
	abfEnteringMenus(self)
	GameTooltip:SetText("|T"..C_AddOns.GetAddOnMetadata("ABF", "IconTexture")..":16|t"..abfMainColor:WrapTextInColorCode(C_AddOns.GetAddOnMetadata("ABF", "Title")).."|nChoose the orientation|nof the colors for the Top Art")
end)
-- leave --
abfOptions8aBox3PopOut3:SetScript("OnLeave", abfLeavingMenus)
-- drop down --
abfClickPopOut(abfOptions8aBox3PopOut3, abfOptions8aBox3PopOut3Choice0)
-- naming at Options10 --
-- sort --
for i = 1, 1, 1 do
	_G["abfOptions8aBox3PopOut3Choice"..i]:SetParent(abfOptions8aBox3PopOut3Choice0)
	_G["abfOptions8aBox3PopOut3Choice"..i]:SetPoint("TOP", _G["abfOptions8aBox3PopOut3Choice"..i-1], "BOTTOM", 0, 0)
end
-- click --
for i = 0, 1, 1 do
	_G["abfOptions8aBox3PopOut3Choice"..i]:HookScript("OnClick", function(self, button, down)
		if button == "LeftButton" and down == false then
			ABFactionBars["Bar8"]["Top"]["ArtGradientOrientation"] = self.Text:GetText()
			abfOptions8aBox3PopOut3.Text:SetText(self.Text:GetText())
			abfOptions8aBox3PopOut3Choice0:Hide()
			abfSavedColorTop("Bar8", MultiBar7)
		end
	end)
end
-- Options Box 4, Bottom Art --
-- Box 4, Pop Out Button 1, Bottom Art choice --
-- enter --
abfOptions8aBox4PopOut1:SetScript("OnEnter", function(self)
	abfEnteringMenus(self)
	GameTooltip:SetText("|T"..C_AddOns.GetAddOnMetadata("ABF", "IconTexture")..":16|t"..abfMainColor:WrapTextInColorCode(C_AddOns.GetAddOnMetadata("ABF", "Title")).."|nChoose the Bottom Art for|nthe Action Bar 8")
end)
-- leave --
abfOptions8aBox4PopOut1:SetScript("OnLeave", abfLeavingMenus)
-- drop down --
abfClickPopOut(abfOptions8aBox4PopOut1, abfOptions8aBox4PopOut1Choice0)
-- naming at Options10 --
-- sort --
for i = 1, 3, 1 do
	_G["abfOptions8aBox4PopOut1Choice"..i]:SetParent(abfOptions8aBox4PopOut1Choice0)
	_G["abfOptions8aBox4PopOut1Choice"..i]:SetPoint("TOP", _G["abfOptions8aBox4PopOut1Choice"..i-1], "BOTTOM", 0, 0)
end
-- click --
for i = 0, 3, 1 do
	_G["abfOptions8aBox4PopOut1Choice"..i]:HookScript("OnClick", function(self, button, down)
		if button == "LeftButton" and down == false then
			ABFactionBars["Bar8"]["Bottom"]["Art"] = self.Text:GetText()
			abfOptions8aBox4PopOut1.Text:SetText(self.Text:GetText())
			abfOptions8aBox4PopOut1Choice0:Hide()
			if ABFactionBars["Bar8"]["Bottom"]["Art"] == "SoftCloud" then
				if not abfOptions8aBox4PopOut3:IsShown() then abfOptions8aBox4PopOut3:Show() end
				if not abfOptions8aBox4PopOut4:IsShown() then abfOptions8aBox4PopOut4:Show() end
			else
				if abfOptions8aBox4PopOut3:IsShown() then abfOptions8aBox4PopOut3:Hide() end
				if abfOptions8aBox4PopOut4:IsShown() then abfOptions8aBox4PopOut4:Hide() end
			end
			abfSavedArtBottom("Bar8", MultiBar7)
		end
	end)
end
-- Box 4, Pop Out Button 2, Bottom Art Color Choice --
-- enter --
abfOptions8aBox4PopOut2:SetScript("OnEnter", function(self)
	abfEnteringMenus(self)
	GameTooltip:SetText("|T"..C_AddOns.GetAddOnMetadata("ABF", "IconTexture")..":16|t"..abfMainColor:WrapTextInColorCode(C_AddOns.GetAddOnMetadata("ABF", "Title")).."|nChoose the mode color for|nthe Bottom Art! (one color or gradient color)") 
end)
-- leave --
abfOptions8aBox4PopOut2:SetScript("OnLeave", abfLeavingMenus)
-- drop down --
abfClickPopOut(abfOptions8aBox4PopOut2, abfOptions8aBox4PopOut2Choice0)
-- naming at Options10 --
-- sort --
for i = 1, 1, 1 do
	_G["abfOptions8aBox4PopOut2Choice"..i]:SetParent(abfOptions8aBox4PopOut2Choice0)
	_G["abfOptions8aBox4PopOut2Choice"..i]:SetPoint("TOP", _G["abfOptions8aBox4PopOut2Choice"..i-1], "BOTTOM", 0, 0)
end
-- click --
for i = 0, 1, 1 do
	_G["abfOptions8aBox4PopOut2Choice"..i]:HookScript("OnClick", function(self, button, down)
		if button == "LeftButton" and down == false then
			ABFactionBars["Bar8"]["Bottom"]["ArtColorChoice"] = self.Text:GetText()
			abfOptions8aBox4PopOut2.Text:SetText(self.Text:GetText())
			abfOptions8aBox4PopOut2Choice0:Hide()
			abfSavedColorBottom("Bar8", MultiBar7)
			if ABFactionBars["Bar8"]["Bottom"]["ArtColorChoice"] == "One Color" then
				if not abfOptions8aBox5:IsShown() then abfOptions8aBox5:Show() end
				if abfOptions8aBox6:IsShown() then abfOptions8aBox6:Hide() end
			elseif ABFactionBars["Bar8"]["Bottom"]["ArtColorChoice"] == "Gradient Color" then
				if abfOptions8aBox5:IsShown() then abfOptions8aBox5:Hide() end
				if not abfOptions8aBox6:IsShown() then abfOptions8aBox6:Show() end
			end
		end
	end)
end
-- Box 4, Pop Out Button 3, Bottom Art Animation --
-- enter --
abfOptions8aBox4PopOut3:SetScript("OnEnter", function(self)
	abfEnteringMenus(self)
	GameTooltip:SetText("|T"..C_AddOns.GetAddOnMetadata("ABF", "IconTexture")..":16|t"..abfMainColor:WrapTextInColorCode(C_AddOns.GetAddOnMetadata("ABF", "Title")).."|nWhould you like the animation|nfor the Bottom Art to be shown?")
end)
-- leave --
abfOptions8aBox4PopOut3:SetScript("OnLeave", abfLeavingMenus)
-- drop down --
abfClickPopOut(abfOptions8aBox4PopOut3, abfOptions8aBox4PopOut3Choice0)
-- naming at Options10 --
-- sort --
for i = 1, 1, 1 do
	_G["abfOptions8aBox4PopOut3Choice"..i]:SetParent(abfOptions8aBox4PopOut3Choice0)
	_G["abfOptions8aBox4PopOut3Choice"..i]:SetPoint("TOP", _G["abfOptions8aBox4PopOut3Choice"..i-1], "BOTTOM", 0, 0)
end
-- click --
for i = 0, 1, 1 do
	_G["abfOptions8aBox4PopOut3Choice"..i]:HookScript("OnClick", function(self, button, down)
		if button == "LeftButton" and down == false then
			abfOptions8aBox4PopOut3.Text:SetText(self.Text:GetText())
			abfOptions8aBox4PopOut3Choice0:Hide()
			if self.Text:GetText() == "Hide" then
				ABFactionBars["Bar8"]["Bottom"]["Animation"] = false
			elseif self.Text:GetText() == "Show" then
				ABFactionBars["Bar8"]["Bottom"]["Animation"] = true
			end
			--abfSavedAnimationBottom("Bar8", MultiBar7)
		end
	end)
end
-- Box 4, Pop Out Button 4, Bottom Art Animation Color --
-- enter --
abfOptions8aBox4PopOut4:SetScript("OnEnter", function(self)
	abfEnteringMenus(self)
	GameTooltip:SetText("|T"..C_AddOns.GetAddOnMetadata("ABF", "IconTexture")..":16|t"..abfMainColor:WrapTextInColorCode(C_AddOns.GetAddOnMetadata("ABF", "Title")).."|nChoose the color for the animation")
end)
-- leave --
abfOptions8aBox4PopOut4:SetScript("OnLeave", abfLeavingMenus)
-- drop down --
abfClickPopOut(abfOptions8aBox4PopOut4, abfOptions8aBox4PopOut4Choice0)
-- naming at Options10 --
-- sort --
for i = 1, 3, 1 do
	_G["abfOptions8aBox4PopOut4Choice"..i]:SetParent(abfOptions8aBox4PopOut4Choice0)
	_G["abfOptions8aBox4PopOut4Choice"..i]:SetPoint("TOP", _G["abfOptions8aBox4PopOut4Choice"..i-1], "BOTTOM", 0, 0)
end
-- click --
for i = 0, 3, 1 do
	_G["abfOptions8aBox4PopOut4Choice"..i]:HookScript("OnClick", function(self, button, down)
		if button == "LeftButton" and down == false then
			ABFactionBars["Bar8"]["Bottom"]["AnimationColorOptions"] = self.Text:GetText()
			abfOptions8aBox4PopOut4.Text:SetText(self.Text:GetText())
			abfOptions8aBox4PopOut4Choice0:Hide()
			if ABFactionBars["Bar8"]["Bottom"]["AnimationColorOptions"] == "Default Color" then
				ABFactionBars["Bar8"]["Bottom"]["AnimationColor"] = {r = 1, g = 1, b = 1, a = 1}
				--abfSavedAnimationBottomColor("Bar8", MultiBar7)
			elseif ABFactionBars["Bar8"]["Bottom"]["AnimationColorOptions"] == "Class Color" then
				ABFactionBars["Bar8"]["Bottom"]["AnimationColor"] = CreateColor(abfClassColor:GetRGB())
				--abfSavedAnimationBottomColor("Bar8", MultiBar7)
			elseif ABFactionBars["Bar8"]["Bottom"]["AnimationColorOptions"] == "Faction Color" then
				ABFactionBars["Bar8"]["Bottom"]["AnimationColor"] = CreateColor(_G["PLAYER_FACTION_COLOR_"..string.upper(abfFaction.name)]:GetRGB())
				--abfSavedAnimationBottomColor("Bar8", MultiBar7)
			elseif ABFactionBars["Bar8"]["Bottom"]["AnimationColorOptions"] == "Custom Color" then
				--abfShowColorPicker("Bar8", MultiBar7, "Bottom", abfSavedAnimationBottomColor, "AnimationColor")
			end
		end
	end)
end
-- Options Box 5, Bottom Color One --
-- Box 5, Pop Out Button 1, Bottom Color One Choices --
-- enter --
abfOptions8aBox5PopOut1:SetScript("OnEnter", function(self)
	abfEnteringMenus(self)
	GameTooltip:SetText("|T"..C_AddOns.GetAddOnMetadata("ABF", "IconTexture")..":16|t"..abfMainColor:WrapTextInColorCode(C_AddOns.GetAddOnMetadata("ABF", "Title")).."|nChoose the color for the Bottom Art")
end)
-- leave --
abfOptions8aBox5PopOut1:SetScript("OnLeave", abfLeavingMenus)
-- drop down --
abfClickPopOut(abfOptions8aBox5PopOut1, abfOptions8aBox5PopOut1Choice0)
-- naming at Options10 --
-- sort --
for i = 1, 3, 1 do
	_G["abfOptions8aBox5PopOut1Choice"..i]:SetParent(abfOptions8aBox5PopOut1Choice0)
	_G["abfOptions8aBox5PopOut1Choice"..i]:SetPoint("TOP", _G["abfOptions8aBox5PopOut1Choice"..i-1], "BOTTOM", 0, 0)
end
-- click --
for i = 0, 3, 1 do
	_G["abfOptions8aBox5PopOut1Choice"..i]:HookScript("OnClick", function(self, button, down)
		if button == "LeftButton" and down == false then
			ABFactionBars["Bar8"]["Bottom"]["ArtColorOptions"] = self.Text:GetText()
			abfOptions8aBox5PopOut1.Text:SetText(self.Text:GetText())
			abfOptions8aBox5PopOut1Choice0:Hide()
			if ABFactionBars["Bar8"]["Bottom"]["ArtColorOptions"] == "Default Color" then
				ABFactionBars["Bar8"]["Bottom"]["ArtColor"] = {r = 1, g = 1, b = 1, a = 1}
				if abfOptions8aBox5Slider1:IsShown() then abfOptions8aBox5Slider1:Hide() end
				abfSavedColorBottom("Bar8", MultiBar7)
			elseif ABFactionBars["Bar8"]["Bottom"]["ArtColorOptions"] == "Class Color" then
				ABFactionBars["Bar8"]["Bottom"]["ArtColor"] = CreateColor(abfClassColor:GetRGB())
				if abfOptions8aBox5Slider1:IsShown() then abfOptions8aBox5Slider1:Hide() end
				abfSavedColorBottom("Bar8", MultiBar7)
			elseif ABFactionBars["Bar8"]["Bottom"]["ArtColorOptions"] == "Faction Color" then
				ABFactionBars["Bar8"]["Bottom"]["ArtColor"] = CreateColor(_G["PLAYER_FACTION_COLOR_"..string.upper(abfFaction.name)]:GetRGB())
				if abfOptions8aBox5Slider1:IsShown() then abfOptions8aBox5Slider1:Hide() end
				abfSavedColorBottom("Bar8", MultiBar7)
			elseif ABFactionBars["Bar8"]["Bottom"]["ArtColorOptions"] == "Custom Color" then
				if not abfOptions8aBox5Slider1:IsShown() then abfOptions8aBox5Slider1:Show() end
				abfShowColorPicker("Bar8", MultiBar7, "Bottom", abfSavedColorBottom, "ArtColor")
			end
		end
	end)
end
-- Box 5, Slider 1, Bottom Desaturation --
-- min max values --
abfOptions8aBox5Slider1.MinText:SetText(0)
abfOptions8aBox5Slider1.MaxText:SetText(1)
abfOptions8aBox5Slider1.Slider:SetMinMaxValues(0, 10)
-- enter --
abfOptions8aBox5Slider1.Slider:SetScript("OnEnter", function(self)
	abfEnteringMenus(self)
	GameTooltip:SetText("|T"..C_AddOns.GetAddOnMetadata("ABF", "IconTexture")..":16|t "..abfMainColor:WrapTextInColorCode(C_AddOns.GetAddOnMetadata("ABF", "Title")).."|nYou can also use your mousewheel|nor the buttons to the edge|nto change the value!") 
end)
-- leave --
abfOptions8aBox5Slider1.Slider:SetScript("OnLeave", abfLeavingMenus)
-- on mouse wheel --
abfOptions8aBox5Slider1.Slider:SetScript("OnMouseWheel", abfMouseWheelSlider)
-- On Value Changed --
abfOptions8aBox5Slider1.Slider:SetScript("OnValueChanged", function (self, value, userInput)
	abfOptions8aBox5Slider1.TopText:SetText("Desaturation of the Artwork: "..(self:GetValue()/10))
	ABFactionBars["Bar8"]["Bottom"]["ArtColorDesaturation"] = self:GetValue()/10
	abfSavedColorBottom("Bar8", MultiBar7)
end)
-- Options Box 6, Bottom Color Gradient --
-- Box 6, Pop Out Button 1, Bottom Color Gradient One --
-- enter --
abfOptions8aBox6PopOut1:SetScript("OnEnter", function(self)
	abfEnteringMenus(self)
	GameTooltip:SetText("|T"..C_AddOns.GetAddOnMetadata("ABF", "IconTexture")..":16|t"..abfMainColor:WrapTextInColorCode(C_AddOns.GetAddOnMetadata("ABF", "Title")).."|nChoose the first grandient color for the Bottom Art")
end)
-- leave --
abfOptions8aBox6PopOut1:SetScript("OnLeave", abfLeavingMenus)
-- drop down --
abfClickPopOut(abfOptions8aBox6PopOut1, abfOptions8aBox6PopOut1Choice0)
-- naming at Options10 --
-- sort --
for i = 1, 3, 1 do
	_G["abfOptions8aBox6PopOut1Choice"..i]:SetParent(abfOptions8aBox6PopOut1Choice0)
	_G["abfOptions8aBox6PopOut1Choice"..i]:SetPoint("TOP", _G["abfOptions8aBox6PopOut1Choice"..i-1], "BOTTOM", 0, 0)
end
-- click --
for i = 0, 3, 1 do
	_G["abfOptions8aBox6PopOut1Choice"..i]:HookScript("OnClick", function(self, button, down)
		if button == "LeftButton" and down == false then
			ABFactionBars["Bar8"]["Bottom"]["ArtGradientOptions1"] = self.Text:GetText()
			abfOptions8aBox6PopOut1.Text:SetText(self.Text:GetText())
			abfOptions8aBox6PopOut1Choice0:Hide()
			if ABFactionBars["Bar8"]["Bottom"]["ArtGradientOptions1"] == "Default Color" then
				ABFactionBars["Bar8"]["Bottom"]["ArtGradientColor1"] = {r = 1, g = 1, b = 1, a = 1}
				abfSavedColorBottom("Bar8", MultiBar7)
			elseif ABFactionBars["Bar8"]["Bottom"]["ArtGradientOptions1"] == "Class Color" then
				ABFactionBars["Bar8"]["Bottom"]["ArtGradientColor1"] = CreateColor(abfClassColor:GetRGB())
				abfSavedColorBottom("Bar8", MultiBar7)
			elseif ABFactionBars["Bar8"]["Bottom"]["ArtGradientOptions1"] == "Faction Color" then
				ABFactionBars["Bar8"]["Bottom"]["ArtGradientColor1"] = CreateColor(_G["PLAYER_FACTION_COLOR_"..string.upper(abfFaction.name)]:GetRGB())
				abfSavedColorBottom("Bar8", MultiBar7)
			elseif ABFactionBars["Bar8"]["Bottom"]["ArtGradientOptions1"] == "Custom Color" then
				abfShowColorPicker("Bar8", MultiBar7, "Bottom", abfSavedColorBottom, "ArtGradientColor1")
			end
		end
	end)
end
-- Box 6, Pop Out Button 2, Bottom Color Gradient Two --
-- enter --
abfOptions8aBox6PopOut2:SetScript("OnEnter", function(self)
	abfEnteringMenus(self)
	GameTooltip:SetText("|T"..C_AddOns.GetAddOnMetadata("ABF", "IconTexture")..":16|t"..abfMainColor:WrapTextInColorCode(C_AddOns.GetAddOnMetadata("ABF", "Title")).."|nChoose the second grandient color for the Bottom Art")
end)
-- leave --
abfOptions8aBox6PopOut2:SetScript("OnLeave", abfLeavingMenus)
-- drop down --
abfClickPopOut(abfOptions8aBox6PopOut2, abfOptions8aBox6PopOut2Choice0)
-- naming at Options10 --
-- sort --
for i = 1, 3, 1 do
	_G["abfOptions8aBox6PopOut2Choice"..i]:SetParent(abfOptions8aBox6PopOut2Choice0)
	_G["abfOptions8aBox6PopOut2Choice"..i]:SetPoint("TOP", _G["abfOptions8aBox6PopOut2Choice"..i-1], "BOTTOM", 0, 0)
end
-- click --
for i = 0, 3, 1 do
	_G["abfOptions8aBox6PopOut2Choice"..i]:HookScript("OnClick", function(self, button, down)
		if button == "LeftButton" and down == false then
			ABFactionBars["Bar8"]["Bottom"]["ArtGradientOptions2"] = self.Text:GetText()
			abfOptions8aBox6PopOut2.Text:SetText(self.Text:GetText())
			abfOptions8aBox6PopOut2Choice0:Hide()
			if ABFactionBars["Bar8"]["Bottom"]["ArtGradientOptions2"] == "Default Color" then
				ABFactionBars["Bar8"]["Bottom"]["ArtGradientColor2"] = {r = 1, g = 1, b = 1, a = 1}
				abfSavedColorBottom("Bar8", MultiBar7)
			elseif ABFactionBars["Bar8"]["Bottom"]["ArtGradientOptions2"] == "Class Color" then
				ABFactionBars["Bar8"]["Bottom"]["ArtGradientColor2"] = CreateColor(abfClassColor:GetRGB())
				abfSavedColorBottom("Bar8", MultiBar7)
			elseif ABFactionBars["Bar8"]["Bottom"]["ArtGradientOptions2"] == "Faction Color" then
				ABFactionBars["Bar8"]["Bottom"]["ArtGradientColor2"] = CreateColor(_G["PLAYER_FACTION_COLOR_"..string.upper(abfFaction.name)]:GetRGB())
				abfSavedColorBottom("Bar8", MultiBar7)
			elseif ABFactionBars["Bar8"]["Bottom"]["ArtGradientOptions2"] == "Custom Color" then
				abfShowColorPicker("Bar8", MultiBar7, "Bottom", abfSavedColorBottom, "ArtGradientColor2")
			end
		end
	end)
end
-- Box 6, Pop Out Button 3, Bottom Color Gradient Orientation --
-- enter --
abfOptions8aBox6PopOut3:SetScript("OnEnter", function(self)
	abfEnteringMenus(self)
	GameTooltip:SetText("|T"..C_AddOns.GetAddOnMetadata("ABF", "IconTexture")..":16|t"..abfMainColor:WrapTextInColorCode(C_AddOns.GetAddOnMetadata("ABF", "Title")).."|nChoose the orientation|nof the colors for the Bottom Art")
end)
-- leave --
abfOptions8aBox6PopOut3:SetScript("OnLeave", abfLeavingMenus)
-- drop down --
abfClickPopOut(abfOptions8aBox6PopOut3, abfOptions8aBox6PopOut3Choice0)
-- naming at Options10 --
-- sort --
for i = 1, 1, 1 do
	_G["abfOptions8aBox6PopOut3Choice"..i]:SetParent(abfOptions8aBox6PopOut3Choice0)
	_G["abfOptions8aBox6PopOut3Choice"..i]:SetPoint("TOP", _G["abfOptions8aBox6PopOut3Choice"..i-1], "BOTTOM", 0, 0)
end
-- click --
for i = 0, 1, 1 do
	_G["abfOptions8aBox6PopOut3Choice"..i]:HookScript("OnClick", function(self, button, down)
		if button == "LeftButton" and down == false then
			ABFactionBars["Bar8"]["Bottom"]["ArtGradientOrientation"] = self.Text:GetText()
			abfOptions8aBox6PopOut3.Text:SetText(self.Text:GetText())
			abfOptions8aBox6PopOut3Choice0:Hide()
			abfSavedColorBottom("Bar8", MultiBar7)
		end
	end)
end
-- Options Box 7, Normal Texture Color --
-- Box 7, Pop Out Button 1, Normal Texture Color Choice --
-- enter --
abfOptions8aBox7PopOut1:SetScript("OnEnter", function(self)
	abfEnteringMenus(self)
	GameTooltip:SetText("|T"..C_AddOns.GetAddOnMetadata("ABF", "IconTexture")..":16|t"..abfMainColor:WrapTextInColorCode(C_AddOns.GetAddOnMetadata("ABF", "Title")).."|nChoose the mode color for|nthe Buttons Border! (one color or gradient color)") 
end)
-- leave --
abfOptions8aBox7PopOut1:SetScript("OnLeave", abfLeavingMenus)
-- drop down --
abfClickPopOut(abfOptions8aBox7PopOut1, abfOptions8aBox7PopOut1Choice0)
-- naming at Options10 --
-- sort --
for i = 1, 1, 1 do
	_G["abfOptions8aBox7PopOut1Choice"..i]:SetParent(abfOptions8aBox7PopOut1Choice0)
	_G["abfOptions8aBox7PopOut1Choice"..i]:SetPoint("TOP", _G["abfOptions8aBox7PopOut1Choice"..i-1], "BOTTOM", 0, 0)
end
-- click --
for i = 0, 1, 1 do
	_G["abfOptions8aBox7PopOut1Choice"..i]:HookScript("OnClick", function(self, button, down)
		if button == "LeftButton" and down == false then
			ABFactionBars["Bar8"]["NormalTextureColorMode"] = self.Text:GetText()
			abfOptions8aBox7PopOut1.Text:SetText(self.Text:GetText())
			abfOptions8aBox7PopOut1Choice0:Hide()
			abfSavedColorNormalTexture("Bar8", MultiBar7)
			if ABFactionBars["Bar8"]["NormalTextureColorMode"] == "One Color" then
				if not abfOptions8aBox8:IsShown() then abfOptions8aBox8:Show() end
				if abfOptions8aBox9:IsShown() then abfOptions8aBox9:Hide() end
			elseif ABFactionBars["Bar8"]["NormalTextureColorMode"] == "Gradient Color" then
				if abfOptions8aBox8:IsShown() then abfOptions8aBox8:Hide() end
				if not abfOptions8aBox9:IsShown() then abfOptions8aBox9:Show() end
			end
		end
	end)
end
-- Options Box 8, Normal Texture Color One --
-- Box 8, Pop Out Button 1, Normal Texture Color One Choices --
-- enter --
abfOptions8aBox8PopOut1:SetScript("OnEnter", function(self)
	abfEnteringMenus(self)
	GameTooltip:SetText("|T"..C_AddOns.GetAddOnMetadata("ABF", "IconTexture")..":16|t"..abfMainColor:WrapTextInColorCode(C_AddOns.GetAddOnMetadata("ABF", "Title")).."|nChoose the color for the Buttons Borders")
end)
-- leave --
abfOptions8aBox8PopOut1:SetScript("OnLeave", abfLeavingMenus)
-- drop down --
abfClickPopOut(abfOptions8aBox8PopOut1, abfOptions8aBox8PopOut1Choice0)
-- naming at Options10 --
-- sort --
for i = 1, 3, 1 do
	_G["abfOptions8aBox8PopOut1Choice"..i]:SetParent(abfOptions8aBox8PopOut1Choice0)
	_G["abfOptions8aBox8PopOut1Choice"..i]:SetPoint("TOP", _G["abfOptions8aBox8PopOut1Choice"..i-1], "BOTTOM", 0, 0)
end
-- click --
for i = 0, 3, 1 do
	_G["abfOptions8aBox8PopOut1Choice"..i]:HookScript("OnClick", function(self, button, down)
		if button == "LeftButton" and down == false then
			ABFactionBars["Bar8"]["NormalTextureColorOptions"] = self.Text:GetText()
			abfOptions8aBox8PopOut1.Text:SetText(self.Text:GetText())
			abfOptions8aBox8PopOut1Choice0:Hide()
			if ABFactionBars["Bar8"]["NormalTextureColorOptions"] == "Default Color" then
				ABFactionBars["Bar8"]["NormalTextureColor"] = {r = 1, g = 1, b = 1, a = 1}
				abfSavedColorNormalTexture("Bar8", MultiBar7)
			elseif ABFactionBars["Bar8"]["NormalTextureColorOptions"] == "Class Color" then
				ABFactionBars["Bar8"]["NormalTextureColor"] = CreateColor(abfClassColor:GetRGB())
				abfSavedColorNormalTexture("Bar8", MultiBar7)
			elseif ABFactionBars["Bar8"]["NormalTextureColorOptions"] == "Faction Color" then
				ABFactionBars["Bar8"]["NormalTextureColor"] = CreateColor(_G["PLAYER_FACTION_COLOR_"..string.upper(abfFaction.name)]:GetRGB())
				abfSavedColorNormalTexture("Bar8", MultiBar7)
			elseif ABFactionBars["Bar8"]["NormalTextureColorOptions"] == "Custom Color" then
				abfShowColorPickerCD("Bar8", MultiBar7, "NormalTextureColor", abfSavedColorNormalTexture)
			end
		end
	end)
end
-- Options Box 9, Normal Texture Color Gradient --
-- Box 9, Pop Out Button 1, Normal Texture Color Gradient One --
-- enter --
abfOptions8aBox9PopOut1:SetScript("OnEnter", function(self)
	abfEnteringMenus(self)
	GameTooltip:SetText("|T"..C_AddOns.GetAddOnMetadata("ABF", "IconTexture")..":16|t"..abfMainColor:WrapTextInColorCode(C_AddOns.GetAddOnMetadata("ABF", "Title")).."|nChoose the first grandient color for the Buttons Borders")
end)
-- leave --
abfOptions8aBox9PopOut1:SetScript("OnLeave", abfLeavingMenus)
-- drop down --
abfClickPopOut(abfOptions8aBox9PopOut1, abfOptions8aBox9PopOut1Choice0)
-- naming at Options10 --
-- sort --
for i = 1, 3, 1 do
	_G["abfOptions8aBox9PopOut1Choice"..i]:SetParent(abfOptions8aBox9PopOut1Choice0)
	_G["abfOptions8aBox9PopOut1Choice"..i]:SetPoint("TOP", _G["abfOptions8aBox9PopOut1Choice"..i-1], "BOTTOM", 0, 0)
end
-- click --
for i = 0, 3, 1 do
	_G["abfOptions8aBox9PopOut1Choice"..i]:HookScript("OnClick", function(self, button, down)
		if button == "LeftButton" and down == false then
			ABFactionBars["Bar8"]["NormalTextureGradientOptions1"] = self.Text:GetText()
			abfOptions8aBox9PopOut1.Text:SetText(self.Text:GetText())
			abfOptions8aBox9PopOut1Choice0:Hide()
			if ABFactionBars["Bar8"]["NormalTextureGradientOptions1"] == "Default Color" then
				ABFactionBars["Bar8"]["NormalTextureGradient1"] = {r = 1, g = 1, b = 1, a = 1}
				abfSavedColorNormalTexture("Bar8", MultiBar7)
			elseif ABFactionBars["Bar8"]["NormalTextureGradientOptions1"] == "Class Color" then
				ABFactionBars["Bar8"]["NormalTextureGradient1"] = CreateColor(abfClassColor:GetRGB())
				abfSavedColorNormalTexture("Bar8", MultiBar7)
			elseif ABFactionBars["Bar8"]["NormalTextureGradientOptions1"] == "Faction Color" then
				ABFactionBars["Bar8"]["NormalTextureGradient1"] = CreateColor(_G["PLAYER_FACTION_COLOR_"..string.upper(abfFaction.name)]:GetRGB())
				abfSavedColorNormalTexture("Bar8", MultiBar7)
			elseif ABFactionBars["Bar8"]["NormalTextureGradientOptions1"] == "Custom Color" then
				abfShowColorPickerCD("Bar8", MultiBar7, "NormalTextureGradient1", abfSavedColorNormalTexture)
			end
		end
	end)
end
-- Box 9, Pop Out Button 2, Normal Texture Color Gradient two --
-- enter --
abfOptions8aBox9PopOut2:SetScript("OnEnter", function(self)
	abfEnteringMenus(self)
	GameTooltip:SetText("|T"..C_AddOns.GetAddOnMetadata("ABF", "IconTexture")..":16|t"..abfMainColor:WrapTextInColorCode(C_AddOns.GetAddOnMetadata("ABF", "Title")).."|nChoose the second grandient color for the Buttons Borders")
end)
-- leave --
abfOptions8aBox9PopOut2:SetScript("OnLeave", abfLeavingMenus)
-- drop down --
abfClickPopOut(abfOptions8aBox9PopOut2, abfOptions8aBox9PopOut2Choice0)
-- naming at Options10 --
-- sort --
for i = 1, 3, 1 do
	_G["abfOptions8aBox9PopOut2Choice"..i]:SetParent(abfOptions8aBox9PopOut2Choice0)
	_G["abfOptions8aBox9PopOut2Choice"..i]:SetPoint("TOP", _G["abfOptions8aBox9PopOut2Choice"..i-1], "BOTTOM", 0, 0)
end
-- click --
for i = 0, 3, 1 do
	_G["abfOptions8aBox9PopOut2Choice"..i]:HookScript("OnClick", function(self, button, down)
		if button == "LeftButton" and down == false then
			ABFactionBars["Bar8"]["NormalTextureGradientOptions2"] = self.Text:GetText()
			abfOptions8aBox9PopOut2.Text:SetText(self.Text:GetText())
			abfOptions8aBox9PopOut2Choice0:Hide()
			if ABFactionBars["Bar8"]["NormalTextureGradientOptions2"] == "Default Color" then
				ABFactionBars["Bar8"]["NormalTextureGradient2"] = {r = 1, g = 1, b = 1, a = 1}
				abfSavedColorNormalTexture("Bar8", MultiBar7)
			elseif ABFactionBars["Bar8"]["NormalTextureGradientOptions2"] == "Class Color" then
				ABFactionBars["Bar8"]["NormalTextureGradient2"] = CreateColor(abfClassColor:GetRGB())
				abfSavedColorNormalTexture("Bar8", MultiBar7)
			elseif ABFactionBars["Bar8"]["NormalTextureGradientOptions2"] == "Faction Color" then
				ABFactionBars["Bar8"]["NormalTextureGradient2"] = CreateColor(_G["PLAYER_FACTION_COLOR_"..string.upper(abfFaction.name)]:GetRGB())
				abfSavedColorNormalTexture("Bar8", MultiBar7)
			elseif ABFactionBars["Bar8"]["NormalTextureGradientOptions2"] == "Custom Color" then
				abfShowColorPickerCD("Bar8", MultiBar7, "NormalTextureGradient2", abfSavedColorNormalTexture)
			end
		end
	end)
end
-- Box 9, Pop Out Button 3, Normal Texture Color Gradient Orientation --
-- enter --
abfOptions8aBox9PopOut3:SetScript("OnEnter", function(self)
	abfEnteringMenus(self)
	GameTooltip:SetText("|T"..C_AddOns.GetAddOnMetadata("ABF", "IconTexture")..":16|t"..abfMainColor:WrapTextInColorCode(C_AddOns.GetAddOnMetadata("ABF", "Title")).."|nChoose the orientation|nof the colors for the Buttons Borders")
end)
-- leave --
abfOptions8aBox9PopOut3:SetScript("OnLeave", abfLeavingMenus)
-- drop down --
abfClickPopOut(abfOptions8aBox9PopOut3, abfOptions8aBox9PopOut3Choice0)
-- naming at Options10 --
-- sort --
for i = 1, 1, 1 do
	_G["abfOptions8aBox9PopOut3Choice"..i]:SetParent(abfOptions8aBox9PopOut3Choice0)
	_G["abfOptions8aBox9PopOut3Choice"..i]:SetPoint("TOP", _G["abfOptions8aBox9PopOut3Choice"..i-1], "BOTTOM", 0, 0)
end
-- click --
for i = 0, 1, 1 do
	_G["abfOptions8aBox9PopOut3Choice"..i]:HookScript("OnClick", function(self, button, down)
		if button == "LeftButton" and down == false then
			ABFactionBars["Bar8"]["NormalTextureGradientOrientation"] = self.Text:GetText()
			abfOptions8aBox9PopOut3.Text:SetText(self.Text:GetText())
			abfOptions8aBox9PopOut3Choice0:Hide()
			abfSavedColorNormalTexture("Bar8", MultiBar7)
		end
	end)
end
-- Showing the panel --
abfOptions8a:HookScript("OnShow", function(self)
	CheckSavedVariables()
-- panels --
	if abfOptions8:IsShown() then abfOptions8:Hide() end
-- tabs --
	abfOptions00Tab8.Text:SetTextColor(abfHighColor:GetRGB())
	for i = 1, 7, 1 do
		_G["abfOptions00Tab"..i].Text:SetTextColor(abfMainColor:GetRGB())
	end
	abfOptions00Tab9.Text:SetTextColor(abfMainColor:GetRGB())
	abfOptions00Tab10.Text:SetTextColor(abfMainColor:GetRGB())
-- buttons --
	abfOptions00PageButton1h.Text:SetTextColor(abfMainColor:GetRGB())
	abfOptions00PageButton2h.Text:SetTextColor(abfHighColor:GetRGB())
end)
