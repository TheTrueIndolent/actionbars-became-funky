abfOptions10.TopTxt:SetText("Create, load, and delete profiles!")
-- taking of the box --
abfOptions10Box1.TitleTxt:SetText("Create a profile!")
-- takeing care the rest boxes --
for i = 2, 3, 1 do
	_G["abfOptions10Box"..i]:SetPoint("TOP", _G["abfOptions10Box"..i-1], "BOTTOM", 0, 0)
end
abfOptions10Box2.TitleTxt:SetText("Load a profile!")
abfOptions10Box3.TitleTxt:SetText("Delete a profile!")
abfOptions10Box3.CenterTxt:SetText(abfHighColor:WrapTextInColorCode("Note: ").."When you "..abfHighColor:WrapTextInColorCode("SAVE")..", "..abfHighColor:WrapTextInColorCode("LOAD")..", or "..abfHighColor:WrapTextInColorCode("DELETE").." a Profile, the UI will be RELOADED!")
-- taking care of the edit box --
-- width and height --
local fontFile, height, flags = abfOptions10Box1EditBox1.WritingLine:GetFont()
abfOptions10Box1EditBox1.WritingLine:SetHeight(height)
abfOptions10Box1EditBox1:SetWidth(abfOptions10Box1:GetWidth()*0.65)
abfOptions10Box1EditBox1:SetHeight(abfOptions10Box1EditBox1.WritingLine:GetHeight()*1.75)
abfOptions10Box1EditBox1.WritingLine:SetWidth(abfOptions10Box1EditBox1:GetWidth()*0.95)
-- some variables --
local NameExist = false
-- finding keys --
local function FindingKeys()
	local Keys = 0
	for k, v in pairs(ABFprofile) do
		Keys = Keys + 1
	end
	ABFnumber = Keys
end
-- coping the tables --
local function CopyTable(k)
	ABFactionBars = ABFprofile[k]["actionBars"]
end
-- deleting keys --
local function DeletingKeys(self)
	for k, v in pairs(ABFprofile) do
		if k == self:GetText() then
		ABFprofile[k] = nil
		end
	end
end
-- functions for loading the profiles --
local function LoadingProfiles()
	if ABFcounterLoading == 0 and ABFnumber > 0 then
		for k, v in pairs(ABFprofile) do
			ABFcounterLoading = ABFcounterLoading + 1
			local button = CreateFrame("Button" , "abfOptions10Box2PopOut1Choice"..ABFcounterLoading, abfOptions10Box2PopOut1Choice0, "abfPopOutButton")
			_G["abfOptions10Box2PopOut1Choice"..ABFcounterLoading]:SetPoint("TOP","abfOptions10Box2PopOut1Choice"..ABFcounterLoading - 1, "BOTTOM", 0, 0)
			_G["abfOptions10Box2PopOut1Choice"..ABFcounterLoading].Text:SetText(k)
			_G["abfOptions10Box2PopOut1Choice"..ABFcounterLoading]:SetScript("OnClick", function(self, button, down)
				if button == "LeftButton" and down == false then
					CopyTable(k)
					C_UI.Reload()
				end
			end)
		end
	end
end
-- functions for deleting the profiles --
local function DeletingProfiles()
	if ABFcounterDeleting == 0 and ABFnumber > 0 then
		for k, v in pairs(ABFprofile) do
			ABFcounterDeleting = ABFcounterDeleting + 1
			local button = CreateFrame("Button" , "abfOptions10Box3PopOut1Choice"..ABFcounterDeleting, abfOptions10Box3PopOut1Choice0, "abfPopOutButton")
			_G["abfOptions10Box3PopOut1Choice"..ABFcounterDeleting]:SetPoint("TOP","abfOptions10Box3PopOut1Choice"..ABFcounterDeleting - 1, "BOTTOM", 0, 0)
			_G["abfOptions10Box3PopOut1Choice"..ABFcounterDeleting].Text:SetText(k)
			_G["abfOptions10Box3PopOut1Choice"..ABFcounterDeleting]:SetScript("OnClick", function(self, button, down)
				if button == "LeftButton" and down == false then
					DeletingKeys(self)
					C_UI.Reload()
				end
			end)
		end
	end
