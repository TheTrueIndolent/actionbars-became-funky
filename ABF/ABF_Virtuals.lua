-- Colors --
abfMainColor = CreateColorFromRGBAHexString("F0E68CFF")
abfHighColor = CreateColorFromRGBAHexString("FF0055FF")
abfNoMainColor = CreateColorFromRGBAHexString("F0E68C00")
abfNoHighColor = CreateColorFromRGBAHexString("A510BA00")
-- function for showing the menu --
function abfShowMenu()
	if not abfOptions00:IsShown() then
		abfOptions00:Show()
	else
		abfOptions00:Hide()
	end
end
-- Slash Command --
SLASH_FUNKYMOJOCHAGER1, SLASH_FUNKYMOJOCHAGER2 = '/abf', '/actionbarbecamefunky'
function SlashCmdList.FUNKYMOJOCHAGER(msg, editBox)
	abfShowMenu()
end
-- Mini Map Button Functions --
-- Clicky Clicky --
function abfMinimapClick(addonName, buttonName)
	if buttonName == "LeftButton" then
		abfShowMenu()
	end
end
-- On Enter --
function abfMinimapOnEnter()
	GameTooltip_ClearStatusBars(GameTooltip)
	GameTooltip_SetDefaultAnchor(GameTooltip, UIParent)
	GameTooltip:SetText("|T"..C_AddOns.GetAddOnMetadata("ABF", "IconTexture")..":16|t"..abfMainColor:WrapTextInColorCode(C_AddOns.GetAddOnMetadata("ABF", "Title")).."|nClick: "..abfMainColor:WrapTextInColorCode("Open the main panel of settings!")) 
	GameTooltip:Show()
end
-- On Leave --
function abfMinimapOnLeave()
	GameTooltip:Hide()
end
-- functions for the buttons and popouts --
-- on enter --
function abfEnteringMenus(self)
	GameTooltip_ClearStatusBars(GameTooltip)
	GameTooltip:SetOwner(self, "ANCHOR_NONE")
	GameTooltip:ClearAllPoints()
	GameTooltip:SetPoint("RIGHT", self, "LEFT", 0, 0)
end
-- on leave --
function abfLeavingMenus()
	GameTooltip:Hide()
end
-- click on Pop Out --
function abfClickPopOut(var1, var2)
	var1:SetScript("OnClick", function(self, button, down)
		if button == "LeftButton" and down == false then
			if not var2:IsShown() then
				var2:Show()
				PlaySound(855, "Master")
			else
				var2:Hide()
			end
		end
	end)
end
-- function for local colors --
function abfGetLocalColor(self1)
	return self1.r, self1.g, self1.b, self1.a
end
