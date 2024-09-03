-- background --
function ShowBackgroundABF()
	MainMenuBar.BorderArt:Show()
	abfShowBackground(MultiBarBottomLeftABFbackground, MultiBarBottomLeft)
	abfShowBackground(MultiBarBottomRightABFbackground, MultiBarBottomRight)
	abfShowBackground(MultiBarRightABFbackground, MultiBarRight)
	abfShowBackground(MultiBarLeftABFbackground, MultiBarLeft)
	abfShowBackground(MultiBar5ABFbackground, MultiBar5)
	abfShowBackground(MultiBar6ABFbackground, MultiBar6)
	abfShowBackground(MultiBar7ABFbackground, MultiBar7)
	MultiBarBottomLeft:HookScript("OnSizeChanged", function (self) abfShowBackground(MultiBarBottomLeftABFbackground, self) end)
	MultiBarBottomRight:HookScript("OnSizeChanged", function (self) abfShowBackground(MultiBarBottomRightABFbackground, self) end)
	MultiBarRight:HookScript("OnSizeChanged", function (self) abfShowBackground(MultiBarRightABFbackground, self) end)
	MultiBarLeft:HookScript("OnSizeChanged", function (self) abfShowBackground(MultiBarLeftABFbackground, self) end)
	MultiBar5:HookScript("OnSizeChanged", function (self) abfShowBackground(MultiBar5ABFbackground, self) end)
	MultiBar6:HookScript("OnSizeChanged", function (self) abfShowBackground(MultiBar6ABFbackground, self) end)
	MultiBar7:HookScript("OnSizeChanged", function (self) abfShowBackground(MultiBar7ABFbackground, self) end)
end
-- hide show Nightfae, Necrolord, Kyrian, Venthyr --
local function HideShowback(bar, text, textb)
	for i = 1, 12, 1 do
		_G[bar.."Button"..i..text]:SetScript("OnShow", function (self)
			_G[bar.."Button"..i..textb]:Show()
		end)
		_G[bar.."Button"..i..text]:SetScript("OnHide", function (self)
			_G[bar.."Button"..i..textb]:Hide()
		end)
	end
end
-- Nightfae --
HideShowback("Action", "Nightfae", "NightfaeBack")
HideShowback("MultiBarBottomLeft", "Nightfae", "NightfaeBack")
HideShowback("MultiBarBottomRight", "Nightfae", "NightfaeBack")
HideShowback("MultiBarRight", "Nightfae", "NightfaeBack")
HideShowback("MultiBarLeft", "Nightfae", "NightfaeBack")
HideShowback("MultiBar5", "Nightfae", "NightfaeBack")
HideShowback("MultiBar6", "Nightfae", "NightfaeBack")
HideShowback("MultiBar7", "Nightfae", "NightfaeBack")
-- Kyrian --
HideShowback("Action", "Kyrian", "KyrianBack")
HideShowback("MultiBarBottomLeft", "Kyrian", "KyrianBack")
HideShowback("MultiBarBottomRight", "Kyrian", "KyrianBack")
HideShowback("MultiBarRight", "Kyrian", "KyrianBack")
HideShowback("MultiBarLeft", "Kyrian", "KyrianBack")
HideShowback("MultiBar5", "Kyrian", "KyrianBack")
HideShowback("MultiBar6", "Kyrian", "KyrianBack")
HideShowback("MultiBar7", "Kyrian", "KyrianBack")
-- Necrolord --
HideShowback("Action", "Necrolord", "NecrolordBack")
HideShowback("MultiBarBottomLeft", "Necrolord", "NecrolordBack")
HideShowback("MultiBarBottomRight", "Necrolord", "NecrolordBack")
HideShowback("MultiBarRight", "Necrolord", "NecrolordBack")
HideShowback("MultiBarLeft", "Necrolord", "NecrolordBack")
HideShowback("MultiBar5", "Necrolord", "NecrolordBack")
HideShowback("MultiBar6", "Necrolord", "NecrolordBack")
HideShowback("MultiBar7", "Necrolord", "NecrolordBack")
-- Venthyr --
HideShowback("Action", "Venthyr", "VenthyrBack")
HideShowback("MultiBarBottomLeft", "Venthyr", "VenthyrBack")
HideShowback("MultiBarBottomRight", "Venthyr", "VenthyrBack")
HideShowback("MultiBarRight", "Venthyr", "VenthyrBack")
HideShowback("MultiBarLeft", "Venthyr", "VenthyrBack")
HideShowback("MultiBar5", "Venthyr", "VenthyrBack")
HideShowback("MultiBar6", "Venthyr", "VenthyrBack")
HideShowback("MultiBar7", "Venthyr", "VenthyrBack")
-- functions for loading the saved variables --
-- hide --
local function HideAll(bar)
	for i = 1, 12, 1 do
			_G[bar.."Button"..i].SlotArt:Hide()
			_G[bar.."Button"..i].SlotBackground:Hide()
			_G[bar.."Button"..i.."SlotArt2"]:Hide()
			_G[bar.."Button"..i.."Nightfae"]:Hide()
			_G[bar.."Button"..i.."Kyrian"]:Hide()
			_G[bar.."Button"..i.."Necrolord"]:Hide()
			_G[bar.."Button"..i.."Venthyr"]:Hide()
		end
