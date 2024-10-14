-- functions for loading the saved variables --
-- fonts --
function abfSavedFonts(text, bar)
	for i = 1, 12, 1 do
		if ABFactionBars[text]["NameFonts"] == "Default" then
			bar.actionButtons[i].Name:SetFontObject("GameFontHighlightSmallOutline")
		else
			bar.actionButtons[i].Name:SetFontObject("abfName_"..ABFactionBars[text]["NameFonts"])
		end
		if ABFactionBars[text]["HotKeyFonts"] == "Default" then
			bar.actionButtons[i].HotKey:SetFontObject("NumberFontNormalSmallGray")
		else
			bar.actionButtons[i].HotKey:SetFontObject("abf_"..ABFactionBars[text]["HotKeyFonts"])
		end
		if ABFactionBars[text]["CountFonts"] == "Default" then
			bar.actionButtons[i].Count:SetFontObject("NumberFontNormal")
		else
			bar.actionButtons[i].Count:SetFontObject("abf_"..ABFactionBars[text]["CountFonts"])
		end
	end
end