end
-- entering, leaving --
abfOptions10Box1EditBox1.WritingLine:HookScript("OnEnter", function(self)
	abfEnteringMenus(self)
	GameTooltip:SetText(abfMainColor:WrapTextInColorCode(C_AddOns.GetAddOnMetadata("ABF", "Title")).."|nWrite a name for your profile in the Edit Box and|npress enter to save your settings/options!") 
end)
abfOptions10Box1EditBox1.WritingLine:HookScript("OnLeave", abfLeavingMenus)
-- pressing enter --
abfOptions10Box1EditBox1.WritingLine:SetScript("OnEnterPressed", function(self)
	if self:HasText() then
		EditBox_HighlightText(self)
		local name = self:GetText()
		for k, v in pairs(ABFprofile) do
			if k == name then
				NameExist = true
			else
				NameExist = false
			end
			if NameExist then
				local abfTime = GameTime_GetTime(false)
				DEFAULT_CHAT_FRAME:AddMessage(abfTime.." ["..abfMainColor:WrapTextInColorCode(C_AddOns.GetAddOnMetadata("ABF", "Title")).."] This Profile already exist please try another name!")
				return
			end
		end
		ABFnumber = ABFnumber + 1
		ABFprofile[name] = {actionBars = ABFactionBars, }
		C_UI.Reload()
	else
		local abfTime = GameTime_GetTime(false)
		DEFAULT_CHAT_FRAME:AddMessage(abfTime.." ["..abfMainColor:WrapTextInColorCode(C_AddOns.GetAddOnMetadata("ABF", "Title")).."] Please enter a name for your profile!")
	end
end)
-- Box 1, Load a profile --
-- Popout 1, Load --
abfOptions10Box2PopOut1:SetWidth(abfOptions10Box2:GetWidth()*0.65)
-- enter --
abfOptions10Box2PopOut1:SetScript("OnEnter", function(self)
	abfEnteringMenus(self)
	GameTooltip:SetText(abfMainColor:WrapTextInColorCode(C_AddOns.GetAddOnMetadata("ABF", "Title")).."|nSelect one of the profiles to be "..abfHighColor:WrapTextInColorCode("LOADED!")) 
end)
-- leave --
abfOptions10Box2PopOut1:SetScript("OnLeave", abfLeavingMenus)
-- drop down --
abfClickPopOut(abfOptions10Box2PopOut1, abfOptions10Box2PopOut1Choice0)
-- click --
abfOptions10Box2PopOut1Choice0:SetScript("OnClick", function(self, button, down)
	if button == "LeftButton" and down == false then
		local abfTime = GameTime_GetTime(false)
		DEFAULT_CHAT_FRAME:AddMessage(abfTime.." ["..abfMainColor:WrapTextInColorCode(C_AddOns.GetAddOnMetadata("ABF", "Title")).."] I did nothing, I literally do nothing as button!")
		abfOptions10Box2PopOut1Choice0:Hide()
	end
end)
-- naming --
abfOptions10Box2PopOut1Choice0.Text:SetText("Nothing")
-- Box 2, Delete a profile --
-- Popout 1, Delete --
abfOptions10Box3PopOut1:SetWidth(abfOptions10Box3:GetWidth()*0.65)
-- enter --
abfOptions10Box3PopOut1:SetScript("OnEnter", function(self)
	abfEnteringMenus(self)
	GameTooltip:SetText(abfMainColor:WrapTextInColorCode(C_AddOns.GetAddOnMetadata("abf", "Title")).."|nSelect one of the profiles to be "..abfHighColor:WrapTextInColorCode("DELETED!")) 
end)
-- leave --
abfOptions10Box3PopOut1:SetScript("OnLeave", abfLeavingMenus)
-- drop down --
abfClickPopOut(abfOptions10Box3PopOut1, abfOptions10Box3PopOut1Choice0)
-- click --
abfOptions10Box3PopOut1Choice0:SetScript("OnClick", function(self, button, down)
	if button == "LeftButton" and down == false then
		local abfTime = GameTime_GetTime(false)
		DEFAULT_CHAT_FRAME:AddMessage(abfTime.." ["..abfMainColor:WrapTextInColorCode(C_AddOns.GetAddOnMetadata("ABF", "Title")).."] I did nothing, I literally do nothing as button!")
		abfOptions10Box3PopOut1Choice0:Hide()
	end
end)
-- naming --
abfOptions10Box3PopOut1Choice0.Text:SetText("Nothing")
-- Showing the panel --
abfOptions10:HookScript("OnShow", function(self)
	FindingKeys()
	LoadingProfiles()
	DeletingProfiles()
	abfOptions10Box2PopOut1.Text:SetText("Click me")
	abfOptions10Box3PopOut1.Text:SetText("Click me")
	if abfOptions1:IsShown() then abfOptions1:Hide() end
	if abfOptions2:IsShown() then abfOptions2:Hide() end
	if abfOptions3:IsShown() then abfOptions3:Hide() end
	if abfOptions4:IsShown() then abfOptions4:Hide() end
	if abfOptions5:IsShown() then abfOptions5:Hide() end
	if abfOptions6:IsShown() then abfOptions6:Hide() end
	if abfOptions7:IsShown() then abfOptions7:Hide() end
	if abfOptions8:IsShown() then abfOptions8:Hide() end
	if abfOptions9:IsShown() then abfOptions9:Hide() end
	abfOptions00Tab1.Text:SetTextColor(abfMainColor:GetRGB())
	abfOptions00Tab2.Text:SetTextColor(abfMainColor:GetRGB())
	abfOptions00Tab3.Text:SetTextColor(abfMainColor:GetRGB())
	abfOptions00Tab4.Text:SetTextColor(abfMainColor:GetRGB())
	abfOptions00Tab5.Text:SetTextColor(abfMainColor:GetRGB())
	abfOptions00Tab6.Text:SetTextColor(abfMainColor:GetRGB())
	abfOptions00Tab7.Text:SetTextColor(abfMainColor:GetRGB())
	abfOptions00Tab8.Text:SetTextColor(abfMainColor:GetRGB())
	abfOptions00Tab9.Text:SetTextColor(abfMainColor:GetRGB())
	abfOptions00Tab10.Text:SetTextColor(abfHighColor:GetRGB())
end)
-- taking of the options panels --
for i = 1, 10, 1 do
	_G["abfOptions"..i]:ClearAllPoints()
	_G["abfOptions"..i]:SetPoint("TOPLEFT", abfOptions00, "TOPLEFT", 0, 0)
	_G["abfOptions"..i].BGtexture:SetAlpha(1)
	_G["abfOptions"..i].CenterTxt:Hide()
	_G["abfOptions"..i].BottomTxt:Hide()
	_G["abfOptions"..i].BottomLeftTxt:Hide()
