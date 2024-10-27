-- create global variables --
local function CreateGlobalVariables()
-- Colors --
	abfMainColor = CreateColorFromRGBAHexString("F0E68CFF")
	abfHighColor = CreateColorFromRGBAHexString("FF8000FF")
	abfNoMainColor = CreateColorFromRGBAHexString("F0E68C00")
	abfNoHighColor = CreateColorFromRGBAHexString("FF800000")
-- class color --
	abfClassColor = C_ClassColor.GetClassColor(select(2, C_PlayerInfo.GetClass(PlayerLocation:CreateFromUnit("player"))))
-- faction color --
	abfFaction = C_CreatureInfo.GetFactionInfo(C_PlayerInfo.GetRace(PlayerLocation:CreateFromUnit("player")))
	abfFactionColor = CreateColor(_G["PLAYER_FACTION_COLOR_"..string.upper(abfFaction.name)]:GetRGB())
-- function for local colors --
	function abfGetLocalColor(self1)
		return self1.r, self1.g, self1.b, self1.a
	end
-- function for showing the menu --
	function abfShowMenu()
		if not InCombatLockdown() then
			local _, loaded = C_AddOns.IsAddOnLoaded("ABF_Options")
			local loadable, reason = C_AddOns.IsAddOnLoadable("ABF_Options" , nil , true)
			if loadable and not loaded then
				C_AddOns.LoadAddOn("ABF_Options")
				if not abfOptions00:IsShown() then
					abfOptions00:Show()
				else
					abfOptions00:Hide()
				end
			elseif loadable and loaded then
				if not abfOptions00:IsShown() then
					abfOptions00:Show()
				else
					abfOptions00:Hide()
				end
			else
				local abfTime = GameTime_GetTime(false)
				DEFAULT_CHAT_FRAME:AddMessage(abfTime.." |T"..C_AddOns.GetAddOnMetadata("ABF", "IconTexture")..":16:16|t ["..abfMainColor:WrapTextInColorCode(C_AddOns.GetAddOnMetadata("ABF", "Title")).."] The addon with the name "..vcbMainColor:WrapTextInColorCode(C_AddOns.GetAddOnMetadata("ABF_Options", "Title")).." is "..reason.."!")
			end
		else
			local abfTime = GameTime_GetTime(false)
			DEFAULT_CHAT_FRAME:AddMessage(abfTime.." |T"..C_AddOns.GetAddOnMetadata("ABF", "IconTexture")..":16:16|t ["..abfMainColor:WrapTextInColorCode(C_AddOns.GetAddOnMetadata("ABF", "Title")).."] While you are in combat, you can't do this!")
		end
	end
-- slash command --
	RegisterNewSlashCommand(abfShowMenu, "abf", "actionbarbecamefunky")
-- Mini Map Button Functions --
	AddonCompartmentFrame:RegisterAddon({
		text = abfMainColor:WrapTextInColorCode(C_AddOns.GetAddOnMetadata("ABF", "Title")),
		icon = C_AddOns.GetAddOnMetadata("ABF", "IconTexture"),
		notCheckable = true,
		func = function(button, menuInputData, menu)
			local buttonName = menuInputData.buttonName
			if buttonName == "LeftButton" then
				abfShowMenu()
			end
		end,
		funcOnEnter = function(button)
			MenuUtil.ShowTooltip(button, function(tooltip)
				tooltip:SetText("|T"..C_AddOns.GetAddOnMetadata("ABF", "IconTexture")..":16:16|t "..abfMainColor:WrapTextInColorCode(C_AddOns.GetAddOnMetadata("ABF", "Title")).."|nLeft Click: "..abfMainColor:WrapTextInColorCode("Open the main panel of settings!"))
			end)
		end,
		funcOnLeave = function(button)
			MenuUtil.HideTooltip(button)
		end,
	})
-- Cooldown Color --
	function abfSavedCDcolor(text, bar)
		for i = 1, 12, 1 do
			bar.actionButtons[i].cooldown:SetSwipeColor(abfGetLocalColor(ABFactionBars[text]["ColorCD"]))
		end
	end
