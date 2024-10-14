-- Function for commas --
local function comma_value(n)
	local left,num,right = string.match(n,'^([^%d]*%d)(%d*)(.-)$')
	return left..(num:reverse():gsub('(%d%d%d)','%1,'):reverse())..right
end
-- function for the saved variables --
function abfSavedStatusTrackingBar1()
-- fonts, position main & second --
	for i = 1, 4, 1 do
		if ABFstatusTrackingBar["Bar1"]["Fonts"] == "Default" then
			MainStatusTrackingBarContainer.bars[i].OverlayFrame.Text:SetFontObject("TextStatusBarText")
		else
			MainStatusTrackingBarContainer.bars[i].OverlayFrame.Text:SetFontObject("abf_"..ABFstatusTrackingBar["Bar1"]["Fonts"])
		end
		if ABFstatusTrackingBar["Bar2"]["Fonts"] == "Default" then
			SecondaryStatusTrackingBarContainer.bars[i].OverlayFrame.Text:SetFontObject("TextStatusBarText")
		else
			SecondaryStatusTrackingBarContainer.bars[i].OverlayFrame.Text:SetFontObject("abf_"..ABFstatusTrackingBar["Bar2"]["Fonts"])
		end
		MainStatusTrackingBarContainer.bars[i].OverlayFrame.Text:ClearAllPoints()
		MainStatusTrackingBarContainer.bars[i].OverlayFrame.Text:SetPoint("CENTER", 0, 0)
		SecondaryStatusTrackingBarContainer.bars[i].OverlayFrame.Text:ClearAllPoints()
		SecondaryStatusTrackingBarContainer.bars[i].OverlayFrame.Text:SetPoint("CENTER", 0, 0)
	end
	MainStatusTrackingBarContainer:SetScale(ABFstatusTrackingBar["Bar1"]["Scale"])
	SecondaryStatusTrackingBarContainer:SetScale(ABFstatusTrackingBar["Bar2"]["Scale"])
end
function abfSavedStatusTrackingBar2()
-- main --
	if ABFstatusTrackingBar["Bar1"]["Visibility"] then
		MainStatusTrackingBarContainer.bars[1].OverlayFrame.Text:Show()
		MainStatusTrackingBarContainer.bars[1].OverlayFrame.Text:HookScript("OnHide", function(self)
			local watchedFactionData = C_Reputation.GetWatchedFactionData()
			if not watchedFactionData or watchedFactionData.factionID == 0 then
				return nil
			end
			local factionID = watchedFactionData.factionID
			local abfName = watchedFactionData.name
			local needsAccountWideLabel = C_Reputation.IsAccountWideReputation(factionID)
				if needsAccountWideLabel then
					abfName = abfName.." "..REPUTATION_STATUS_BAR_LABEL_ACCOUNT_WIDE
				end
			local abfValue = comma_value(MainStatusTrackingBarContainer.bars[1].value)
			local abfMax = comma_value(MainStatusTrackingBarContainer.bars[1].max)
			self:SetText(abfName..": "..abfValue.."/"..abfMax)
			self:Show()
		end)
		MainStatusTrackingBarContainer.bars[2].OverlayFrame.Text:Show()
		MainStatusTrackingBarContainer.bars[2].OverlayFrame.Text:HookScript("OnShow", function(self)
			local current = UnitHonor("player")
			local maxHonor = UnitHonorMax("player")
			self:SetText("Honor: "..comma_value(current).."/"..comma_value(maxHonor))
		end)
		MainStatusTrackingBarContainer.bars[2].OverlayFrame.Text:HookScript("OnHide", function(self)
			self:Show()
		end)
		MainStatusTrackingBarContainer.bars[4].OverlayFrame.Text:Show()
		MainStatusTrackingBarContainer.bars[4].OverlayFrame.Text:HookScript("OnShow", function(self)
			self:SetText("XP: "..comma_value(MainStatusTrackingBarContainer.bars[4].currXP).."/"..comma_value(MainStatusTrackingBarContainer.bars[4].maxBar))
		end)
		MainStatusTrackingBarContainer.bars[4].OverlayFrame.Text:HookScript("OnHide", function(self)
			self:Show()
		end)
	end
-- secondary --
	if ABFstatusTrackingBar["Bar2"]["Visibility"] then
		SecondaryStatusTrackingBarContainer.bars[1].OverlayFrame.Text:Show()
		SecondaryStatusTrackingBarContainer.bars[1].OverlayFrame.Text:HookScript("OnHide", function(self)
			local watchedFactionData = C_Reputation.GetWatchedFactionData()
			if not watchedFactionData or watchedFactionData.factionID == 0 then
				return nil
			end
			local factionID = watchedFactionData.factionID
			local abfName = watchedFactionData.name
			local needsAccountWideLabel = C_Reputation.IsAccountWideReputation(factionID)
				if needsAccountWideLabel then
					abfName = abfName.." "..REPUTATION_STATUS_BAR_LABEL_ACCOUNT_WIDE
				end
			local abfValue = comma_value(SecondaryStatusTrackingBarContainer.bars[1].value)
			local abfMax = comma_value(SecondaryStatusTrackingBarContainer.bars[1].max)
			self:SetText(abfName..": "..abfValue.."/"..abfMax)
			self:Show()
		end)
		SecondaryStatusTrackingBarContainer.bars[2].OverlayFrame.Text:Show()
		SecondaryStatusTrackingBarContainer.bars[2].OverlayFrame.Text:HookScript("OnShow", function(self)
			local current = UnitHonor("player")
			local maxHonor = UnitHonorMax("player")
			self:SetText("Honor: "..comma_value(current).."/"..comma_value(maxHonor))
		end)
		SecondaryStatusTrackingBarContainer.bars[2].OverlayFrame.Text:HookScript("OnHide", function(self)
			self:Show()
		end)
	end
end
