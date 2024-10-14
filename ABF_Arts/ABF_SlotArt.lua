-- Creating the Slot Art Nightfae --
-- back --
local function CovenantBack(self, point, text)
	self:SetPoint("TOPLEFT", point, "TOPLEFT", 2, -2)
	self:SetPoint("BOTTOMRIGHT", point, "BOTTOMRIGHT", -2, 0)
	self:SetAtlas(text, false, "LINEAR")
	self:SetBlendMode("ADD")
	self:Hide()
end
for i = 1, 12, 1 do
-- Nightfae MainMenuBar --
	MainMenuBar.actionButtons[i].NightfaeBack = MainMenuBar.actionButtons[i]:CreateTexture(nil, "BACKGROUND", nil, 7)
	CovenantBack(MainMenuBar.actionButtons[i].NightfaeBack, MainMenuBar.actionButtons[i], "CovenantSanctum-Text-Border-Nightfae")
-- Kyrian MainMenuBar --
	MainMenuBar.actionButtons[i].KyrianBack = MainMenuBar.actionButtons[i]:CreateTexture(nil, "BACKGROUND", nil, 7)
	CovenantBack(MainMenuBar.actionButtons[i].KyrianBack, MainMenuBar.actionButtons[i], "CovenantSanctum-Text-Border-Kyrian")
-- Necrolord MainMenuBar --
	MainMenuBar.actionButtons[i].NecrolordBack = MainMenuBar.actionButtons[i]:CreateTexture(nil, "BACKGROUND", nil, 7)
	CovenantBack(MainMenuBar.actionButtons[i].NecrolordBack, MainMenuBar.actionButtons[i], "CovenantSanctum-Text-Border-Necrolord")
-- Venthyr MainMenuBar --
	MainMenuBar.actionButtons[i].VenthyrBack = MainMenuBar.actionButtons[i]:CreateTexture(nil, "BACKGROUND", nil, 7)
	CovenantBack(MainMenuBar.actionButtons[i].VenthyrBack, MainMenuBar.actionButtons[i], "CovenantSanctum-Text-Border-Venthyr")
-- Nightfae MultiBarBottomLeft --
	MultiBarBottomLeft.actionButtons[i].NightfaeBack = MultiBarBottomLeft.actionButtons[i]:CreateTexture(nil, "BACKGROUND", nil, 7)
	CovenantBack(MultiBarBottomLeft.actionButtons[i].NightfaeBack, MultiBarBottomLeft.actionButtons[i], "CovenantSanctum-Text-Border-Nightfae")
-- Kyrian MultiBarBottomLeft --
	MultiBarBottomLeft.actionButtons[i].KyrianBack = MultiBarBottomLeft.actionButtons[i]:CreateTexture(nil, "BACKGROUND", nil, 7)
	CovenantBack(MultiBarBottomLeft.actionButtons[i].KyrianBack, MultiBarBottomLeft.actionButtons[i], "CovenantSanctum-Text-Border-Kyrian")
-- Necrolord MultiBarBottomLeft --
	MultiBarBottomLeft.actionButtons[i].NecrolordBack = MultiBarBottomLeft.actionButtons[i]:CreateTexture(nil, "BACKGROUND", nil, 7)
	CovenantBack(MultiBarBottomLeft.actionButtons[i].NecrolordBack, MultiBarBottomLeft.actionButtons[i], "CovenantSanctum-Text-Border-Necrolord")
-- Venthyr MultiBarBottomLeft --
	MultiBarBottomLeft.actionButtons[i].VenthyrBack = MultiBarBottomLeft.actionButtons[i]:CreateTexture(nil, "BACKGROUND", nil, 7)
	CovenantBack(MultiBarBottomLeft.actionButtons[i].VenthyrBack, MultiBarBottomLeft.actionButtons[i], "CovenantSanctum-Text-Border-Venthyr")
-- Nightfae MultiBarBottomRight --
	MultiBarBottomRight.actionButtons[i].NightfaeBack = MultiBarBottomRight.actionButtons[i]:CreateTexture(nil, "BACKGROUND", nil, 7)
	CovenantBack(MultiBarBottomRight.actionButtons[i].NightfaeBack, MultiBarBottomRight.actionButtons[i], "CovenantSanctum-Text-Border-Nightfae")
