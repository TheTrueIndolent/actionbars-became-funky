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
end
-- Actionbar 1 --
local function SavedActionbar1()
	abfSavedArtSlot("Action", "Bar1")
	abfSavedColorSlot("Action", "Bar1")
	abfSavedArtEdge("Action", MainMenuBar, "Bar1")
	abfSavedColorEdge("Action", "Bar1")
	abfSavedArtTop("Action", "Bar1")
	abfSavedColorTop("Action", "Bar1")
	abfSavedArtBottom("Action", "Bar1")
	abfSavedColorBottom("Action", "Bar1")
	abfSavedAnimationEdgeArt("Action", "Bar1")
	abfSavedAnimationEdgeColor("Bar1")
	abfSavedAnimationTopArt("Action", "Bar1")
	abfSavedAnimationTopColor("Bar1")
end
-- Actionbar 2 --
local function SavedActionbar2()
	abfSavedArtSlot("MultiBarBottomLeft", "Bar2")
	abfSavedColorSlot("MultiBarBottomLeft", "Bar2")
	abfSavedArtEdge("MultiBarBottomLeft", MultiBarBottomLeft, "Bar2")
	abfSavedColorEdge("MultiBarBottomLeft", "Bar2")
	abfSavedArtTop("MultiBarBottomLeft", "Bar2")
	abfSavedColorTop("MultiBarBottomLeft", "Bar2")
	abfSavedArtBottom("MultiBarBottomLeft", "Bar2")
	abfSavedColorBottom("MultiBarBottomLeft", "Bar2")
	abfSavedAnimationEdgeArt("MultiBarBottomLeft", "Bar2")
	abfSavedAnimationEdgeColor("Bar2")
	abfSavedAnimationTopArt("MultiBarBottomLeft", "Bar2")
	abfSavedAnimationTopColor("Bar2")
end
-- Actionbar 3 --
local function SavedActionbar3()
	abfSavedArtSlot("MultiBarBottomRight", "Bar3")
	abfSavedColorSlot("MultiBarBottomRight", "Bar3")
	abfSavedArtEdge("MultiBarBottomRight", MultiBarBottomRight, "Bar3")
	abfSavedColorEdge("MultiBarBottomRight", "Bar3")
	abfSavedArtTop("MultiBarBottomRight", "Bar3")
	abfSavedColorTop("MultiBarBottomRight", "Bar3")
	abfSavedArtBottom("MultiBarBottomRight", "Bar3")
	abfSavedColorBottom("MultiBarBottomRight", "Bar3")
	abfSavedAnimationEdgeArt("MultiBarBottomRight", "Bar3")
	abfSavedAnimationEdgeColor("Bar3")
	abfSavedAnimationTopArt("MultiBarBottomRight", "Bar3")
	abfSavedAnimationTopColor("Bar3")
end
-- Actionbar 4 --
local function SavedActionbar4()
	abfSavedArtSlot("MultiBarRight", "Bar4")
	abfSavedColorSlot("MultiBarRight", "Bar4")
	abfSavedArtEdge("MultiBarRight", MultiBarRight, "Bar4")
	abfSavedColorEdge("MultiBarRight", "Bar4")
	abfSavedArtTop("MultiBarRight", "Bar4")
	abfSavedColorTop("MultiBarRight", "Bar4")
	abfSavedArtBottom("MultiBarRight", "Bar4")
	abfSavedColorBottom("MultiBarRight", "Bar4")
	abfSavedAnimationEdgeArt("MultiBarRight", "Bar4")
	abfSavedAnimationEdgeColor("Bar4")
	abfSavedAnimationTopArt("MultiBarRight", "Bar4")
	abfSavedAnimationTopColor("Bar4")
end
-- Actionbar 5 --
local function SavedActionbar5()
	abfSavedArtSlot("MultiBarLeft", "Bar5")
	abfSavedColorSlot("MultiBarLeft", "Bar5")
	abfSavedArtEdge("MultiBarLeft", MultiBarLeft, "Bar5")
	abfSavedColorEdge("MultiBarLeft", "Bar5")
	abfSavedArtTop("MultiBarLeft", "Bar5")
	abfSavedColorTop("MultiBarLeft", "Bar5")
	abfSavedArtBottom("MultiBarLeft", "Bar5")
	abfSavedColorBottom("MultiBarLeft", "Bar5")
	abfSavedAnimationEdgeArt("MultiBarLeft", "Bar5")
	abfSavedAnimationEdgeColor("Bar5")
	abfSavedAnimationTopArt("MultiBarLeft", "Bar5")
	abfSavedAnimationTopColor("Bar5")
end
-- Actionbar 6 --
local function SavedActionbar6()
	abfSavedArtSlot("MultiBar5", "Bar6")
	abfSavedColorSlot("MultiBar5", "Bar6")
	abfSavedArtEdge("MultiBar5", MultiBar5, "Bar6")
	abfSavedColorEdge("MultiBar5", "Bar6")
	abfSavedArtTop("MultiBar5", "Bar6")
	abfSavedColorTop("MultiBar5", "Bar6")
	abfSavedArtBottom("MultiBar5", "Bar6")
	abfSavedColorBottom("MultiBar5", "Bar6")
	abfSavedAnimationEdgeArt("MultiBar5", "Bar6")
	abfSavedAnimationEdgeColor("Bar6")
	abfSavedAnimationTopArt("MultiBar5", "Bar6")
	abfSavedAnimationTopColor("Bar6")
