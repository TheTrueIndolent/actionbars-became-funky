abfOptions9.TopTxt:SetText("Status Bars options!")
abfOptions9Box1.TitleTxt:SetText("Status Bar 1")
abfOptions9Box2.TitleTxt:SetText("Status Bar 2")
-- Checking the Saved Variables --
local function CheckSavedVariables()
	abfOptions9Box1Slider1.Slider:SetValue(ABFstatusTrackingBar["Bar1"]["Scale"] * 100)
	if ABFstatusTrackingBar["Bar1"]["Visibility"] then
		abfOptions9Box1PopOut1.Text:SetText("Show all the time")
	elseif not ABFstatusTrackingBar["Bar1"]["Visibility"] then
		abfOptions9Box1PopOut1.Text:SetText("Let Blizzard decide")
	end
	abfOptions9Box1PopOut2.Text:SetText(ABFstatusTrackingBar["Bar1"]["Fonts"])
	abfOptions9Box2Slider1.Slider:SetValue(ABFstatusTrackingBar["Bar2"]["Scale"] * 100)
	if ABFstatusTrackingBar["Bar2"]["Visibility"] then
		abfOptions9Box2PopOut1.Text:SetText("Show all the time")
	elseif not ABFstatusTrackingBar["Bar2"]["Visibility"] then
		abfOptions9Box2PopOut1.Text:SetText("Let Blizzard decide")
	end
	abfOptions9Box2PopOut2.Text:SetText(ABFstatusTrackingBar["Bar2"]["Fonts"])
end
-- Box 1, Status Tracking Bar 1 --
-- Status Tracking Bar 1, Slider 1, Scale --
-- min max values --
abfOptions9Box1Slider1.MinText:SetText(0.5)
abfOptions9Box1Slider1.MaxText:SetText(2)
abfOptions9Box1Slider1.Slider:SetMinMaxValues(50, 200)
-- enter --
abfOptions9Box1Slider1.Slider:SetScript("OnEnter", function(self)
	abfEnteringMenus(self)
	GameTooltip:SetText("|T"..C_AddOns.GetAddOnMetadata("ABF", "IconTexture")..":16|t "..abfMainColor:WrapTextInColorCode(C_AddOns.GetAddOnMetadata("ABF", "Title")).."|nYou can also use your mousewheel|nor the buttons to the edge|nto change the value!") 
end)
-- leave --
abfOptions9Box1Slider1.Slider:SetScript("OnLeave", abfLeavingMenus)
-- on mouse wheel --
abfOptions9Box1Slider1.Slider:SetScript("OnMouseWheel", abfMouseWheelSlider)
-- On Value Changed --
abfOptions9Box1Slider1.Slider:SetScript("OnValueChanged", function (self, value, userInput)
	abfOptions9Box1Slider1.TopText:SetText("Scale of the Status Bar 1: "..(self:GetValue()/100))
	ABFstatusTrackingBar["Bar1"]["Scale"] = self:GetValue()/100
	MainStatusTrackingBarContainer:SetScale(ABFstatusTrackingBar["Bar1"]["Scale"])
end)
-- Status Tracking Bar 1, Pop Out Button 1, Visibility --
-- drop down --
abfClickPopOut(abfOptions9Box1PopOut1, abfOptions9Box1PopOut1Choice0)
-- sort --
abfOptions9Box1PopOut1Choice1:SetParent(abfOptions9Box1PopOut1Choice0)
abfOptions9Box1PopOut1Choice1:SetPoint("TOP", abfOptions9Box1PopOut1Choice0, "BOTTOM", 0, 0)
-- naming --
abfOptions9Box1PopOut1Choice0.Text:SetText("Let Blizzard decide")
abfOptions9Box1PopOut1Choice1.Text:SetText("Show all the time")
-- enter --
abfOptions9Box1PopOut1:SetScript("OnEnter", function(self)
	abfEnteringMenus(self)
	GameTooltip:SetText("|T"..C_AddOns.GetAddOnMetadata("ABF", "IconTexture")..":16|t"..abfMainColor:WrapTextInColorCode(C_AddOns.GetAddOnMetadata("ABF", "Title")).."|nChoose the visibility of|nStatus Bar 1 text") 
end)
-- leave --
abfOptions9Box1PopOut1:SetScript("OnLeave", abfLeavingMenus)
-- click --
for i = 0, 1, 1 do
	_G["abfOptions9Box1PopOut1Choice"..i]:HookScript("OnClick", function(self, button, down)
		if button == "LeftButton" and down == false then
			abfOptions9Box1PopOut1.Text:SetText(self.Text:GetText())
			abfOptions9Box1PopOut1Choice0:Hide()
			if self.Text:GetText() == "Let Blizzard decide" then
				ABFstatusTrackingBar["Bar1"]["Visibility"] = false
			elseif self.Text:GetText() == "Show all the time" then
				ABFstatusTrackingBar["Bar1"]["Visibility"] = true
			end
			C_UI.Reload()
		end
	end)
