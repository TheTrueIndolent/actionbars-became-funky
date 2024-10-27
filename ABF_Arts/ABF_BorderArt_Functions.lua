local function ArtBorder()
-- functions for loading the saved variables --
-- art --
	function abfSavedArtBorder(text, bar)
		if text == "Bar1" and bar == MainMenuBar then
			if ABFactionBars[text]["BorderVisibility"] then
				bar.BorderArt:Show()
			else
				bar.BorderArt:Hide()
			end
		else
			if ABFactionBars[text]["BorderVisibility"] then
				bar.actionButtons[1].abfBorderArt:Show()
			else
				bar.actionButtons[1].abfBorderArt:Hide()
			end
		end
	end
-- color --
	function abfSavedColorBorder(text, bar)
		if text == "Bar1" and bar == MainMenuBar then
			if ABFactionBars[text]["BorderArtColorMode"] == "One Color" then
				bar.BorderArt:SetDesaturation(1)
				bar.BorderArt:SetVertexColor(abfGetLocalColor(ABFactionBars[text]["BorderArtColor"]))
			elseif ABFactionBars[text]["BorderArtColorMode"] == "Gradient Color" then
				bar.BorderArt:SetDesaturation(1)
				local firstColor = CreateColor(abfGetLocalColor(ABFactionBars[text]["BorderArtGradient1"]))
				local secondColor = CreateColor(abfGetLocalColor(ABFactionBars[text]["BorderArtGradient2"]))
				bar.BorderArt:SetGradient(ABFactionBars[text]["BorderArtGradientOrientation"], firstColor, secondColor)
			end
		else
			if ABFactionBars[text]["BorderArtColorMode"] == "One Color" then
				bar.actionButtons[1].abfBorderArt:SetDesaturation(1)
				bar.actionButtons[1].abfBorderArt:SetVertexColor(abfGetLocalColor(ABFactionBars[text]["BorderArtColor"]))
			elseif ABFactionBars[text]["BorderArtColorMode"] == "Gradient Color" then
				bar.actionButtons[1].abfBorderArt:SetDesaturation(1)
				local firstColor = CreateColor(abfGetLocalColor(ABFactionBars[text]["BorderArtGradient1"]))
				local secondColor = CreateColor(abfGetLocalColor(ABFactionBars[text]["BorderArtGradient2"]))
				bar.actionButtons[1].abfBorderArt:SetGradient(ABFactionBars[text]["BorderArtGradientOrientation"], firstColor, secondColor)
			end
		end
	end
end
local function Borders(text, bar)
	abfSavedArtBorder(text, bar)
	abfSavedColorBorder(text, bar)
end
-- Events time --
local function EventsTime(self, event, arg1, arg2, arg3)
	if event == "PLAYER_LOGIN" then
		ArtBorder()
-- loading... --
		Borders("Bar1", MainMenuBar)
		Borders("Bar2", MultiBarBottomLeft)
		Borders("Bar3", MultiBarBottomRight)
		Borders("Bar4", MultiBarRight)
		Borders("Bar5", MultiBarLeft)
		Borders("Bar6", MultiBar5)
		Borders("Bar7", MultiBar6)
		Borders("Bar8", MultiBar7)
	end
end
abfZlave:HookScript("OnEvent", EventsTime)