-- Kyrian MultiBarBottomRight --
	MultiBarBottomRight.actionButtons[i].KyrianBack = MultiBarBottomRight.actionButtons[i]:CreateTexture(nil, "BACKGROUND", nil, 7)
	CovenantBack(MultiBarBottomRight.actionButtons[i].KyrianBack, MultiBarBottomRight.actionButtons[i], "CovenantSanctum-Text-Border-Kyrian")
-- Necrolord MultiBarBottomRight --
	MultiBarBottomRight.actionButtons[i].NecrolordBack = MultiBarBottomRight.actionButtons[i]:CreateTexture(nil, "BACKGROUND", nil, 7)
	CovenantBack(MultiBarBottomRight.actionButtons[i].NecrolordBack, MultiBarBottomRight.actionButtons[i], "CovenantSanctum-Text-Border-Necrolord")
-- Venthyr MultiBarBottomRight --
	MultiBarBottomRight.actionButtons[i].VenthyrBack = MultiBarBottomRight.actionButtons[i]:CreateTexture(nil, "BACKGROUND", nil, 7)
	CovenantBack(MultiBarBottomRight.actionButtons[i].VenthyrBack, MultiBarBottomRight.actionButtons[i], "CovenantSanctum-Text-Border-Venthyr")
-- Nightfae MultiBarRight --
	MultiBarRight.actionButtons[i].NightfaeBack = MultiBarRight.actionButtons[i]:CreateTexture(nil, "BACKGROUND", nil, 7)
	CovenantBack(MultiBarRight.actionButtons[i].NightfaeBack, MultiBarRight.actionButtons[i], "CovenantSanctum-Text-Border-Nightfae")
-- Kyrian MultiBarRight --
	MultiBarRight.actionButtons[i].KyrianBack = MultiBarRight.actionButtons[i]:CreateTexture(nil, "BACKGROUND", nil, 7)
	CovenantBack(MultiBarRight.actionButtons[i].KyrianBack, MultiBarRight.actionButtons[i], "CovenantSanctum-Text-Border-Kyrian")
-- Necrolord MultiBarRight --
	MultiBarRight.actionButtons[i].NecrolordBack = MultiBarRight.actionButtons[i]:CreateTexture(nil, "BACKGROUND", nil, 7)
	CovenantBack(MultiBarRight.actionButtons[i].NecrolordBack, MultiBarRight.actionButtons[i], "CovenantSanctum-Text-Border-Necrolord")
-- Venthyr MultiBarRight --
	MultiBarRight.actionButtons[i].VenthyrBack = MultiBarRight.actionButtons[i]:CreateTexture(nil, "BACKGROUND", nil, 7)
	CovenantBack(MultiBarRight.actionButtons[i].VenthyrBack, MultiBarRight.actionButtons[i], "CovenantSanctum-Text-Border-Venthyr")
-- Nightfae MultiBarLeft --
	MultiBarLeft.actionButtons[i].NightfaeBack = MultiBarLeft.actionButtons[i]:CreateTexture(nil, "BACKGROUND", nil, 7)
	CovenantBack(MultiBarLeft.actionButtons[i].NightfaeBack, MultiBarLeft.actionButtons[i], "CovenantSanctum-Text-Border-Nightfae")
-- Kyrian MultiBarLeft --
	MultiBarLeft.actionButtons[i].KyrianBack = MultiBarLeft.actionButtons[i]:CreateTexture(nil, "BACKGROUND", nil, 7)
	CovenantBack(MultiBarLeft.actionButtons[i].KyrianBack, MultiBarLeft.actionButtons[i], "CovenantSanctum-Text-Border-Kyrian")
-- Necrolord MultiBarLeft --
	MultiBarLeft.actionButtons[i].NecrolordBack = MultiBarLeft.actionButtons[i]:CreateTexture(nil, "BACKGROUND", nil, 7)
	CovenantBack(MultiBarLeft.actionButtons[i].NecrolordBack, MultiBarLeft.actionButtons[i], "CovenantSanctum-Text-Border-Necrolord")
-- Venthyr MultiBarLeft --
	MultiBarLeft.actionButtons[i].VenthyrBack = MultiBarLeft.actionButtons[i]:CreateTexture(nil, "BACKGROUND", nil, 7)
	CovenantBack(MultiBarLeft.actionButtons[i].VenthyrBack, MultiBarLeft.actionButtons[i], "CovenantSanctum-Text-Border-Venthyr")