end
-- Status Tracking Bar 1, Pop Out Button 2, Fonts --
-- drop down --
abfClickPopOut(abfOptions9Box1PopOut2, abfOptions9Box1PopOut2Choice0)
-- sort --
for i = 1, 5, 1 do
	_G["abfOptions9Box1PopOut2Choice"..i]:SetParent(abfOptions9Box1PopOut2Choice0)
	_G["abfOptions9Box1PopOut2Choice"..i]:SetPoint("TOP", _G["abfOptions9Box1PopOut2Choice"..i-1], "BOTTOM", 0, 0)
end
-- naming --
abfOptions9Box1PopOut2Choice0.Text:SetText("Default")
abfOptions9Box1PopOut2Choice1.Text:SetText("Clear_Fonts_9")
abfOptions9Box1PopOut2Choice2.Text:SetText("Clear_Fonts_10")
abfOptions9Box1PopOut2Choice3.Text:SetText("Clear_Fonts_11")
abfOptions9Box1PopOut2Choice4.Text:SetText("Clear_Fonts_12")
abfOptions9Box1PopOut2Choice5.Text:SetText("Clear_Fonts_13")
-- enter --
abfOptions9Box1PopOut2:SetScript("OnEnter", function(self)
	abfEnteringMenus(self)
	GameTooltip:SetText("|T"..C_AddOns.GetAddOnMetadata("ABF", "IconTexture")..":16|t"..abfMainColor:WrapTextInColorCode(C_AddOns.GetAddOnMetadata("ABF", "Title")).."|nChoose the fonts of|nStatus Bar 1 text") 
end)
-- leave --
abfOptions9Box1PopOut2:SetScript("OnLeave", abfLeavingMenus)
-- click --
for i = 0, 5, 1 do
	_G["abfOptions9Box1PopOut2Choice"..i]:HookScript("OnClick", function(self, button, down)
		if button == "LeftButton" and down == false then
			abfOptions9Box1PopOut2.Text:SetText(self.Text:GetText())
			abfOptions9Box1PopOut2Choice0:Hide()
			ABFstatusTrackingBar["Bar1"]["Fonts"] = self.Text:GetText()
			abfSavedStatusTrackingBar1()
		end
	end)
end
-- Box 2, Status Tracking Bar 2 --
-- Status Tracking Bar 2, Slider 1, Scale --
-- min max values --
abfOptions9Box2Slider1.MinText:SetText(0.5)
abfOptions9Box2Slider1.MaxText:SetText(2)
abfOptions9Box2Slider1.Slider:SetMinMaxValues(50, 200)
-- enter --
abfOptions9Box2Slider1.Slider:SetScript("OnEnter", function(self)
	abfEnteringMenus(self)
	GameTooltip:SetText("|T"..C_AddOns.GetAddOnMetadata("ABF", "IconTexture")..":16|t "..abfMainColor:WrapTextInColorCode(C_AddOns.GetAddOnMetadata("ABF", "Title")).."|nYou can also use your mousewheel|nor the buttons to the edge|nto change the value!") 
end)
-- leave --
abfOptions9Box2Slider1.Slider:SetScript("OnLeave", abfLeavingMenus)
-- on mouse wheel --
abfOptions9Box2Slider1.Slider:SetScript("OnMouseWheel", abfMouseWheelSlider)
-- On Value Changed --
abfOptions9Box2Slider1.Slider:SetScript("OnValueChanged", function (self, value, userInput)
	abfOptions9Box2Slider1.TopText:SetText("Scale of the Status Bar 2: "..(self:GetValue()/100))
	ABFstatusTrackingBar["Bar2"]["Scale"] = self:GetValue()/100
	SecondaryStatusTrackingBarContainer:SetScale(ABFstatusTrackingBar["Bar2"]["Scale"])
end)
-- Status Tracking Bar 2, Pop Out Button 1, Visibility --
-- drop down --
abfClickPopOut(abfOptions9Box2PopOut1, abfOptions9Box2PopOut1Choice0)
-- sort --
abfOptions9Box2PopOut1Choice1:SetParent(abfOptions9Box2PopOut1Choice0)
abfOptions9Box2PopOut1Choice1:SetPoint("TOP", abfOptions9Box2PopOut1Choice0, "BOTTOM", 0, 0)
-- naming --
abfOptions9Box2PopOut1Choice0.Text:SetText("Let Blizzard decide")
abfOptions9Box2PopOut1Choice1.Text:SetText("Show all the time")
-- enter --
abfOptions9Box2PopOut1:SetScript("OnEnter", function(self)
	abfEnteringMenus(self)
	GameTooltip:SetText("|T"..C_AddOns.GetAddOnMetadata("ABF", "IconTexture")..":16|t"..abfMainColor:WrapTextInColorCode(C_AddOns.GetAddOnMetadata("ABF", "Title")).."|nChoose the visibility of|nStatus Bar 2 text") 
end)
-- leave --
abfOptions9Box2PopOut1:SetScript("OnLeave", abfLeavingMenus)
-- click --
for i = 0, 1, 1 do
	_G["abfOptions9Box2PopOut1Choice"..i]:HookScript("OnClick", function(self, button, down)
		if button == "LeftButton" and down == false then
			abfOptions9Box2PopOut1.Text:SetText(self.Text:GetText())
			abfOptions9Box2PopOut1Choice0:Hide()
			if self.Text:GetText() == "Let Blizzard decide" then
				ABFstatusTrackingBar["Bar2"]["Visibility"] = false
			elseif self.Text:GetText() == "Show all the time" then
				ABFstatusTrackingBar["Bar2"]["Visibility"] = true
			end
			C_UI.Reload()
		end
	end)
