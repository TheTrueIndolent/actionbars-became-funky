local function ArtBottom()
-- functions for loading the saved variables --
-- art --
	function abfSavedArtBottom(text, bar)
		bar.actionButtons[1].BottomArt:Hide()
		if ABFactionBars[text]["Bottom"]["Art"] == "BottomLine1" then
			bar.actionButtons[1].BottomArt:SetAtlas("UI-Achievement-Border-7", true, "LINEAR")
			bar.actionButtons[1].BottomArt:ClearAllPoints()
			bar.actionButtons[1].BottomArt:SetPoint("TOPLEFT", bar, "BOTTOMLEFT", 0, -2)
			bar.actionButtons[1].BottomArt:SetPoint("TOPRIGHT", bar, "BOTTOMRIGHT", 0, -2)
			bar.actionButtons[1].BottomArt:Show()
		elseif ABFactionBars[text]["Bottom"]["Art"] == "SoftCloud" then
			bar.actionButtons[1].BottomArt:SetAtlas("AftLevelup-SoftCloud", true, "LINEAR")
			bar.actionButtons[1].BottomArt:ClearAllPoints()
			bar.actionButtons[1].BottomArt:SetPoint("TOPLEFT", bar, "BOTTOMLEFT", -64, 8)
			bar.actionButtons[1].BottomArt:SetPoint("TOPRIGHT", bar, "BOTTOMRIGHT", 64, 8)
			bar.actionButtons[1].BottomArt:SetHeight(bar.actionButtons[1].BottomArt:GetHeight()/4)
			bar.actionButtons[1].BottomArt:Show()
		elseif ABFactionBars[text]["Bottom"]["Art"] == "JailersTower" then
			bar.actionButtons[1].BottomArt:SetAtlas("jailerstower-score-footer", true, "LINEAR")
			bar.actionButtons[1].BottomArt:ClearAllPoints()
			bar.actionButtons[1].BottomArt:SetPoint("TOP", bar, "BOTTOM", 0, 34)
			bar.actionButtons[1].BottomArt:Show()
		end
	end
-- color --
	function abfSavedColorBottom(text, bar)
		if ABFactionBars[text]["Bottom"]["ArtColorChoice"] == "One Color" then
			if ABFactionBars[text]["Bottom"]["ArtColorOptions"] == "Default Color" then
				bar.actionButtons[1].BottomArt:SetDesaturation(0)
			elseif ABFactionBars[text]["Bottom"]["ArtColorOptions"] == "Class Color" or ABFactionBars[text]["Bottom"]["ArtColorOptions"] == "Faction Color" then
				bar.actionButtons[1].BottomArt:SetDesaturation(1)
			else
				bar.actionButtons[1].BottomArt:SetDesaturation(ABFactionBars[text]["Bottom"]["ArtColorDesaturation"])
			end
				bar.actionButtons[1].BottomArt:SetVertexColor(abfGetLocalColor(ABFactionBars[text]["Bottom"]["ArtColor"]))
		elseif ABFactionBars[text]["Bottom"]["ArtColorChoice"] == "Gradient Color" then
			local firstColor = CreateColor(abfGetLocalColor(ABFactionBars[text]["Bottom"]["ArtGradientColor1"]))
			local secondColor = CreateColor(abfGetLocalColor(ABFactionBars[text]["Bottom"]["ArtGradientColor2"]))
			bar.actionButtons[1].BottomArt:SetDesaturation(1)
			bar.actionButtons[1].BottomArt:SetGradient(ABFactionBars[text]["Bottom"]["ArtGradientOrientation"], firstColor, secondColor)
		end
	end
end
local function Bottom(text, bar)
	abfSavedArtBottom(text, bar)
	abfSavedColorBottom(text, bar)
end
-- Events time --
local function EventsTime(self, event, arg1, arg2, arg3)
	if event == "PLAYER_LOGIN" then
		ArtBottom()
-- loading... --
		Bottom("Bar1", MainMenuBar)
		Bottom("Bar2", MultiBarBottomLeft)
		Bottom("Bar3", MultiBarBottomRight)
		Bottom("Bar4", MultiBarRight)
		Bottom("Bar5", MultiBarLeft)
		Bottom("Bar6", MultiBar5)
		Bottom("Bar7", MultiBar6)
		Bottom("Bar8", MultiBar7)
	end
end
abfZlave:HookScript("OnEvent", EventsTime)
