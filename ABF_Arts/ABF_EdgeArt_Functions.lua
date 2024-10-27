local function ArtEdge()
-- functions for loading the saved variables --
-- art --
	function abfSavedArtEdge(text, bar)
		bar.actionButtons[1].EdgeLeftArt:Hide()
		bar.actionButtons[1].EdgeRightArt:Hide()
		if ABFactionBars[text]["Edge"]["Art"] == "Gryphon" then
			bar.actionButtons[1].EdgeLeftArt:SetAtlas("UI-HUD-ActionBar-Gryphon-Left", true, "LINEAR")
			bar.actionButtons[1].EdgeLeftArt:SetTexCoord(0, 1, 0, 1)
			bar.actionButtons[1].EdgeLeftArt:ClearAllPoints()
			bar.actionButtons[1].EdgeLeftArt:SetPoint("BOTTOMRIGHT", bar, "BOTTOMLEFT", 14, -24)
			bar.actionButtons[1].EdgeRightArt:SetAtlas("UI-HUD-ActionBar-Gryphon-Right", true, "LINEAR")
			bar.actionButtons[1].EdgeRightArt:ClearAllPoints()
			bar.actionButtons[1].EdgeRightArt:SetPoint("BOTTOMLEFT", bar, "BOTTOMRIGHT", -11, -24)
			bar.actionButtons[1].EdgeLeftArt:Show()
			bar.actionButtons[1].EdgeRightArt:Show()
		elseif ABFactionBars[text]["Edge"]["Art"] == "Wyvern" then
			bar.actionButtons[1].EdgeLeftArt:SetAtlas("UI-HUD-ActionBar-Wyvern-Left", true, "LINEAR")
			bar.actionButtons[1].EdgeLeftArt:SetTexCoord(0, 1, 0, 1)
			bar.actionButtons[1].EdgeLeftArt:ClearAllPoints()
			bar.actionButtons[1].EdgeLeftArt:SetPoint("BOTTOMRIGHT", bar, "BOTTOMLEFT", 14, -24)
			bar.actionButtons[1].EdgeRightArt:SetAtlas("UI-HUD-ActionBar-Wyvern-Right", true, "LINEAR")
			bar.actionButtons[1].EdgeRightArt:ClearAllPoints()
			bar.actionButtons[1].EdgeRightArt:SetPoint("BOTTOMLEFT", bar, "BOTTOMRIGHT", -11, -24)
			bar.actionButtons[1].EdgeLeftArt:Show()
			bar.actionButtons[1].EdgeRightArt:Show()
		elseif ABFactionBars[text]["Edge"]["Art"] == "WingedDragon" then
			bar.actionButtons[1].EdgeLeftArt:SetAtlas("UI-HUD-UnitFrame-Target-PortraitOn-Boss-Gold-Winged", true, "LINEAR")
			bar.actionButtons[1].EdgeLeftArt:SetTexCoord(1, 0, 0, 1)
			bar.actionButtons[1].EdgeLeftArt:ClearAllPoints()
			bar.actionButtons[1].EdgeLeftArt:SetPoint("CENTER", bar, "LEFT", 14, 2)
			bar.actionButtons[1].EdgeRightArt:SetAtlas("UI-HUD-UnitFrame-Target-PortraitOn-Boss-Gold-Winged", true, "LINEAR")
			bar.actionButtons[1].EdgeRightArt:ClearAllPoints()
			bar.actionButtons[1].EdgeRightArt:SetPoint("CENTER", bar, "RIGHT", -14, 2)
			bar.actionButtons[1].EdgeLeftArt:Show()
			bar.actionButtons[1].EdgeRightArt:Show()
		elseif ABFactionBars[text]["Edge"]["Art"] == "Dragon" then
			bar.actionButtons[1].EdgeLeftArt:SetAtlas("UI-HUD-UnitFrame-Target-PortraitOn-Boss-Gold", true, "LINEAR")
			bar.actionButtons[1].EdgeLeftArt:SetTexCoord(1, 0, 0, 1)
			bar.actionButtons[1].EdgeLeftArt:ClearAllPoints()
			bar.actionButtons[1].EdgeLeftArt:SetPoint("CENTER", bar, "LEFT", 24, 2)
			bar.actionButtons[1].EdgeRightArt:SetAtlas("UI-HUD-UnitFrame-Target-PortraitOn-Boss-Gold", true, "LINEAR")
			bar.actionButtons[1].EdgeRightArt:ClearAllPoints()
			bar.actionButtons[1].EdgeRightArt:SetPoint("CENTER", bar, "RIGHT", -24, 2)
			bar.actionButtons[1].EdgeLeftArt:Show()
			bar.actionButtons[1].EdgeRightArt:Show()
		end
	end