end
-- Status Tracking Bar 2, Pop Out Button 2, Fonts --
-- drop down --
abfClickPopOut(abfOptions9Box2PopOut2, abfOptions9Box2PopOut2Choice0)
-- sort --
for i = 1, 5, 1 do
	_G["abfOptions9Box2PopOut2Choice"..i]:SetParent(abfOptions9Box2PopOut2Choice0)
	_G["abfOptions9Box2PopOut2Choice"..i]:SetPoint("TOP", _G["abfOptions9Box2PopOut2Choice"..i-1], "BOTTOM", 0, 0)
end
-- naming --
abfOptions9Box2PopOut2Choice0.Text:SetText("Default")
abfOptions9Box2PopOut2Choice1.Text:SetText("Clear_Fonts_9")
abfOptions9Box2PopOut2Choice2.Text:SetText("Clear_Fonts_10")
abfOptions9Box2PopOut2Choice3.Text:SetText("Clear_Fonts_11")
abfOptions9Box2PopOut2Choice4.Text:SetText("Clear_Fonts_12")
abfOptions9Box2PopOut2Choice5.Text:SetText("Clear_Fonts_13")
-- enter --
abfOptions9Box2PopOut2:SetScript("OnEnter", function(self)
	abfEnteringMenus(self)
	GameTooltip:SetText("|T"..C_AddOns.GetAddOnMetadata("ABF", "IconTexture")..":16|t"..abfMainColor:WrapTextInColorCode(C_AddOns.GetAddOnMetadata("ABF", "Title")).."|nChoose the fonts of|nStatus Bar 2 text") 
end)
-- leave --
abfOptions9Box2PopOut2:SetScript("OnLeave", abfLeavingMenus)
-- click --
for i = 0, 5, 1 do
	_G["abfOptions9Box2PopOut2Choice"..i]:HookScript("OnClick", function(self, button, down)
		if button == "LeftButton" and down == false then
			abfOptions9Box2PopOut2.Text:SetText(self.Text:GetText())
			abfOptions9Box2PopOut2Choice0:Hide()
			ABFstatusTrackingBar["Bar2"]["Fonts"] = self.Text:GetText()
			abfSavedStatusTrackingBar1()
		end
	end)
end
-- Showing the panel --
abfOptions9:HookScript("OnShow", function(self)
	CheckSavedVariables()
-- panels --
	for i = 1, 8, 1 do
		if _G["abfOptions"..i.."a"]:IsShown() then _G["abfOptions"..i.."a"]:Hide() end
	end
	for i = 1, 8, 1 do
		if _G["abfOptions"..i]:IsShown() then _G["abfOptions"..i]:Hide() end
	end
	if abfOptions10:IsShown() then abfOptions10:Hide() end
-- tabs --
	abfOptions00Tab9.Text:SetTextColor(abfHighColor:GetRGB())
	for i = 1, 8, 1 do
		_G["abfOptions00Tab"..i].Text:SetTextColor(abfMainColor:GetRGB())
	end
	abfOptions00Tab10.Text:SetTextColor(abfMainColor:GetRGB())
-- buttons --
	for i = 1, 8, 1 do
		if i == 1 then k = "a"
		elseif i == 2 then k = "b"
		elseif i == 3 then k = "c"
		elseif i == 4 then k = "d"
		elseif i == 5 then k = "e"
		elseif i == 6 then k = "f"
		elseif i == 7 then k = "g"
		elseif i == 8 then k = "h"
		end
		if _G["abfOptions00PageButton1"..k]:IsShown() then _G["abfOptions00PageButton1"..k]:Hide() end
		if _G["abfOptions00PageButton2"..k]:IsShown() then _G["abfOptions00PageButton2"..k]:Hide() end
	end
end)