end
-- function for first time variables --
local function FirstTimeVariables()
	if ABFcounterLoading == nil or ABFcounterLoading ~= nil then ABFcounterLoading = 0 end
	if ABFcounterDeleting == nil or ABFcounterDeleting ~= nil then ABFcounterDeleting = 0 end
	if ABFprofile == nil then ABFprofile = {} end
	if ABFnumber == nil then ABFnumber = 0 end
	if ABFactionBars == nil then
		ABFactionBars = {
			Bar1 = {
				BorderArtColor = {r = 1, g = 1, b = 1, a = 1},
				BorderArtColorOptions = "Default Color",
				NormalTextureColor = {r = 1, g = 1, b = 1, a = 1},
				NormalTextureColorOptions = "Default Color",
				Slot = {
					Art = "SlotArt",
					ArtColor = {r = 1, g = 1, b = 1, a = 1},
					ArtColorOptions = "Default Color",
				},
				Edge = {
					Art = "Gryphon",
					ArtColor = {r = 1, g = 1, b = 1, a = 1},
					ArtColorOptions = "Default Color",
					Animation = "Gryphon/Wyvern",
					AnimationColor = {r = 1, g = 1, b = 1, a = 1},
					AnimationColorOptions = "Default Color",
				},
				Top = {
					Art = "JailersTower",
					ArtColor = {r = 1, g = 1, b = 1, a = 1},
					ArtColorOptions = "Default Color",
					Animation = "None",
					AnimationColor = {r = 1, g = 1, b = 1, a = 1},
					AnimationColorOptions = "Default Color",
				},
				Bottom = {
					Art = "BottomLine1",
					ArtColor = {r = 1, g = 1, b = 1, a = 1},
					ArtColorOptions = "Default Color",
					Animation = "None",
					AnimationColor = {r = 1, g = 1, b = 1, a = 1},
					AnimationColorOptions = "Default Color",
				},
			},
			Bar2 = {
				BorderArtColor = {r = 1, g = 1, b = 1, a = 1},
				BorderArtColorOptions = "Default Color",
				NormalTextureColor = {r = 1, g = 1, b = 1, a = 1},
				NormalTextureColorOptions = "Default Color",
				Slot = {
					Art = "SlotArt",
					ArtColor = {r = 1, g = 1, b = 1, a = 1},
					ArtColorOptions = "Default Color",
				},
				Edge = {
					Art = "WingedDragon",
					ArtColor = {r = 1, g = 1, b = 1, a = 1},
					ArtColorOptions = "Custom Color",
					Animation = "None",
					AnimationColor = {r = 1, g = 1, b = 1, a = 1},
					AnimationColorOptions = "Default Color",
				},
				Top = {
					Art = "Horns",
					ArtColor = {r = 1, g = 1, b = 1, a = 1},
					ArtColorOptions = "Custom Color",
					Animation = "MissionLine",
					AnimationColor = {r = 1, g = 1, b = 1, a = 1},
					AnimationColorOptions = "Custom Color",
				},
				Bottom = {
					Art = "SoftCloud",
					ArtColor = {r = 1, g = 1, b = 1, a = 1},
					ArtColorOptions = "Default Color",
					Animation = "None",
					AnimationColor = {r = 1, g = 1, b = 1, a = 1},
					AnimationColorOptions = "Default Color",
				},
			},
			Bar3 = {
				BorderArtColor = {r = 1, g = 1, b = 1, a = 1},
				BorderArtColorOptions = "Default Color",
				NormalTextureColor = {r = 1, g = 1, b = 1, a = 1},
				NormalTextureColorOptions = "Default Color",
				Slot = {
					Art = "SlotArt2",
					ArtColor = {r = 1, g = 1, b = 1, a = 1},
					ArtColorOptions = "Default Color",
				},
				Edge = {
					Art = "None",
					ArtColor = {r = 1, g = 1, b = 1, a = 1},
					ArtColorOptions = "Default Color",
					Animation = "None",
					AnimationColor = {r = 1, g = 1, b = 1, a = 1},
					AnimationColorOptions = "Custom Color",
				},
				Top = {
					Art = "JailersTower",
					ArtColor = {r = 1, g = 1, b = 1, a = 1},
					ArtColorOptions = "Custom Color",
					Animation = "None",
					AnimationColor = {r = 1, g = 1, b = 1, a = 1},
					AnimationColorOptions = "Default Color",
				},
				Bottom = {
					Art = "None",
					ArtColor = {r = 1, g = 1, b = 1, a = 1},
					ArtColorOptions = "Default Color",
					Animation = "None",
					AnimationColor = {r = 1, g = 1, b = 1, a = 1},
					AnimationColorOptions = "Default Color",
				},
			},
			Bar4 = {
				BorderArtColor = {r = 1, g = 1, b = 1, a = 1},
				BorderArtColorOptions = "Default Color",
				NormalTextureColor = {r = 1, g = 1, b = 1, a = 1},
				NormalTextureColorOptions = "Default Color",
				Slot = {
					Art = "SlotArt2",
					ArtColor = {r = 1, g = 1, b = 1, a = 1},
					ArtColorOptions = "Default Color",
				},
				Edge = {
					Art = "None",
					ArtColor = {r = 1, g = 1, b = 1, a = 1},
					ArtColorOptions = "Default Color",
					Animation = "None",
					AnimationColor = {r = 1, g = 1, b = 1, a = 1},
					AnimationColorOptions = "Custom Color",
				},
				Top = {
					Art = "JailersTower",
					ArtColor = {r = 1, g = 1, b = 1, a = 1},
					ArtColorOptions = "Custom Color",
					Animation = "None",
					AnimationColor = {r = 1, g = 1, b = 1, a = 1},
					AnimationColorOptions = "Default Color",
				},
				Bottom = {
					Art = "None",
					ArtColor = {r = 1, g = 1, b = 1, a = 1},
					ArtColorOptions = "Default Color",
					Animation = "None",
					AnimationColor = {r = 1, g = 1, b = 1, a = 1},
					AnimationColorOptions = "Default Color",
				},
			},
			Bar5 = {
				BorderArtColor = {r = 1, g = 1, b = 1, a = 1},
				BorderArtColorOptions = "Default Color",
				NormalTextureColor = {r = 1, g = 1, b = 1, a = 1},
				NormalTextureColorOptions = "Default Color",
				Slot = {
					Art = "Nightfae",
					ArtColor = {r = 1, g = 1, b = 1, a = 1},
					ArtColorOptions = "Default Color",
				},
				Edge = {
					Art = "None",
					ArtColor = {r = 1, g = 1, b = 1, a = 1},
					ArtColorOptions = "Default Color",
					Animation = "None",
					AnimationColor = {r = 1, g = 1, b = 1, a = 1},
					AnimationColorOptions = "Custom Color",
				},
				Top = {
					Art = "None",
					ArtColor = {r = 1, g = 1, b = 1, a = 1},
					ArtColorOptions = "Default Color",
					Animation = "None",
					AnimationColor = {r = 1, g = 1, b = 1, a = 1},
					AnimationColorOptions = "Default Color",
				},
				Bottom = {
					Art = "None",
					ArtColor = {r = 1, g = 1, b = 1, a = 1},
					ArtColorOptions = "Default Color",
					Animation = "None",
					AnimationColor = {r = 1, g = 1, b = 1, a = 1},
					AnimationColorOptions = "Default Color",
				},
			},
			Bar6 = {
				BorderArtColor = {r = 1, g = 1, b = 1, a = 1},
				BorderArtColorOptions = "Default Color",
				NormalTextureColor = {r = 1, g = 1, b = 1, a = 1},
				NormalTextureColorOptions = "Default Color",
				Slot = {
					Art = "Kyrian",
					ArtColor = {r = 1, g = 1, b = 1, a = 1},
					ArtColorOptions = "Default Color",
				},
				Edge = {
					Art = "None",
					ArtColor = {r = 1, g = 1, b = 1, a = 1},
					ArtColorOptions = "Default Color",
					Animation = "None",
					AnimationColor = {r = 1, g = 1, b = 1, a = 1},
					AnimationColorOptions = "Custom Color",
				},
				Top = {
					Art = "None",
					ArtColor = {r = 1, g = 1, b = 1, a = 1},
					ArtColorOptions = "Default Color",
					Animation = "None",
					AnimationColor = {r = 1, g = 1, b = 1, a = 1},
					AnimationColorOptions = "Default Color",
				},
				Bottom = {
					Art = "None",
					ArtColor = {r = 1, g = 1, b = 1, a = 1},
					ArtColorOptions = "Default Color",
					Animation = "None",
					AnimationColor = {r = 1, g = 1, b = 1, a = 1},
					AnimationColorOptions = "Default Color",
				},
			},
			Bar7 = {
				BorderArtColor = {r = 1, g = 1, b = 1, a = 1},
				BorderArtColorOptions = "Default Color",
				NormalTextureColor = {r = 1, g = 1, b = 1, a = 1},
				NormalTextureColorOptions = "Default Color",
				Slot = {
					Art = "Necrolord",
					ArtColor = {r = 1, g = 1, b = 1, a = 1},
					ArtColorOptions = "Default Color",
				},
				Edge = {
					Art = "None",
					ArtColor = {r = 1, g = 1, b = 1, a = 1},
					ArtColorOptions = "Default Color",
					Animation = "None",
					AnimationColor = {r = 1, g = 1, b = 1, a = 1},
					AnimationColorOptions = "Custom Color",
				},
				Top = {
					Art = "None",
					ArtColor = {r = 1, g = 1, b = 1, a = 1},
					ArtColorOptions = "Default Color",
					Animation = "None",
					AnimationColor = {r = 1, g = 1, b = 1, a = 1},
					AnimationColorOptions = "Default Color",
				},
				Bottom = {
					Art = "None",
					ArtColor = {r = 1, g = 1, b = 1, a = 1},
					ArtColorOptions = "Default Color",
					Animation = "None",
					AnimationColor = {r = 1, g = 1, b = 1, a = 1},
					AnimationColorOptions = "Default Color",
				},
			},
			Bar8 = {
				BorderArtColor = {r = 1, g = 1, b = 1, a = 1},
				BorderArtColorOptions = "Default Color",
				NormalTextureColor = {r = 1, g = 1, b = 1, a = 1},
				NormalTextureColorOptions = "Default Color",
				Slot = {
					Art = "Venthyr",
					ArtColor = {r = 1, g = 1, b = 1, a = 1},
					ArtColorOptions = "Default Color",
				},
				Edge = {
					Art = "None",
					ArtColor = {r = 1, g = 1, b = 1, a = 1},
					ArtColorOptions = "Default Color",
					Animation = "None",
					AnimationColor = {r = 1, g = 1, b = 1, a = 1},
					AnimationColorOptions = "Custom Color",
				},
				Top = {
					Art = "None",
					ArtColor = {r = 1, g = 1, b = 1, a = 1},
					ArtColorOptions = "Default Color",
					Animation = "None",
					AnimationColor = {r = 1, g = 1, b = 1, a = 1},
					AnimationColorOptions = "Default Color",
				},
				Bottom = {
					Art = "None",
					ArtColor = {r = 1, g = 1, b = 1, a = 1},
					ArtColorOptions = "Default Color",
					Animation = "None",
					AnimationColor = {r = 1, g = 1, b = 1, a = 1},
					AnimationColorOptions = "Default Color",
				},
			},
		}
	end
	if ABFstatusTrackingBar == nil then
		ABFstatusTrackingBar = {
			Bar1 = {
				Visibility = true,
				Scale = 1,
				Fonts = "Clear_Fonts_11",
			},
			Bar2 ={
				Visibility = true,
				Scale = 1,
				Fonts = "Clear_Fonts_11",
			},
		}
	end
