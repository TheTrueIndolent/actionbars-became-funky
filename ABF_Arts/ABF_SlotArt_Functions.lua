-- functions for loading the saved variables --
-- art --
function abfSavedArtSlot(text, bar)
	for i = 1, 12, 1 do
		bar.actionButtons[i].SlotBackground:Hide()
		bar.actionButtons[i].SlotArt:ClearAllPoints()
		bar.actionButtons[i].SlotArt:SetAllPoints(bar.actionButtons[i])
		bar.actionButtons[i].SlotArt:Show()
		bar.actionButtons[i].NightfaeBack:Hide()
		bar.actionButtons[i].KyrianBack:Hide()
		bar.actionButtons[i].NecrolordBack:Hide()
		bar.actionButtons[i].VenthyrBack:Hide()
	end
	if ABFactionBars[text]["Slot"]["Art"] == "None" then
		for i = 1, 12, 1 do
			bar.actionButtons[i].SlotArt:Hide()
		end
	elseif ABFactionBars[text]["Slot"]["Art"] == "SlotArt" then
		for i = 1, 12, 1 do
			bar.actionButtons[i].SlotArt:SetAtlas("ui-hud-actionbar-iconframe-slot")
		end
	elseif ABFactionBars[text]["Slot"]["Art"] == "SlotArt2" then
		for i = 1, 12, 1 do
			bar.actionButtons[i].SlotArt:SetAtlas("socket-prismatic-background")
		end
	elseif ABFactionBars[text]["Slot"]["Art"] == "Nightfae" then
		for i = 1, 12, 1 do
			bar.actionButtons[i].SlotArt:SetAtlas("CovenantSanctum-Text-Border-Nightfae")
			bar.actionButtons[i].SlotArt:ClearAllPoints()
			bar.actionButtons[i].SlotArt:SetPoint("TOPLEFT", bar.actionButtons[i], "TOPLEFT", 2, -2)
			bar.actionButtons[i].SlotArt:SetPoint("BOTTOMRIGHT", bar.actionButtons[i], "BOTTOMRIGHT", -2, 0)
			bar.actionButtons[i].NightfaeBack:Show()
		end
	elseif ABFactionBars[text]["Slot"]["Art"] == "Kyrian" then
		for i = 1, 12, 1 do
			bar.actionButtons[i].SlotArt:SetAtlas("CovenantSanctum-Text-Border-Kyrian")
			bar.actionButtons[i].SlotArt:ClearAllPoints()
			bar.actionButtons[i].SlotArt:SetPoint("TOPLEFT", bar.actionButtons[i], "TOPLEFT", 2, -2)
			bar.actionButtons[i].SlotArt:SetPoint("BOTTOMRIGHT", bar.actionButtons[i], "BOTTOMRIGHT", -2, 0)
			bar.actionButtons[i].KyrianBack:Show()
		end
	elseif ABFactionBars[text]["Slot"]["Art"] == "Necrolord" then
		for i = 1, 12, 1 do
			bar.actionButtons[i].SlotArt:SetAtlas("CovenantSanctum-Text-Border-Necrolord")
			bar.actionButtons[i].SlotArt:ClearAllPoints()
			bar.actionButtons[i].SlotArt:SetPoint("TOPLEFT", bar.actionButtons[i], "TOPLEFT", 2, -2)
			bar.actionButtons[i].SlotArt:SetPoint("BOTTOMRIGHT", bar.actionButtons[i], "BOTTOMRIGHT", -2, 0)
			bar.actionButtons[i].NecrolordBack:Show()
		end
	elseif ABFactionBars[text]["Slot"]["Art"] == "Venthyr" then
		for i = 1, 12, 1 do
			bar.actionButtons[i].SlotArt:SetAtlas("CovenantSanctum-Text-Border-Venthyr")
			bar.actionButtons[i].SlotArt:ClearAllPoints()
			bar.actionButtons[i].SlotArt:SetPoint("TOPLEFT", bar.actionButtons[i], "TOPLEFT", 2, -2)
			bar.actionButtons[i].SlotArt:SetPoint("BOTTOMRIGHT", bar.actionButtons[i], "BOTTOMRIGHT", -2, 0)
			bar.actionButtons[i].VenthyrBack:Show()
		end
	end
