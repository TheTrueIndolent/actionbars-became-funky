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