end
local function FirstTimeVariablesFix()
	for i = 1, 8, 1 do
		if ABFactionBars["Bar"..i]["Edge"]["Animation"] == "None" then ABFactionBars["Bar"..i]["Edge"]["Animation"] = false end
		if ABFactionBars["Bar"..i]["Top"]["Animation"] == "None" then ABFactionBars["Bar"..i]["Top"]["Animation"] = false end
		if ABFactionBars["Bar"..i]["Bottom"]["Animation"] == "None" then ABFactionBars["Bar"..i]["Bottom"]["Animation"] = false end
		if ABFactionBars["Bar"..i]["NameFonts"] == nil then ABFactionBars["Bar"..i]["NameFonts"] = "Default" end
		if ABFactionBars["Bar"..i]["HotKeyFonts"] == nil then ABFactionBars["Bar"..i]["HotKeyFonts"] = "Default" end
		if ABFactionBars["Bar"..i]["CountFonts"] == nil then ABFactionBars["Bar"..i]["CountFonts"] = "Default" end
		if ABFactionBars["Bar"..i]["ColorCDoption"] == nil then ABFactionBars["Bar"..i]["ColorCDoption"] = "Default Color" end
		if ABFactionBars["Bar"..i]["ColorCD"] == nil then ABFactionBars["Bar"..i]["ColorCD"] = {r = 0, g = 0, b = 0, a = 0.8} end
		if ABFactionBars["Bar"..i]["BorderVisibility"] == nil then ABFactionBars["Bar"..i]["BorderVisibility"] = true end
		if ABFactionBars["Bar"..i]["BorderArtColorMode"] == nil then ABFactionBars["Bar"..i]["BorderArtColorMode"] = "One Color" end
		if ABFactionBars["Bar"..i]["BorderArtGradientOrientation"] == nil then ABFactionBars["Bar"..i]["BorderArtGradientOrientation"] = "HORIZONTAL" end
		if ABFactionBars["Bar"..i]["BorderArtGradientOptions1"] == nil then ABFactionBars["Bar"..i]["BorderArtGradientOptions1"] = "Default Color" end
		if ABFactionBars["Bar"..i]["BorderArtGradientOptions2"] == nil then ABFactionBars["Bar"..i]["BorderArtGradientOptions2"] = "Default Color" end
		if ABFactionBars["Bar"..i]["BorderArtGradient1"] == nil then ABFactionBars["Bar"..i]["BorderArtGradient1"] = {r = 1, g = 1, b = 1, a = 1} end
		if ABFactionBars["Bar"..i]["BorderArtGradient2"] == nil then ABFactionBars["Bar"..i]["BorderArtGradient2"] = {r = 1, g = 1, b = 1, a = 1} end
		if ABFactionBars["Bar"..i]["NormalTextureColorMode"] == nil then ABFactionBars["Bar"..i]["NormalTextureColorMode"] = "One Color" end
		if ABFactionBars["Bar"..i]["NormalTextureGradientOrientation"] == nil then ABFactionBars["Bar"..i]["NormalTextureGradientOrientation"] = "HORIZONTAL" end
		if ABFactionBars["Bar"..i]["NormalTextureGradientOptions1"] == nil then ABFactionBars["Bar"..i]["NormalTextureGradientOptions1"] = "Default Color" end
		if ABFactionBars["Bar"..i]["NormalTextureGradientOptions2"] == nil then ABFactionBars["Bar"..i]["NormalTextureGradientOptions2"] = "Default Color" end
		if ABFactionBars["Bar"..i]["NormalTextureGradient1"] == nil then ABFactionBars["Bar"..i]["NormalTextureGradient1"] = {r = 1, g = 1, b = 1, a = 1} end
		if ABFactionBars["Bar"..i]["NormalTextureGradient2"] == nil then ABFactionBars["Bar"..i]["NormalTextureGradient2"] = {r = 1, g = 1, b = 1, a = 1} end
		if ABFactionBars["Bar"..i]["Slot"]["ArtColorChoice"] == nil then ABFactionBars["Bar"..i]["Slot"]["ArtColorChoice"] = "One Color" end
		if ABFactionBars["Bar"..i]["Slot"]["ArtColorDesaturation"] == nil then ABFactionBars["Bar"..i]["Slot"]["ArtColorDesaturation"] = 1 end
		if ABFactionBars["Bar"..i]["Slot"]["ArtGradientOrientation"] == nil then ABFactionBars["Bar"..i]["Slot"]["ArtGradientOrientation"] = "HORIZONTAL" end
		if ABFactionBars["Bar"..i]["Slot"]["ArtGradientOptions1"] == nil then ABFactionBars["Bar"..i]["Slot"]["ArtGradientOptions1"] = "Default Color" end
		if ABFactionBars["Bar"..i]["Slot"]["ArtGradientOptions2"] == nil then ABFactionBars["Bar"..i]["Slot"]["ArtGradientOptions2"] = "Default Color" end
		if ABFactionBars["Bar"..i]["Slot"]["ArtGradientColor1"] == nil then ABFactionBars["Bar"..i]["Slot"]["ArtGradientColor1"] = {r = 1, g = 1, b = 1, a = 1} end
		if ABFactionBars["Bar"..i]["Slot"]["ArtGradientColor2"] == nil then ABFactionBars["Bar"..i]["Slot"]["ArtGradientColor2"] = {r = 1, g = 1, b = 1, a = 1} end
		if ABFactionBars["Bar"..i]["Edge"]["ArtColorChoice"] == nil then ABFactionBars["Bar"..i]["Edge"]["ArtColorChoice"] = "One Color" end
		if ABFactionBars["Bar"..i]["Edge"]["ArtColorDesaturation"] == nil then ABFactionBars["Bar"..i]["Edge"]["ArtColorDesaturation"] = 1 end
		if ABFactionBars["Bar"..i]["Edge"]["ArtGradientOrientation"] == nil then ABFactionBars["Bar"..i]["Edge"]["ArtGradientOrientation"] = "HORIZONTAL" end
		if ABFactionBars["Bar"..i]["Edge"]["ArtGradientOptions1"] == nil then ABFactionBars["Bar"..i]["Edge"]["ArtGradientOptions1"] = "Default Color" end
		if ABFactionBars["Bar"..i]["Edge"]["ArtGradientOptions2"] == nil then ABFactionBars["Bar"..i]["Edge"]["ArtGradientOptions2"] = "Default Color" end
		if ABFactionBars["Bar"..i]["Edge"]["ArtGradientColor1"] == nil then ABFactionBars["Bar"..i]["Edge"]["ArtGradientColor1"] = {r = 1, g = 1, b = 1, a = 1} end
		if ABFactionBars["Bar"..i]["Edge"]["ArtGradientColor2"] == nil then ABFactionBars["Bar"..i]["Edge"]["ArtGradientColor2"] = {r = 1, g = 1, b = 1, a = 1} end
		if ABFactionBars["Bar"..i]["Top"]["ArtColorChoice"] == nil then ABFactionBars["Bar"..i]["Top"]["ArtColorChoice"] = "One Color" end
		if ABFactionBars["Bar"..i]["Top"]["ArtColorDesaturation"] == nil then ABFactionBars["Bar"..i]["Top"]["ArtColorDesaturation"] = 1 end
		if ABFactionBars["Bar"..i]["Top"]["ArtGradientOrientation"] == nil then ABFactionBars["Bar"..i]["Top"]["ArtGradientOrientation"] = "HORIZONTAL" end
		if ABFactionBars["Bar"..i]["Top"]["ArtGradientOptions1"] == nil then ABFactionBars["Bar"..i]["Top"]["ArtGradientOptions1"] = "Default Color" end
		if ABFactionBars["Bar"..i]["Top"]["ArtGradientOptions2"] == nil then ABFactionBars["Bar"..i]["Top"]["ArtGradientOptions2"] = "Default Color" end
		if ABFactionBars["Bar"..i]["Top"]["ArtGradientColor1"] == nil then ABFactionBars["Bar"..i]["Top"]["ArtGradientColor1"] = {r = 1, g = 1, b = 1, a = 1} end
		if ABFactionBars["Bar"..i]["Top"]["ArtGradientColor2"] == nil then ABFactionBars["Bar"..i]["Top"]["ArtGradientColor2"] = {r = 1, g = 1, b = 1, a = 1} end
		if ABFactionBars["Bar"..i]["Bottom"]["ArtColorChoice"] == nil then ABFactionBars["Bar"..i]["Bottom"]["ArtColorChoice"] = "One Color" end
		if ABFactionBars["Bar"..i]["Bottom"]["ArtColorDesaturation"] == nil then ABFactionBars["Bar"..i]["Bottom"]["ArtColorDesaturation"] = 1 end
		if ABFactionBars["Bar"..i]["Bottom"]["ArtGradientOrientation"] == nil then ABFactionBars["Bar"..i]["Bottom"]["ArtGradientOrientation"] = "HORIZONTAL" end
		if ABFactionBars["Bar"..i]["Bottom"]["ArtGradientOptions1"] == nil then ABFactionBars["Bar"..i]["Bottom"]["ArtGradientOptions1"] = "Default Color" end
		if ABFactionBars["Bar"..i]["Bottom"]["ArtGradientOptions2"] == nil then ABFactionBars["Bar"..i]["Bottom"]["ArtGradientOptions2"] = "Default Color" end
		if ABFactionBars["Bar"..i]["Bottom"]["ArtGradientColor1"] == nil then ABFactionBars["Bar"..i]["Bottom"]["ArtGradientColor1"] = {r = 1, g = 1, b = 1, a = 1} end
		if ABFactionBars["Bar"..i]["Bottom"]["ArtGradientColor2"] == nil then ABFactionBars["Bar"..i]["Bottom"]["ArtGradientColor2"] = {r = 1, g = 1, b = 1, a = 1} end
	end
