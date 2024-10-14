-- functions for loading the saved variables --
-- art --
function abfSavedArtTop(text, bar)
	bar.actionButtons[1].TopArt:Hide()
	bar.actionButtons[1].TopLeftArt:Hide()
	bar.actionButtons[1].TopRightArt:Hide()
	if ABFactionBars[text]["Top"]["Art"] == "JailersTower" then
		bar.actionButtons[1].TopArt:SetAtlas("jailerstower-score-topper", true, "LINEAR")
		bar.actionButtons[1].TopArt:ClearAllPoints()
		bar.actionButtons[1].TopArt:SetPoint("BOTTOM", bar, "TOP", 0, -28)
		bar.actionButtons[1].TopArt:Show()
	elseif ABFactionBars[text]["Top"]["Art"] == "Horns" then
		bar.actionButtons[1].TopLeftArt:SetAtlas("BossBanner-LeftFillagree", true, "LINEAR")
		bar.actionButtons[1].TopLeftArt:ClearAllPoints()
		bar.actionButtons[1].TopLeftArt:SetPoint("BOTTOMRIGHT", bar, "TOP", 0, 1)
		bar.actionButtons[1].TopLeftArt:Show()
		bar.actionButtons[1].TopRightArt:SetAtlas("BossBanner-RightFillagree", true, "LINEAR")
		bar.actionButtons[1].TopRightArt:ClearAllPoints()
		bar.actionButtons[1].TopRightArt:SetPoint("BOTTOMLEFT", bar, "TOP", 0, 1)
		bar.actionButtons[1].TopRightArt:Show()
	elseif ABFactionBars[text]["Top"]["Art"] == "BossHorns" then
		bar.actionButtons[1].TopArt:SetAtlas("BossBanner-TopFillagree", true, "LINEAR")
		bar.actionButtons[1].TopArt:ClearAllPoints()
		bar.actionButtons[1].TopArt:SetPoint("BOTTOM", bar, "TOP", 0, -15)
		bar.actionButtons[1].TopArt:Show()
	end
end
-- color --
function abfSavedColorTop(text, bar)
	if ABFactionBars[text]["Top"]["ArtColorChoice"] == "One Color" then
		if ABFactionBars[text]["Top"]["ArtColorOptions"] == "Default Color" then
			bar.actionButtons[1].TopArt:SetDesaturation(0)
			bar.actionButtons[1].TopLeftArt:SetDesaturation(0)
			bar.actionButtons[1].TopRightArt:SetDesaturation(0)
		elseif ABFactionBars[text]["Top"]["ArtColorOptions"] == "Class Color" or ABFactionBars[text]["Top"]["ArtColorOptions"] == "Faction Color" then
			bar.actionButtons[1].TopArt:SetDesaturation(1)
			bar.actionButtons[1].TopLeftArt:SetDesaturation(1)
			bar.actionButtons[1].TopRightArt:SetDesaturation(1)
		else
			bar.actionButtons[1].TopArt:SetDesaturation(ABFactionBars[text]["Top"]["ArtColorDesaturation"])
			bar.actionButtons[1].TopLeftArt:SetDesaturation(ABFactionBars[text]["Top"]["ArtColorDesaturation"])
			bar.actionButtons[1].TopRightArt:SetDesaturation(ABFactionBars[text]["Top"]["ArtColorDesaturation"])
		end
		bar.actionButtons[1].TopArt:SetVertexColor(abfGetLocalColor(ABFactionBars[text]["Top"]["ArtColor"]))
		bar.actionButtons[1].TopLeftArt:SetVertexColor(abfGetLocalColor(ABFactionBars[text]["Top"]["ArtColor"]))
		bar.actionButtons[1].TopRightArt:SetVertexColor(abfGetLocalColor(ABFactionBars[text]["Top"]["ArtColor"]))
	elseif ABFactionBars[text]["Top"]["ArtColorChoice"] == "Gradient Color" then
		local firstColor = CreateColor(abfGetLocalColor(ABFactionBars[text]["Top"]["ArtGradientColor1"]))
		local secondColor = CreateColor(abfGetLocalColor(ABFactionBars[text]["Top"]["ArtGradientColor2"]))
		bar.actionButtons[1].TopArt:SetDesaturation(1)
		bar.actionButtons[1].TopLeftArt:SetDesaturation(1)
		bar.actionButtons[1].TopRightArt:SetDesaturation(1)
		bar.actionButtons[1].TopArt:SetGradient(ABFactionBars[text]["Top"]["ArtGradientOrientation"], firstColor, secondColor)
		bar.actionButtons[1].TopLeftArt:SetGradient(ABFactionBars[text]["Top"]["ArtGradientOrientation"], firstColor, secondColor)
		bar.actionButtons[1].TopRightArt:SetGradient(ABFactionBars[text]["Top"]["ArtGradientOrientation"], firstColor, secondColor)
	end
end