-- color --
	function abfSavedColorEdge(text, bar)
		if ABFactionBars[text]["Edge"]["ArtColorChoice"] == "One Color" then
			if ABFactionBars[text]["Edge"]["ArtColorOptions"] == "Default Color" then
				bar.actionButtons[1].EdgeLeftArt:SetDesaturation(0)
				bar.actionButtons[1].EdgeRightArt:SetDesaturation(0)
			elseif ABFactionBars[text]["Edge"]["ArtColorOptions"] == "Class Color" or ABFactionBars[text]["Edge"]["ArtColorOptions"] == "Faction Color" then
				bar.actionButtons[1].EdgeLeftArt:SetDesaturation(1)
				bar.actionButtons[1].EdgeRightArt:SetDesaturation(1)
			else
				bar.actionButtons[1].EdgeLeftArt:SetDesaturation(ABFactionBars[text]["Edge"]["ArtColorDesaturation"])
				bar.actionButtons[1].EdgeRightArt:SetDesaturation(ABFactionBars[text]["Edge"]["ArtColorDesaturation"])
			end
			bar.actionButtons[1].EdgeLeftArt:SetVertexColor(abfGetLocalColor(ABFactionBars[text]["Edge"]["ArtColor"]))
			bar.actionButtons[1].EdgeRightArt:SetVertexColor(abfGetLocalColor(ABFactionBars[text]["Edge"]["ArtColor"]))
		elseif ABFactionBars[text]["Edge"]["ArtColorChoice"] == "Gradient Color" then
			local firstColor = CreateColor(abfGetLocalColor(ABFactionBars[text]["Edge"]["ArtGradientColor1"]))
			local secondColor = CreateColor(abfGetLocalColor(ABFactionBars[text]["Edge"]["ArtGradientColor2"]))
			bar.actionButtons[1].EdgeLeftArt:SetDesaturation(1)
			bar.actionButtons[1].EdgeRightArt:SetDesaturation(1)
			if ABFactionBars[text]["Edge"]["ArtGradientOrientation"] == "HORIZONTAL" then
				bar.actionButtons[1].EdgeLeftArt:SetGradient(ABFactionBars[text]["Edge"]["ArtGradientOrientation"], firstColor, secondColor)
				bar.actionButtons[1].EdgeRightArt:SetGradient(ABFactionBars[text]["Edge"]["ArtGradientOrientation"], secondColor, firstColor)
			elseif ABFactionBars[text]["Edge"]["ArtGradientOrientation"] == "VERTICAL" then
				bar.actionButtons[1].EdgeLeftArt:SetGradient(ABFactionBars[text]["Edge"]["ArtGradientOrientation"], firstColor, secondColor)
				bar.actionButtons[1].EdgeRightArt:SetGradient(ABFactionBars[text]["Edge"]["ArtGradientOrientation"], firstColor, secondColor)
			end
		end
	end
end
local function Edges(text, bar)
	abfSavedArtEdge(text, bar)
	abfSavedColorEdge(text, bar)
end
-- Events time --
local function EventsTime(self, event, arg1, arg2, arg3)
	if event == "PLAYER_LOGIN" then
		ArtEdge()
-- loading... --
		Edges("Bar1", MainMenuBar)
		Edges("Bar2", MultiBarBottomLeft)
		Edges("Bar3", MultiBarBottomRight)
		Edges("Bar4", MultiBarRight)
		Edges("Bar5", MultiBarLeft)
		Edges("Bar6", MultiBar5)
		Edges("Bar7", MultiBar6)
		Edges("Bar8", MultiBar7)
	end
end
abfZlave:HookScript("OnEvent", EventsTime)
