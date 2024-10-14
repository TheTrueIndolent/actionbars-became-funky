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
	ABFstatusTrackingBar = ABFprofile[k]["statusTrackingBar"]
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
		ABFprofile[name] = {actionBars = ABFactionBars, statusTrackingBar = ABFstatusTrackingBar}
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
-- panels --
	for i = 1, 8, 1 do
		if _G["abfOptions"..i.."a"]:IsShown() then _G["abfOptions"..i.."a"]:Hide() end
	end
	for i = 1, 9, 1 do
		if _G["abfOptions"..i]:IsShown() then _G["abfOptions"..i]:Hide() end
	end
-- tabs --
	abfOptions00Tab10.Text:SetTextColor(abfHighColor:GetRGB())
	for i = 1, 9, 1 do
		_G["abfOptions00Tab"..i].Text:SetTextColor(abfMainColor:GetRGB())
	end
-- buttons --
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
		if _G["abfOptions00PageButton1"..k]:IsShown() then _G["abfOptions00PageButton1"..k]:Hide() end
		if _G["abfOptions00PageButton2"..k]:IsShown() then _G["abfOptions00PageButton2"..k]:Hide() end
	end
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
-- taking of the options panels page 1 --
for i = 1, 8, 1 do
	_G["abfOptions"..i].TopTxt:SetText("Actionbar "..i.." options! (page 1 of 2)")
-- naming the fonts --
	for k = 1, 3, 1 do
		_G["abfOptions"..i.."Box1PopOut"..k.."Choice0"].Text:SetText("Default")
		_G["abfOptions"..i.."Box1PopOut"..k.."Choice1"].Text:SetText("NormalOutline_7")
		_G["abfOptions"..i.."Box1PopOut"..k.."Choice2"].Text:SetText("NormalOutline_8")
		_G["abfOptions"..i.."Box1PopOut"..k.."Choice3"].Text:SetText("NormalOutline_9")
		_G["abfOptions"..i.."Box1PopOut"..k.."Choice4"].Text:SetText("NormalOutline_10")
		_G["abfOptions"..i.."Box1PopOut"..k.."Choice5"].Text:SetText("NormalOutline_11")
		_G["abfOptions"..i.."Box1PopOut"..k.."Choice6"].Text:SetText("NormalOutline_12")
		_G["abfOptions"..i.."Box1PopOut"..k.."Choice7"].Text:SetText("NormalOutline_13")
	end
-- naming swipe,edges animation colors --
	for k = 1, 5, 4 do
		_G["abfOptions"..i.."Box"..k.."PopOut4Choice0"].Text:SetText("Default Color")
		_G["abfOptions"..i.."Box"..k.."PopOut4Choice1"].Text:SetText("Class Color")
		_G["abfOptions"..i.."Box"..k.."PopOut4Choice2"].Text:SetText("Faction Color")
		_G["abfOptions"..i.."Box"..k.."PopOut4Choice3"].Text:SetText("Custom Color")
	end
-- naming slot,edges,border colors --
	for k = 3, 9, 3 do
		_G["abfOptions"..i.."Box"..k.."PopOut1Choice0"].Text:SetText("Default Color")
		_G["abfOptions"..i.."Box"..k.."PopOut1Choice1"].Text:SetText("Class Color")
		_G["abfOptions"..i.."Box"..k.."PopOut1Choice2"].Text:SetText("Faction Color")
		_G["abfOptions"..i.."Box"..k.."PopOut1Choice3"].Text:SetText("Custom Color")
	end
-- naming slot,edges,border gradient 1 & 2 --
	for k = 4, 10, 3 do
		for j = 1, 2, 1 do
			_G["abfOptions"..i.."Box"..k.."PopOut"..j.."Choice0"].Text:SetText("Default Color")
			_G["abfOptions"..i.."Box"..k.."PopOut"..j.."Choice1"].Text:SetText("Class Color")
			_G["abfOptions"..i.."Box"..k.."PopOut"..j.."Choice2"].Text:SetText("Faction Color")
			_G["abfOptions"..i.."Box"..k.."PopOut"..j.."Choice3"].Text:SetText("Custom Color")
		end
	end