end
-- Function for commas --
local function comma_value(n)
	local left,num,right = string.match(n,'^([^%d]*%d)(%d*)(.-)$')
	return left..(num:reverse():gsub('(%d%d%d)','%1,'):reverse())..right
end
-- Actionbars --
local function SavedActionbars(text, bar)
	abfSavedFonts(text, bar)
	abfSavedCDcolor(text, bar)
	abfSavedColorNormalTexture(text, bar)
end
-- Starting the animations --
local function StartAllAnimations()
	for i = 1, 8, 1 do
		if i == 1 then bar = MainMenuBar
		elseif i == 2 then bar = MultiBarBottomLeft
		elseif i == 3 then bar = MultiBarBottomRight
		elseif i == 4 then bar = MultiBarRight
		elseif i == 5 then bar = MultiBarLeft
		elseif i == 6 then bar = MultiBar5
		elseif i == 7 then bar = MultiBar6
		elseif i == 8 then bar = MultiBar7
		end
		if ABFactionBars["Bar"..i]["Edge"]["Animation"] and (ABFactionBars["Bar"..i]["Edge"]["Art"] == "Gryphon" or ABFactionBars["Bar"..i]["Edge"]["Art"] == "Wyvern") then
			bar.actionButtons[1].Gryphon_WyvernAnimationLeft:Play()
			bar.actionButtons[1].Gryphon_WyvernAnimationRight:Play()
		end
		if ABFactionBars["Bar"..i]["Top"]["Animation"] and ABFactionBars["Bar"..i]["Top"]["Art"] == "JailersTower" then
			bar.actionButtons[1].JailersEyeLeft:Show()
			bar.actionButtons[1].JailersEyeRight:Show()
			bar.actionButtons[1].JailersTowerAnimation:Play()
		end
		if ABFactionBars["Bar"..i]["Bottom"]["Animation"] and ABFactionBars["Bar"..i]["Bottom"]["Art"] == "SoftCloud" then
			bar.actionButtons[1].SoftCloudAnimation:Play()
		end
	end