end
-- Actionbar 7 --
local function SavedActionbar7()
	abfSavedArtSlot("MultiBar6", "Bar7")
	abfSavedColorSlot("MultiBar6", "Bar7")
	abfSavedArtEdge("MultiBar6", MultiBar6, "Bar7")
	abfSavedColorEdge("MultiBar6", "Bar7")
	abfSavedArtTop("MultiBar6", "Bar7")
	abfSavedColorTop("MultiBar6", "Bar7")
	abfSavedArtBottom("MultiBar6", "Bar7")
	abfSavedColorBottom("MultiBar6", "Bar7")
	abfSavedAnimationEdgeArt("MultiBar6", "Bar7")
	abfSavedAnimationEdgeColor("Bar7")
	abfSavedAnimationTopArt("MultiBar6", "Bar7")
	abfSavedAnimationTopColor("Bar7")
end
-- Actionbar 8 --
local function SavedActionbar8()
	abfSavedArtSlot("MultiBar7", "Bar8")
	abfSavedColorSlot("MultiBar7", "Bar8")
	abfSavedArtEdge("MultiBar7", MultiBar7, "Bar8")
	abfSavedColorEdge("MultiBar7", "Bar8")
	abfSavedArtTop("MultiBar7", "Bar8")
	abfSavedColorTop("MultiBar7", "Bar8")
	abfSavedArtBottom("MultiBar7", "Bar8")
	abfSavedColorBottom("MultiBar7", "Bar8")
	abfSavedAnimationEdgeArt("MultiBar7", "Bar8")
	abfSavedAnimationEdgeColor("Bar8")
	abfSavedAnimationTopArt("MultiBar7", "Bar8")
	abfSavedAnimationTopColor("Bar8")
end
local function StopAllAnimations()
	for i = 1, 8, 1 do
		if (ABFactionBars["Bar"..i]["Edge"]["Art"] == "Gryphon" or ABFactionBars["Bar"..i]["Edge"]["Art"] == "Wyvern") and ABFactionBars["Bar"..i]["Edge"]["Animation"] == "Gryphon/Wyvern" then
			local bar = 0
			if i == 1 then bar = "Action"
			elseif i == 2 then bar = "MultiBarBottomLeft"
			elseif i == 3 then bar = "MultiBarBottomRight"
			elseif i == 4 then bar = "MultiBarRight"
			elseif i == 5 then bar = "MultiBarLeft"
			elseif i == 6 then bar = "MultiBar5"
			elseif i == 7 then bar = "MultiBar6"
			elseif i == 8 then bar = "MultiBar7"
			end
			_G["textureBar"..i.."AnimationLeft"]:Hide()
			_G["textureBar"..i.."AnimationRight"]:Hide()
			_G[bar.."Button1GryphonLeft"]:SetVertexColor(abfGetLocalColor(ABFactionBars["Bar"..i]["Edge"]["ArtColor"]))
			_G[bar.."Button1GryphonRight"]:SetVertexColor(abfGetLocalColor(ABFactionBars["Bar"..i]["Edge"]["ArtColor"]))
			_G[bar.."Button1WyvernLeft"]:SetVertexColor(abfGetLocalColor(ABFactionBars["Bar"..i]["Edge"]["ArtColor"]))
			_G[bar.."Button1WyvernRight"]:SetVertexColor(abfGetLocalColor(ABFactionBars["Bar"..i]["Edge"]["ArtColor"]))
		end
		if ABFactionBars["Bar"..i]["Top"]["Animation"] == "MissionLine" then
			_G["abfAnimationBar"..i.."Background"]:Stop()
		end
	end
end
-- Events Time --
local function EventsTime(self, event, arg1, arg2, arg3, arg4)
	if event == "PLAYER_LOGIN" then
		FirstTimeVariables()
		ShowBackgroundABF()
		SavedActionbar1()
		SavedActionbar2()
		SavedActionbar3()
		SavedActionbar4()
		SavedActionbar5()
		SavedActionbar6()
		SavedActionbar7()
		SavedActionbar8()
	elseif event == "PLAYER_REGEN_DISABLED" then
		for i = 1, 8, 1 do
			if (ABFactionBars["Bar"..i]["Edge"]["Art"] == "Gryphon" or ABFactionBars["Bar"..i]["Edge"]["Art"] == "Wyvern") and ABFactionBars["Bar"..i]["Edge"]["Animation"] == "Gryphon/Wyvern" then
				_G["abfAnimationBar"..i.."GryphonRight"]:Play()
				_G["abfAnimationBar"..i.."GryphonLeft"]:Play()
			end
			if ABFactionBars["Bar"..i]["Top"]["Animation"]  == "MissionLine" then
				_G["abfAnimationBar"..i.."Background"]:Play()
			end
		end
	elseif event == "PLAYER_REGEN_ENABLED" then
		StopAllAnimations()
	end
end
abfZlave:SetScript("OnEvent", EventsTime)