-- naming slot,edges,border color mode --
	for k = 2, 8, 3 do
		_G["abfOptions"..i.."Box"..k.."PopOut2Choice0"].Text:SetText("One Color")
		_G["abfOptions"..i.."Box"..k.."PopOut2Choice1"].Text:SetText("Gradient Color")
	end
	for k = 4, 10, 3 do
-- naming slot,edges,border gradient orientetion --
		_G["abfOptions"..i.."Box"..k.."PopOut3Choice0"].Text:SetText("HORIZONTAL")
		_G["abfOptions"..i.."Box"..k.."PopOut3Choice1"].Text:SetText("VERTICAL")
	end
-- naming edge animation visibility --
	_G["abfOptions"..i.."Box5PopOut3Choice0"].Text:SetText("Hide")
	_G["abfOptions"..i.."Box5PopOut3Choice1"].Text:SetText("Show")
-- naming border visibility --
	_G["abfOptions"..i.."Box8PopOut1Choice0"].Text:SetText("Hide")
	_G["abfOptions"..i.."Box8PopOut1Choice1"].Text:SetText("Show")
-- naming the slots --
	_G["abfOptions"..i.."Box2PopOut1Choice0"].Text:SetText("None")
	_G["abfOptions"..i.."Box2PopOut1Choice1"].Text:SetText("SlotArt")
	_G["abfOptions"..i.."Box2PopOut1Choice2"].Text:SetText("SlotArt2")
	_G["abfOptions"..i.."Box2PopOut1Choice3"].Text:SetText("Nightfae")
	_G["abfOptions"..i.."Box2PopOut1Choice4"].Text:SetText("Kyrian")
	_G["abfOptions"..i.."Box2PopOut1Choice5"].Text:SetText("Necrolord")
	_G["abfOptions"..i.."Box2PopOut1Choice6"].Text:SetText("Venthyr")
-- naming the edges --
	_G["abfOptions"..i.."Box5PopOut1Choice0"].Text:SetText("None")
	_G["abfOptions"..i.."Box5PopOut1Choice1"].Text:SetText("Gryphon")
	_G["abfOptions"..i.."Box5PopOut1Choice2"].Text:SetText("Wyvern")
	_G["abfOptions"..i.."Box5PopOut1Choice3"].Text:SetText("WingedDragon")
	_G["abfOptions"..i.."Box5PopOut1Choice4"].Text:SetText("Dragon")
-- entering the slots pop out buttons --
-- choice 1 --
	_G["abfOptions"..i.."Box2PopOut1Choice1"]:SetScript("OnEnter", function(self)
		_G["abfOptions"..i.."Box2PopOut1"].Example:SetAtlas("UI-HUD-ActionBar-IconFrame-Slot", false)
		_G["abfOptions"..i.."Box2PopOut1"].Example:Show()
	end)
-- choice 2 --
	_G["abfOptions"..i.."Box2PopOut1Choice2"]:SetScript("OnEnter", function(self)
		_G["abfOptions"..i.."Box2PopOut1"].Example:SetAtlas("socket-prismatic-background", false)
		_G["abfOptions"..i.."Box2PopOut1"].Example:Show()
	end)
-- choice 3 --
	_G["abfOptions"..i.."Box2PopOut1Choice3"]:SetScript("OnEnter", function(self)
		_G["abfOptions"..i.."Box2PopOut1"].Example:SetAtlas("CovenantSanctum-Text-Border-Nightfae", false)
		_G["abfOptions"..i.."Box2PopOut1"].Example:Show()
	end)
-- choice 4 --
	_G["abfOptions"..i.."Box2PopOut1Choice4"]:SetScript("OnEnter", function(self)
		_G["abfOptions"..i.."Box2PopOut1"].Example:SetAtlas("CovenantSanctum-Text-Border-Kyrian", false)
		_G["abfOptions"..i.."Box2PopOut1"].Example:Show()
	end)
-- choice 5 --
	_G["abfOptions"..i.."Box2PopOut1Choice5"]:SetScript("OnEnter", function(self)
		_G["abfOptions"..i.."Box2PopOut1"].Example:SetAtlas("CovenantSanctum-Text-Border-Necrolord", false)
		_G["abfOptions"..i.."Box2PopOut1"].Example:Show()
	end)