end
-- Stopping the animations --
local function StopAllAnimations()
	for i = 1, 8, 1 do
		if i == 1 then bar = MainMenuBar
		elseif i == 2 then bar = MultiBarBottomLeft
		elseif i == 3 then bar = MultiBarBottomRight
		elseif i == 4 then bar = MultiBarRight
		elseif i == 5 then bar = MultiBarLeft
		elseif i == 6 then bar = MultiBar5
		elseif i == 7 then bar = MultiBar6
		elseif i == 8 then bar = MultiBar7
		end
		if ABFactionBars["Bar"..i]["Edge"]["Animation"] and (ABFactionBars["Bar"..i]["Edge"]["Art"] == "Gryphon" or ABFactionBars["Bar"..i]["Edge"]["Art"] == "Wyvern") then
			bar.actionButtons[1].Gryphon_WyvernAnimationLeft:Stop()
			bar.actionButtons[1].Gryphon_WyvernAnimationRight:Stop()
			bar.actionButtons[1].EdgeLeftArtAnimation:Hide()
			bar.actionButtons[1].EdgeRightArtAnimation:Hide()
			abfSavedColorEdge("Bar"..i, bar)
		end
		if ABFactionBars["Bar"..i]["Top"]["Animation"] and ABFactionBars["Bar"..i]["Top"]["Art"] == "JailersTower" then
			bar.actionButtons[1].JailersEyeLeft:Hide()
			bar.actionButtons[1].JailersEyeRight:Hide()
			bar.actionButtons[1].JailersTowerAnimation:Stop()
		end
		if ABFactionBars["Bar"..i]["Bottom"]["Animation"] and ABFactionBars["Bar"..i]["Bottom"]["Art"] == "SoftCloud" then
			bar.actionButtons[1].SoftCloudAnimation:Stop()
		end
	end