end
for i = 1, 8, 1 do
	_G["abfOptions"..i].TopTxt:SetText("Actionbar "..i.." options!")
end
-- naming the pop out --
for i = 2, 8, 1 do
-- slot --
	_G["abfOptions"..i.."Box1PopOut1Choice1"].Text:SetText("SlotArt")
	_G["abfOptions"..i.."Box1PopOut1Choice2"].Text:SetText("SlotArt2")
	_G["abfOptions"..i.."Box1PopOut1Choice3"].Text:SetText("Nightfae")
	_G["abfOptions"..i.."Box1PopOut1Choice4"].Text:SetText("Kyrian")
	_G["abfOptions"..i.."Box1PopOut1Choice5"].Text:SetText("Necrolord")
	_G["abfOptions"..i.."Box1PopOut1Choice6"].Text:SetText("Venthyr")
-- edge --
	_G["abfOptions"..i.."Box2PopOut1Choice1"].Text:SetText("Gryphon")
	_G["abfOptions"..i.."Box2PopOut1Choice2"].Text:SetText("Wyvern")
	_G["abfOptions"..i.."Box2PopOut1Choice3"].Text:SetText("WingedDragon")
	_G["abfOptions"..i.."Box2PopOut1Choice4"].Text:SetText("Dragon")
-- top --
	_G["abfOptions"..i.."Box3PopOut1Choice1"].Text:SetText("JailersTower")
	_G["abfOptions"..i.."Box3PopOut1Choice2"].Text:SetText("Horns")
	_G["abfOptions"..i.."Box3PopOut1Choice3"].Text:SetText("BossHorns")
-- bottom --
	_G["abfOptions"..i.."Box4PopOut1Choice1"].Text:SetText("BottomLine1")
	_G["abfOptions"..i.."Box4PopOut1Choice2"].Text:SetText("SoftCloud")
end