-- choice 6 --
	_G["abfOptions"..i.."Box2PopOut1Choice6"]:SetScript("OnEnter", function(self)
		_G["abfOptions"..i.."Box2PopOut1"].Example:SetAtlas("CovenantSanctum-Text-Border-Venthyr", false)
		_G["abfOptions"..i.."Box2PopOut1"].Example:Show()
	end)
-- entering the edges pop out buttons --
-- choice 1 --
	_G["abfOptions"..i.."Box5PopOut1Choice1"]:SetScript("OnEnter", function(self)
		_G["abfOptions"..i.."Box5PopOut1"].Example:SetAtlas("UI-HUD-ActionBar-Gryphon-Right", false)
		_G["abfOptions"..i.."Box5PopOut1"].Example:Show()
	end)
-- choice 2 --
	_G["abfOptions"..i.."Box5PopOut1Choice2"]:SetScript("OnEnter", function(self)
		_G["abfOptions"..i.."Box5PopOut1"].Example:SetAtlas("UI-HUD-ActionBar-Wyvern-Right", false)
		_G["abfOptions"..i.."Box5PopOut1"].Example:Show()
	end)
-- choice 3 --
	_G["abfOptions"..i.."Box5PopOut1Choice3"]:SetScript("OnEnter", function(self)
		_G["abfOptions"..i.."Box5PopOut1"].Example:SetAtlas("UI-HUD-UnitFrame-Target-PortraitOn-Boss-Gold-Winged", false)
		_G["abfOptions"..i.."Box5PopOut1"].Example:Show()
	end)
-- choice 4 --
	_G["abfOptions"..i.."Box5PopOut1Choice4"]:SetScript("OnEnter", function(self)
		_G["abfOptions"..i.."Box5PopOut1"].Example:SetAtlas("UI-HUD-UnitFrame-Target-PortraitOn-Boss-Gold", false)
		_G["abfOptions"..i.."Box5PopOut1"].Example:Show()
	end)
end
-- taking of the options panels page 2 --
for i = 1, 8, 1 do
-- name & position --
	_G["abfOptions"..i.."a"]:ClearAllPoints()
	_G["abfOptions"..i.."a"]:SetPoint("TOPLEFT", abfOptions00, "TOPLEFT", 0, 0)
	_G["abfOptions"..i.."a"].BGtexture:SetAlpha(1)
	_G["abfOptions"..i.."a"].CenterTxt:Hide()
	_G["abfOptions"..i.."a"].BottomTxt:Hide()
	_G["abfOptions"..i.."a"].BottomLeftTxt:Hide()
	_G["abfOptions"..i.."a"].TopTxt:SetText("Actionbar "..i.." options! (page 2 to 2)")
-- naming top,bottom color mode --
	for k = 1, 4, 3 do
		_G["abfOptions"..i.."aBox"..k.."PopOut2Choice0"].Text:SetText("One Color")
		_G["abfOptions"..i.."aBox"..k.."PopOut2Choice1"].Text:SetText("Gradient Color")
	end
-- naming Normal Texture color mode --
	_G["abfOptions"..i.."aBox7PopOut1Choice0"].Text:SetText("One Color")
	_G["abfOptions"..i.."aBox7PopOut1Choice1"].Text:SetText("Gradient Color")
-- naming top,bottom animation visibility --
	for k = 1, 4, 3 do
		_G["abfOptions"..i.."aBox"..k.."PopOut3Choice0"].Text:SetText("Hide")
		_G["abfOptions"..i.."aBox"..k.."PopOut3Choice1"].Text:SetText("Show")
	end
-- naming top,bottom animation color --
	for k = 1, 4, 3 do
		_G["abfOptions"..i.."aBox"..k.."PopOut4Choice0"].Text:SetText("Default Color")
		_G["abfOptions"..i.."aBox"..k.."PopOut4Choice1"].Text:SetText("Class Color")
		_G["abfOptions"..i.."aBox"..k.."PopOut4Choice2"].Text:SetText("Faction Color")
		_G["abfOptions"..i.."aBox"..k.."PopOut4Choice3"].Text:SetText("Custom Color")
	end