end
-- Show --
function abfSavedArtSlot(bar, vbar)
	HideAll(bar)
	if ABFactionBars[vbar]["Slot"]["Art"] == "SlotArt" then
		for i = 1, 12, 1 do
		_G[bar.."Button"..i].SlotArt:Show()
		end
	elseif ABFactionBars[vbar]["Slot"]["Art"] ~= "SlotArt" and ABFactionBars[vbar]["Slot"]["Art"] ~= "None" then
		for i = 1, 12, 1 do
			_G[bar.."Button"..i..ABFactionBars[vbar]["Slot"]["Art"]]:Show()
		end
	end
end
-- color --
function abfSavedColorSlot(bar, vbar)
	if ABFactionBars[vbar]["Slot"]["ArtColorOptions"] == "Default Color" then
		for i = 1, 12, 1 do
			_G[bar.."Button"..i].SlotArt:SetDesaturated(false)
			_G[bar.."Button"..i.."SlotArt2"]:SetDesaturated(false)
			_G[bar.."Button"..i.."Nightfae"]:SetDesaturated(false)
			_G[bar.."Button"..i.."NightfaeBack"]:SetDesaturated(false)
			_G[bar.."Button"..i.."Kyrian"]:SetDesaturated(false)
			_G[bar.."Button"..i.."KyrianBack"]:SetDesaturated(false)
			_G[bar.."Button"..i.."Necrolord"]:SetDesaturated(false)
			_G[bar.."Button"..i.."NecrolordBack"]:SetDesaturated(false)
			_G[bar.."Button"..i.."Venthyr"]:SetDesaturated(false)
			_G[bar.."Button"..i.."VenthyrBack"]:SetDesaturated(false)
		end
	else
		for i = 1, 12, 1 do
			_G[bar.."Button"..i].SlotArt:SetDesaturated(true)
			_G[bar.."Button"..i.."SlotArt2"]:SetDesaturated(true)
			_G[bar.."Button"..i.."Nightfae"]:SetDesaturated(true)
			_G[bar.."Button"..i.."NightfaeBack"]:SetDesaturated(true)
			_G[bar.."Button"..i.."Kyrian"]:SetDesaturated(true)
			_G[bar.."Button"..i.."KyrianBack"]:SetDesaturated(true)
			_G[bar.."Button"..i.."Necrolord"]:SetDesaturated(true)
			_G[bar.."Button"..i.."NecrolordBack"]:SetDesaturated(true)
			_G[bar.."Button"..i.."Venthyr"]:SetDesaturated(true)
			_G[bar.."Button"..i.."VenthyrBack"]:SetDesaturated(true)
		end
	end
	for i = 1, 12, 1 do
		_G[bar.."Button"..i].SlotArt:SetVertexColor(abfGetLocalColor(ABFactionBars[vbar]["Slot"]["ArtColor"]))
		_G[bar.."Button"..i.."SlotArt2"]:SetVertexColor(abfGetLocalColor(ABFactionBars[vbar]["Slot"]["ArtColor"]))
		_G[bar.."Button"..i.."Nightfae"]:SetVertexColor(abfGetLocalColor(ABFactionBars[vbar]["Slot"]["ArtColor"]))
		_G[bar.."Button"..i.."NightfaeBack"]:SetVertexColor(abfGetLocalColor(ABFactionBars[vbar]["Slot"]["ArtColor"]))
		_G[bar.."Button"..i.."Kyrian"]:SetVertexColor(abfGetLocalColor(ABFactionBars[vbar]["Slot"]["ArtColor"]))
		_G[bar.."Button"..i.."KyrianBack"]:SetVertexColor(abfGetLocalColor(ABFactionBars[vbar]["Slot"]["ArtColor"]))
		_G[bar.."Button"..i.."Necrolord"]:SetVertexColor(abfGetLocalColor(ABFactionBars[vbar]["Slot"]["ArtColor"]))
		_G[bar.."Button"..i.."NecrolordBack"]:SetVertexColor(abfGetLocalColor(ABFactionBars[vbar]["Slot"]["ArtColor"]))
		_G[bar.."Button"..i.."Venthyr"]:SetVertexColor(abfGetLocalColor(ABFactionBars[vbar]["Slot"]["ArtColor"]))
		_G[bar.."Button"..i.."VenthyrBack"]:SetVertexColor(abfGetLocalColor(ABFactionBars[vbar]["Slot"]["ArtColor"]))
	end
end