end
-- color --
function abfSavedColorSlot(text, bar)
	if ABFactionBars[text]["Slot"]["ArtColorChoice"] == "One Color" then
		if ABFactionBars[text]["Slot"]["ArtColorOptions"] == "Default Color" then
			for i = 1, 12, 1 do
				bar.actionButtons[i].SlotArt:SetDesaturation(0)
				bar.actionButtons[i].NightfaeBack:SetDesaturation(0)
				bar.actionButtons[i].KyrianBack:SetDesaturation(0)
				bar.actionButtons[i].NecrolordBack:SetDesaturation(0)
				bar.actionButtons[i].VenthyrBack:SetDesaturation(0)
			end
		elseif ABFactionBars[text]["Slot"]["ArtColorOptions"] == "Class Color" or ABFactionBars[text]["Slot"]["ArtColorOptions"] == "Faction Color" then
			for i = 1, 12, 1 do
				bar.actionButtons[i].SlotArt:SetDesaturation(1)
				bar.actionButtons[i].NightfaeBack:SetDesaturation(1)
				bar.actionButtons[i].KyrianBack:SetDesaturation(1)
				bar.actionButtons[i].NecrolordBack:SetDesaturation(1)
				bar.actionButtons[i].VenthyrBack:SetDesaturation(1)
			end
		else
			for i = 1, 12, 1 do
				bar.actionButtons[i].SlotArt:SetDesaturation(ABFactionBars[text]["Slot"]["ArtColorDesaturation"])
				bar.actionButtons[i].NightfaeBack:SetDesaturation(ABFactionBars[text]["Slot"]["ArtColorDesaturation"])
				bar.actionButtons[i].KyrianBack:SetDesaturation(ABFactionBars[text]["Slot"]["ArtColorDesaturation"])
				bar.actionButtons[i].NecrolordBack:SetDesaturation(ABFactionBars[text]["Slot"]["ArtColorDesaturation"])
				bar.actionButtons[i].VenthyrBack:SetDesaturation(ABFactionBars[text]["Slot"]["ArtColorDesaturation"])
			end
		end
		for i = 1, 12, 1 do
			bar.actionButtons[i].SlotArt:SetVertexColor(abfGetLocalColor(ABFactionBars[text]["Slot"]["ArtColor"]))
			bar.actionButtons[i].NightfaeBack:SetVertexColor(abfGetLocalColor(ABFactionBars[text]["Slot"]["ArtColor"]))
			bar.actionButtons[i].KyrianBack:SetVertexColor(abfGetLocalColor(ABFactionBars[text]["Slot"]["ArtColor"]))
			bar.actionButtons[i].NecrolordBack:SetVertexColor(abfGetLocalColor(ABFactionBars[text]["Slot"]["ArtColor"]))
			bar.actionButtons[i].VenthyrBack:SetVertexColor(abfGetLocalColor(ABFactionBars[text]["Slot"]["ArtColor"]))
		end
	elseif ABFactionBars[text]["Slot"]["ArtColorChoice"] == "Gradient Color" then
		local firstColor = CreateColor(abfGetLocalColor(ABFactionBars[text]["Slot"]["ArtGradientColor1"]))
		local secondColor = CreateColor(abfGetLocalColor(ABFactionBars[text]["Slot"]["ArtGradientColor2"]))
		for i = 1, 12, 1 do
			bar.actionButtons[i].SlotArt:SetDesaturation(1)
			bar.actionButtons[i].NightfaeBack:SetDesaturation(1)
			bar.actionButtons[i].KyrianBack:SetDesaturation(1)
			bar.actionButtons[i].NecrolordBack:SetDesaturation(1)
			bar.actionButtons[i].VenthyrBack:SetDesaturation(1)
			bar.actionButtons[i].SlotArt:SetGradient(ABFactionBars[text]["Slot"]["ArtGradientOrientation"], firstColor, secondColor)
			bar.actionButtons[i].NightfaeBack:SetGradient(ABFactionBars[text]["Slot"]["ArtGradientOrientation"], firstColor, secondColor)
			bar.actionButtons[i].KyrianBack:SetGradient(ABFactionBars[text]["Slot"]["ArtGradientOrientation"], firstColor, secondColor)
			bar.actionButtons[i].NecrolordBack:SetGradient(ABFactionBars[text]["Slot"]["ArtGradientOrientation"], firstColor, secondColor)
			bar.actionButtons[i].VenthyrBack:SetGradient(ABFactionBars[text]["Slot"]["ArtGradientOrientation"], firstColor, secondColor)
		end
	end
end
