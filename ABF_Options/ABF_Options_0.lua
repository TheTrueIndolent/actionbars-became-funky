-- taking care of the panel --
abfOptions0.BGtexture:SetAlpha(0.70)
abfOptions0.TopTxt:SetText("It would be good when you open the"..abfHighColor:WrapTextInColorCode(" Options' Panel ").."to close the other ones so you can watch what changes you are making!|n|n|T"..C_AddOns.GetAddOnMetadata("ABF", "IconTexture")..":16|t"..abfHighColor:WrapTextInColorCode(" Note: ").."Before setting up the add on, you "..abfHighColor:WrapTextInColorCode("MUST").." go to Game Menu ("..abfHighColor:WrapTextInColorCode("ESC")..") --> "..abfHighColor:WrapTextInColorCode("Edit Mode").." --> Choose the "..abfHighColor:WrapTextInColorCode("Action Bar 1").." and choose - check the ‘"..abfHighColor:WrapTextInColorCode("Hide Bar Art").."’ option. The Bar Art "..abfHighColor:WrapTextInColorCode("MUST").." be hidden, so it won’t cause any trouble.")
abfOptions0.CenterTxt:SetText("|T"..C_AddOns.GetAddOnMetadata("ABF", "IconTexture")..":16|t "..C_AddOns.GetAddOnMetadata("ABF", "Title").." is an add on that enchants your Action Bars in a "..abfHighColor:WrapTextInColorCode("Funky").." way!|n|nPress the button below to open the options pane!")
abfOptions0.BottomTxt:SetText("Thank you for using this amazing add-on!|nYou are a |cff00CED1Funky|r and a |cffFF0055Groovy|r person!|nMay the good |cff9400D3Mojo|r be with you!")
-- button 1 Options Panel --
abfOptions0Button1.Text:SetText("Options Panel")
-- enter --
abfOptions0Button1:SetScript("OnEnter", function(self)
	abfEnteringMenus(self)
	GameTooltip:SetText("|T"..C_AddOns.GetAddOnMetadata("ABF", "IconTexture")..":16|t "..abfMainColor:WrapTextInColorCode(C_AddOns.GetAddOnMetadata("ABF", "Title")).."|nClick: "..abfMainColor:WrapTextInColorCode("Open the main panel of settings!")) 
end)
-- leave --
abfOptions0Button1:SetScript("OnLeave", abfLeavingMenus)
-- on click --
abfOptions0Button1:HookScript("OnClick", function(self, button, down)
	if button == "LeftButton" and down == false then
		abfShowMenu()
	end
end)
-- Move the Tabs --
abfOptions00:RegisterForDrag("LeftButton")
abfOptions00:SetScript("OnDragStart", abfOptions00.StartMoving)
abfOptions00:SetScript("OnDragStop", abfOptions00.StopMovingOrSizing)
-- taking care of the Tabs --
for i = 1, 8, 1 do
	_G["abfOptions00Tab"..i].Text:SetText("Actionbar "..i)
end
abfOptions00Tab9.Text:SetText("Status Bars")
abfOptions00Tab10.Text:SetText("Profiles")
for i = 1, 9, 1 do
	_G["abfOptions00Tab"..i].CenterTxt:Hide()
end
abfOptions00Tab10.CenterTxt:SetText("Thank you for using this amazing add-on!|nYou are a |cff00CED1Funky|r and a |cffFF0055Groovy|r person!|nMay the good |cff9400D3Mojo|r be with you!")
abfOptions00.BGtexture:SetGradient("VERTICAL", abfNoMainColor, abfMainColor)
abfOptions00.BGtexture:ClearAllPoints()
abfOptions00.BGtexture:SetPoint("TOPRIGHT", abfOptions00, "TOPRIGHT", 0, 0)
abfOptions00.BGtexture:SetPoint("BOTTOMLEFT", abfOptions00Tab10, "BOTTOMLEFT", 0, -128)
-- clicking on the tabs --
for i = 1, 10, 1 do
	_G["abfOptions00Tab"..i]:HookScript("OnClick", function(self, button, down)
		if button == "LeftButton" and down == false then
			if not _G["abfOptions"..i]:IsShown() then _G["abfOptions"..i]:Show() end
		end
	end)
end
-- take care of the page buttons --
-- Options button 1 - a --
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
	_G["abfOptions00PageButton1"..k].Text:SetText("Page 1")
	_G["abfOptions00PageButton2"..k].Text:SetText("Page 2")
	_G["abfOptions00PageButton1"..k]:HookScript("OnClick", function(self, button, down)
		if button == "LeftButton" and down == false then
			if not _G["abfOptions"..i]:IsShown() then _G["abfOptions"..i]:Show() end
		end
	end)
	_G["abfOptions00PageButton2"..k]:HookScript("OnClick", function(self, button, down)
		if button == "LeftButton" and down == false then
			if not _G["abfOptions"..i.."a"]:IsShown() then _G["abfOptions"..i.."a"]:Show() end
		end
	end)
end
-- showing the tabs --
abfOptions00:SetScript("OnShow", function(self)
	if not abfOptions1:IsShown() then abfOptions1:Show() end
end)
-- hiding the tabs --
abfOptions00:HookScript("OnHide", function(self)
	for i = 1, 10, 1 do
		if _G["abfOptions"..i]:IsShown() then _G["abfOptions"..i]:Hide() end
	end
	for i = 1, 8, 1 do
		if _G["abfOptions"..i.."a"]:IsShown() then _G["abfOptions"..i.."a"]:Hide() end
	end
end)
-- Events Time --
local function EventsTime(self, event, arg1, arg2, arg3, arg4)
	if event == "PLAYER_LOGIN" then
		local category = Settings.RegisterCanvasLayoutCategory(self, "ABF")
		category:SetName("|T"..C_AddOns.GetAddOnMetadata("ABF", "IconTexture")..":16:16:0:-6|t "..C_AddOns.GetAddOnMetadata("ABF", "Title"))
		Settings.RegisterAddOnCategory(category)
	end
end
abfOptions0:SetScript("OnEvent", EventsTime)
