abfOptions9.TopTxt:SetText("Animations options!")
-- Showing the panel --
abfOptions9:HookScript("OnShow", function(self)
	--CheckSavedVariables()
	if abfOptions1:IsShown() then abfOptions1:Hide() end
	if abfOptions2:IsShown() then abfOptions2:Hide() end
	if abfOptions3:IsShown() then abfOptions3:Hide() end
	if abfOptions4:IsShown() then abfOptions4:Hide() end
	if abfOptions5:IsShown() then abfOptions5:Hide() end
	if abfOptions6:IsShown() then abfOptions6:Hide() end
	if abfOptions7:IsShown() then abfOptions7:Hide() end
	if abfOptions8:IsShown() then abfOptions8:Hide() end
	if abfOptions10:IsShown() then abfOptions10:Hide() end
	abfOptions00Tab1.Text:SetTextColor(abfMainColor:GetRGB())
	abfOptions00Tab2.Text:SetTextColor(abfMainColor:GetRGB())
	abfOptions00Tab3.Text:SetTextColor(abfMainColor:GetRGB())
	abfOptions00Tab4.Text:SetTextColor(abfMainColor:GetRGB())
	abfOptions00Tab5.Text:SetTextColor(abfMainColor:GetRGB())
	abfOptions00Tab6.Text:SetTextColor(abfMainColor:GetRGB())
	abfOptions00Tab7.Text:SetTextColor(abfMainColor:GetRGB())
	abfOptions00Tab8.Text:SetTextColor(abfMainColor:GetRGB())
	abfOptions00Tab9.Text:SetTextColor(abfHighColor:GetRGB())
	abfOptions00Tab10.Text:SetTextColor(abfMainColor:GetRGB())
end)