-- Nightfae MultiBar5 --
	MultiBar5.actionButtons[i].NightfaeBack = MultiBar5.actionButtons[i]:CreateTexture(nil, "BACKGROUND", nil, 7)
	CovenantBack(MultiBar5.actionButtons[i].NightfaeBack, MultiBar5.actionButtons[i], "CovenantSanctum-Text-Border-Nightfae")
-- Kyrian MultiBar5 --
	MultiBar5.actionButtons[i].KyrianBack = MultiBar5.actionButtons[i]:CreateTexture(nil, "BACKGROUND", nil, 7)
	CovenantBack(MultiBar5.actionButtons[i].KyrianBack, MultiBar5.actionButtons[i], "CovenantSanctum-Text-Border-Kyrian")
-- Necrolord MultiBar5 --
	MultiBar5.actionButtons[i].NecrolordBack = MultiBar5.actionButtons[i]:CreateTexture(nil, "BACKGROUND", nil, 7)
	CovenantBack(MultiBar5.actionButtons[i].NecrolordBack, MultiBar5.actionButtons[i], "CovenantSanctum-Text-Border-Necrolord")
-- Venthyr MultiBar5 --
	MultiBar5.actionButtons[i].VenthyrBack = MultiBar5.actionButtons[i]:CreateTexture(nil, "BACKGROUND", nil, 7)
	CovenantBack(MultiBar5.actionButtons[i].VenthyrBack, MultiBar5.actionButtons[i], "CovenantSanctum-Text-Border-Venthyr")
-- Nightfae MultiBar6 --
	MultiBar6.actionButtons[i].NightfaeBack = MultiBar6.actionButtons[i]:CreateTexture(nil, "BACKGROUND", nil, 7)
	CovenantBack(MultiBar6.actionButtons[i].NightfaeBack, MultiBar6.actionButtons[i], "CovenantSanctum-Text-Border-Nightfae")
-- Kyrian MultiBar6 --
	MultiBar6.actionButtons[i].KyrianBack = MultiBar6.actionButtons[i]:CreateTexture(nil, "BACKGROUND", nil, 7)
	CovenantBack(MultiBar6.actionButtons[i].KyrianBack, MultiBar6.actionButtons[i], "CovenantSanctum-Text-Border-Kyrian")
-- Necrolord MultiBar6 --
	MultiBar6.actionButtons[i].NecrolordBack = MultiBar6.actionButtons[i]:CreateTexture(nil, "BACKGROUND", nil, 7)
	CovenantBack(MultiBar6.actionButtons[i].NecrolordBack, MultiBar6.actionButtons[i], "CovenantSanctum-Text-Border-Necrolord")
-- Venthyr MultiBar6 --
	MultiBar6.actionButtons[i].VenthyrBack = MultiBar6.actionButtons[i]:CreateTexture(nil, "BACKGROUND", nil, 7)
	CovenantBack(MultiBar6.actionButtons[i].VenthyrBack, MultiBar6.actionButtons[i], "CovenantSanctum-Text-Border-Venthyr")
-- Nightfae MultiBar7 --
	MultiBar7.actionButtons[i].NightfaeBack = MultiBar7.actionButtons[i]:CreateTexture(nil, "BACKGROUND", nil, 7)
	CovenantBack(MultiBar7.actionButtons[i].NightfaeBack, MultiBar7.actionButtons[i], "CovenantSanctum-Text-Border-Nightfae")
-- Kyrian MultiBar7 --
	MultiBar7.actionButtons[i].KyrianBack = MultiBar7.actionButtons[i]:CreateTexture(nil, "BACKGROUND", nil, 7)
	CovenantBack(MultiBar7.actionButtons[i].KyrianBack, MultiBar7.actionButtons[i], "CovenantSanctum-Text-Border-Kyrian")
-- Necrolord MultiBar7 --
	MultiBar7.actionButtons[i].NecrolordBack = MultiBar7.actionButtons[i]:CreateTexture(nil, "BACKGROUND", nil, 7)
	CovenantBack(MultiBar7.actionButtons[i].NecrolordBack, MultiBar7.actionButtons[i], "CovenantSanctum-Text-Border-Necrolord")
-- Venthyr MultiBar7 --
	MultiBar7.actionButtons[i].VenthyrBack = MultiBar7.actionButtons[i]:CreateTexture(nil, "BACKGROUND", nil, 7)
	CovenantBack(MultiBar7.actionButtons[i].VenthyrBack, MultiBar7.actionButtons[i], "CovenantSanctum-Text-Border-Venthyr")
end