-- naming top,bottom,Normal Texture colors --
	for k = 2, 8, 3 do
		_G["abfOptions"..i.."aBox"..k.."PopOut1Choice0"].Text:SetText("Default Color")
		_G["abfOptions"..i.."aBox"..k.."PopOut1Choice1"].Text:SetText("Class Color")
		_G["abfOptions"..i.."aBox"..k.."PopOut1Choice2"].Text:SetText("Faction Color")
		_G["abfOptions"..i.."aBox"..k.."PopOut1Choice3"].Text:SetText("Custom Color")
	end
-- naming top,bottom,Normal Texture gradient 1 & 2 --
	for k = 3, 9, 3 do
		for j = 1, 2, 1 do
			_G["abfOptions"..i.."aBox"..k.."PopOut"..j.."Choice0"].Text:SetText("Default Color")
			_G["abfOptions"..i.."aBox"..k.."PopOut"..j.."Choice1"].Text:SetText("Class Color")
			_G["abfOptions"..i.."aBox"..k.."PopOut"..j.."Choice2"].Text:SetText("Faction Color")
			_G["abfOptions"..i.."aBox"..k.."PopOut"..j.."Choice3"].Text:SetText("Custom Color")
		end
	end
-- naming top,bottom,Normal Texture orientation --
	for k = 3, 9, 3 do
		_G["abfOptions"..i.."aBox"..k.."PopOut3Choice0"].Text:SetText("HORIZONTAL")
		_G["abfOptions"..i.."aBox"..k.."PopOut3Choice1"].Text:SetText("VERTICAL")
	end
-- naming top art --
	_G["abfOptions"..i.."aBox1PopOut1Choice0"].Text:SetText("None")
	_G["abfOptions"..i.."aBox1PopOut1Choice1"].Text:SetText("JailersTower")
	_G["abfOptions"..i.."aBox1PopOut1Choice2"].Text:SetText("Horns")
	_G["abfOptions"..i.."aBox1PopOut1Choice3"].Text:SetText("BossHorns")
-- naming bottom art --
	_G["abfOptions"..i.."aBox4PopOut1Choice0"].Text:SetText("None")
	_G["abfOptions"..i.."aBox4PopOut1Choice1"].Text:SetText("BottomLine1")
	_G["abfOptions"..i.."aBox4PopOut1Choice2"].Text:SetText("SoftCloud")
	_G["abfOptions"..i.."aBox4PopOut1Choice3"].Text:SetText("JailersTower")
-- entering the top pop out buttons --
-- choice 1 --
	_G["abfOptions"..i.."aBox1PopOut1Choice1"]:SetScript("OnEnter", function(self)
		_G["abfOptions"..i.."aBox1PopOut1"].Example:SetSize(460, 70)
		_G["abfOptions"..i.."aBox1PopOut1"].Example:SetAtlas("jailerstower-score-topper", false)
		_G["abfOptions"..i.."aBox1PopOut1"].Example:Show()
	end)
-- choice 2 --
	_G["abfOptions"..i.."aBox1PopOut1Choice2"]:SetScript("OnEnter", function(self)
		_G["abfOptions"..i.."aBox1PopOut1"].Example1:SetSize(70, 40)
		_G["abfOptions"..i.."aBox1PopOut1"].Example1:SetAtlas("BossBanner-LeftFillagree", false)
		_G["abfOptions"..i.."aBox1PopOut1"].Example1:Show()
		_G["abfOptions"..i.."aBox1PopOut1"].Example:SetSize(70, 40)
		_G["abfOptions"..i.."aBox1PopOut1"].Example:SetAtlas("BossBanner-RightFillagree", false)
		_G["abfOptions"..i.."aBox1PopOut1"].Example:Show()
	end)
-- choice 3 --
	_G["abfOptions"..i.."aBox1PopOut1Choice3"]:SetScript("OnEnter", function(self)
		_G["abfOptions"..i.."aBox1PopOut1"].Example:SetSize(170, 70)
		_G["abfOptions"..i.."aBox1PopOut1"].Example:SetAtlas("BossBanner-TopFillagree", false)
		_G["abfOptions"..i.."aBox1PopOut1"].Example:Show()
	end)
end