end

-- Events Time --
local function EventsTime(self, event, arg1, arg2, arg3, arg4)
	if event == "PLAYER_LOGIN" then
		CreateGlobalVariables()
		FirstTimeVariables()
		FirstTimeVariablesFix()
		SavedActionbars("Bar1", MainMenuBar)
		SavedActionbars("Bar2", MultiBarBottomLeft)
		SavedActionbars("Bar3", MultiBarBottomRight)
		SavedActionbars("Bar4", MultiBarRight)
		SavedActionbars("Bar5", MultiBarLeft)
		SavedActionbars("Bar6", MultiBar5)
		SavedActionbars("Bar7", MultiBar6)
		SavedActionbars("Bar8", MultiBar7)
	elseif event == "PLAYER_REGEN_DISABLED" then
		StartAllAnimations()
	elseif event == "PLAYER_REGEN_ENABLED" then
		StopAllAnimations()
	elseif event == "PLAYER_XP_UPDATE" and arg1 == "player" then
		MainStatusTrackingBarContainer.bars[4].OverlayFrame.Text:SetText("XP: "..comma_value(MainStatusTrackingBarContainer.bars[4].currXP).."/"..comma_value(MainStatusTrackingBarContainer.bars[4].maxBar))
	elseif event == "HONOR_XP_UPDATE" and arg1 == "player" then
		local current = UnitHonor("player")
		local maxHonor = UnitHonorMax("player")
		MainStatusTrackingBarContainer.bars[2].OverlayFrame.Text:SetText("Honor: "..comma_value(current).."/"..comma_value(maxHonor))
		SecondaryStatusTrackingBarContainer.bars[2].OverlayFrame.Text:SetText("Honor: "..comma_value(current).."/"..comma_value(maxHonor))
	end
end
abfZlave:SetScript("OnEvent", EventsTime)
