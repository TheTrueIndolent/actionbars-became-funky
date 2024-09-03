-- Creating the Gryphon --
local function GryphonLeft(self, point)
	self:SetAtlas("UI-HUD-ActionBar-Gryphon-Left", true, "LINEAR")
	self:SetDesaturated(true)
	self:ClearAllPoints()
	self:SetPoint("BOTTOMRIGHT", point, "BOTTOMLEFT", 14, -24)
	self:Hide()
end
local function GryphonRight(self, point)
	self:SetAtlas("UI-HUD-ActionBar-Gryphon-Right", true, "LINEAR")
	self:SetDesaturated(true)
	self:ClearAllPoints()
	self:SetPoint("BOTTOMLEFT", point, "BOTTOMRIGHT", -12, -24)
	self:Hide()
end
-- Gryphons Action Bar 1 --
-- Left --
local texture = ActionButton1:CreateTexture("$parentGryphonLeft", "OVERLAY", nil, 7)
	GryphonLeft(ActionButton1GryphonLeft, MainMenuBar)
-- Right --
local texture = ActionButton1:CreateTexture("$parentGryphonRight", "OVERLAY", nil, 7)
	GryphonRight(ActionButton1GryphonRight, MainMenuBar)
-- Gryphons Action Bar 2 --
-- Left --
local texture = MultiBarBottomLeftButton1:CreateTexture("$parentGryphonLeft", "OVERLAY", nil, 7)
	GryphonLeft(MultiBarBottomLeftButton1GryphonLeft, MultiBarBottomLeft)
-- Right --
local texture = MultiBarBottomLeftButton1:CreateTexture("$parentGryphonRight", "OVERLAY", nil, 7)
	GryphonRight(MultiBarBottomLeftButton1GryphonRight, MultiBarBottomLeft)
-- Gryphons Action Bar 3 --
-- Left --
local texture = MultiBarBottomRightButton1:CreateTexture("$parentGryphonLeft", "OVERLAY", nil, 7)
	GryphonLeft(MultiBarBottomRightButton1GryphonLeft, MultiBarBottomRight)
-- Right --
local texture = MultiBarBottomRightButton1:CreateTexture("$parentGryphonRight", "OVERLAY", nil, 7)
	GryphonRight(MultiBarBottomRightButton1GryphonRight, MultiBarBottomRight)
-- Gryphons Action Bar 4 --
-- Left --
local texture = MultiBarRightButton1:CreateTexture("$parentGryphonLeft", "OVERLAY", nil, 7)
	GryphonLeft(MultiBarRightButton1GryphonLeft, MultiBarRight)
-- Right --
local texture = MultiBarRightButton1:CreateTexture("$parentGryphonRight", "OVERLAY", nil, 7)
	GryphonRight(MultiBarRightButton1GryphonRight, MultiBarRight)
-- Gryphons Action Bar 5 --
-- Left --
local texture = MultiBarLeftButton1:CreateTexture("$parentGryphonLeft", "OVERLAY", nil, 7)
	GryphonLeft(MultiBarLeftButton1GryphonLeft, MultiBarLeft)
-- Right --
local texture = MultiBarLeftButton1:CreateTexture("$parentGryphonRight", "OVERLAY", nil, 7)
	GryphonRight(MultiBarLeftButton1GryphonRight, MultiBarLeft)
-- Gryphons Action Bar 6 --
-- Left --
local texture = MultiBar5Button1:CreateTexture("$parentGryphonLeft", "OVERLAY", nil, 7)
	GryphonLeft(MultiBar5Button1GryphonLeft, MultiBar5)
-- Right --
local texture = MultiBar5Button1:CreateTexture("$parentGryphonRight", "OVERLAY", nil, 7)
	GryphonRight(MultiBar5Button1GryphonRight, MultiBar5)
-- Gryphons Action Bar 7 --
-- Left --
local texture = MultiBar6Button1:CreateTexture("$parentGryphonLeft", "OVERLAY", nil, 7)
	GryphonLeft(MultiBar6Button1GryphonLeft, MultiBar6)
-- Right --
local texture = MultiBar6Button1:CreateTexture("$parentGryphonRight", "OVERLAY", nil, 7)
	GryphonRight(MultiBar6Button1GryphonRight, MultiBar6)
-- Gryphons Action Bar 8 --
-- Left --
local texture = MultiBar7Button1:CreateTexture("$parentGryphonLeft", "OVERLAY", nil, 7)
	GryphonLeft(MultiBar7Button1GryphonLeft, MultiBar7)
-- Right --
local texture = MultiBar7Button1:CreateTexture("$parentGryphonRight", "OVERLAY", nil, 7)
	GryphonRight(MultiBar7Button1GryphonRight, MultiBar7)
-- Creating the Wyverns --
local function WyvernLeft(self, point)
	self:SetAtlas("UI-HUD-ActionBar-Wyvern-Left", true, "LINEAR")
	self:SetDesaturated(true)
	self:ClearAllPoints()
	self:SetPoint("BOTTOMRIGHT", point, "BOTTOMLEFT", 14, -24)
	self:Hide()
end
local function WyvernRight(self, point)
	self:SetAtlas("UI-HUD-ActionBar-Wyvern-Right", true, "LINEAR")
	self:SetDesaturated(true)
	self:ClearAllPoints()
	self:SetPoint("BOTTOMLEFT", point, "BOTTOMRIGHT", -16, -24)
	self:Hide()
end
-- Wyverns Action Bar 1 --
-- Left --
local texture = ActionButton1:CreateTexture("$parentWyvernLeft", "OVERLAY", nil, 7)
	WyvernLeft(ActionButton1WyvernLeft, MainMenuBar)
-- Right --
local texture = ActionButton1:CreateTexture("$parentWyvernRight", "OVERLAY", nil, 7)
	WyvernRight(ActionButton1WyvernRight, MainMenuBar)
	ActionButton1WyvernRight:ClearAllPoints()
	ActionButton1WyvernRight:SetPoint("BOTTOMLEFT", MainMenuBar, "BOTTOMRIGHT", -12, -24)
-- Wyverns Action Bar 2 --
-- Left --
local texture = MultiBarBottomLeftButton1:CreateTexture("$parentWyvernLeft", "OVERLAY", nil, 7)
	WyvernLeft(MultiBarBottomLeftButton1WyvernLeft, MultiBarBottomLeft)
-- Right --
local texture = MultiBarBottomLeftButton1:CreateTexture("$parentWyvernRight", "OVERLAY", nil, 7)
	WyvernRight(MultiBarBottomLeftButton1WyvernRight, MultiBarBottomLeft)
-- Wyverns Action Bar 3 --
-- Left --
local texture = MultiBarBottomRightButton1:CreateTexture("$parentWyvernLeft", "OVERLAY", nil, 7)
	WyvernLeft(MultiBarBottomRightButton1WyvernLeft, MultiBarBottomRight)
-- Right --
local texture = MultiBarBottomRightButton1:CreateTexture("$parentWyvernRight", "OVERLAY", nil, 7)
	WyvernRight(MultiBarBottomRightButton1WyvernRight, MultiBarBottomRight)
-- Wyverns Action Bar 4 --
-- Left --
local texture = MultiBarRightButton1:CreateTexture("$parentWyvernLeft", "OVERLAY", nil, 7)
	WyvernLeft(MultiBarRightButton1WyvernLeft, MultiBarRight)
-- Right --
local texture = MultiBarRightButton1:CreateTexture("$parentWyvernRight", "OVERLAY", nil, 7)
	WyvernRight(MultiBarRightButton1WyvernRight, MultiBarRight)
-- Wyverns Action Bar 5 --
-- Left --
local texture = MultiBarLeftButton1:CreateTexture("$parentWyvernLeft", "OVERLAY", nil, 7)
	WyvernLeft(MultiBarLeftButton1WyvernLeft, MultiBarLeft)
-- Right --
local texture = MultiBarLeftButton1:CreateTexture("$parentWyvernRight", "OVERLAY", nil, 7)
	WyvernRight(MultiBarLeftButton1WyvernRight, MultiBarLeft)
-- Wyverns Action Bar 6 --
-- Left --
local texture = MultiBar5Button1:CreateTexture("$parentWyvernLeft", "OVERLAY", nil, 7)
	WyvernLeft(MultiBar5Button1WyvernLeft, MultiBar5)
-- Right --
local texture = MultiBar5Button1:CreateTexture("$parentWyvernRight", "OVERLAY", nil, 7)
	WyvernRight(MultiBar5Button1WyvernRight, MultiBar5)
-- Wyverns Action Bar 7 --
-- Left --
local texture = MultiBar6Button1:CreateTexture("$parentWyvernLeft", "OVERLAY", nil, 7)
	WyvernLeft(MultiBar6Button1WyvernLeft, MultiBar6)
-- Right --
local texture = MultiBar6Button1:CreateTexture("$parentWyvernRight", "OVERLAY", nil, 7)
	WyvernRight(MultiBar6Button1WyvernRight, MultiBar6)
-- Wyverns Action Bar 8 --
-- Left --
local texture = MultiBar7Button1:CreateTexture("$parentWyvernLeft", "OVERLAY", nil, 7)
	WyvernLeft(MultiBar7Button1WyvernLeft, MultiBar7)
-- Right --
local texture = MultiBar7Button1:CreateTexture("$parentWyvernRight", "OVERLAY", nil, 7)
	WyvernRight(MultiBar7Button1WyvernRight, MultiBar7)
-- Creating the Winged Dragons --
local function WingedDragonLeft(self, point)
	self:SetAtlas("UI-HUD-UnitFrame-Target-PortraitOn-Boss-Gold-Winged", true, "LINEAR")
	self:SetDesaturated(true)
	self:SetTexCoord(1, 0, 0, 1)
	self:ClearAllPoints()
	self:SetPoint("CENTER", point, "LEFT", 16, -4)
	self:Hide()
end
local function WingedDragonRight(self, point)
	self:SetAtlas("UI-HUD-UnitFrame-Target-PortraitOn-Boss-Gold-Winged", true, "LINEAR")
	self:SetDesaturated(true)
	self:ClearAllPoints()
	self:SetPoint("CENTER", point, "RIGHT", -18, -4)
	self:Hide()
end
-- Winged Dragons Action Bar 1 --
-- Left --
local texture = ActionButton1:CreateTexture("$parentWingedDragonLeft", "OVERLAY", nil, 7)
	WingedDragonLeft(ActionButton1WingedDragonLeft, MainMenuBar)
	ActionButton1WingedDragonLeft:ClearAllPoints()
	ActionButton1WingedDragonLeft:SetPoint("CENTER", MainMenuBar, "LEFT", 16, 0)
-- Right --
local texture = ActionButton1:CreateTexture("$parentWingedDragonRight", "OVERLAY", nil, 7)
	WingedDragonRight(ActionButton1WingedDragonRight, MainMenuBar)
	ActionButton1WingedDragonRight:ClearAllPoints()
	ActionButton1WingedDragonRight:SetPoint("CENTER", MainMenuBar, "RIGHT", -14, 0)
-- Winged Dragons Action Bar 2 --
-- Left --
local texture = MultiBarBottomLeftButton1:CreateTexture("$parentWingedDragonLeft", "OVERLAY", nil, 7)
	WingedDragonLeft(MultiBarBottomLeftButton1WingedDragonLeft, MultiBarBottomLeft)
-- Right --
local texture = MultiBarBottomLeftButton1:CreateTexture("$parentWingedDragonRight", "OVERLAY", nil, 7)
	WingedDragonRight(MultiBarBottomLeftButton1WingedDragonRight, MultiBarBottomLeft)
-- Winged Dragons Action Bar 3 --
-- Left --
local texture = MultiBarBottomRightButton1:CreateTexture("$parentWingedDragonLeft", "OVERLAY", nil, 7)
	WingedDragonLeft(MultiBarBottomRightButton1WingedDragonLeft, MultiBarBottomRight)
-- Right --
local texture = MultiBarBottomRightButton1:CreateTexture("$parentWingedDragonRight", "OVERLAY", nil, 7)
	WingedDragonRight(MultiBarBottomRightButton1WingedDragonRight, MultiBarBottomRight)
-- Winged Dragons Action Bar 4 --
-- Left --
local texture = MultiBarRightButton1:CreateTexture("$parentWingedDragonLeft", "OVERLAY", nil, 7)
	WingedDragonLeft(MultiBarRightButton1WingedDragonLeft, MultiBarRight)
-- Right --
local texture = MultiBarRightButton1:CreateTexture("$parentWingedDragonRight", "OVERLAY", nil, 7)
	WingedDragonRight(MultiBarRightButton1WingedDragonRight, MultiBarRight)
-- Winged Dragons Action Bar 5 --
-- Left --
local texture = MultiBarLeftButton1:CreateTexture("$parentWingedDragonLeft", "OVERLAY", nil, 7)
	WingedDragonLeft(MultiBarLeftButton1WingedDragonLeft, MultiBarLeft)
-- Right --
local texture = MultiBarLeftButton1:CreateTexture("$parentWingedDragonRight", "OVERLAY", nil, 7)
	WingedDragonRight(MultiBarLeftButton1WingedDragonRight, MultiBarLeft)
-- Winged Dragons Action Bar 6 --
-- Left --
local texture = MultiBar5Button1:CreateTexture("$parentWingedDragonLeft", "OVERLAY", nil, 7)
	WingedDragonLeft(MultiBar5Button1WingedDragonLeft, MultiBar5)
-- Right --
local texture = MultiBar5Button1:CreateTexture("$parentWingedDragonRight", "OVERLAY", nil, 7)
	WingedDragonRight(MultiBar5Button1WingedDragonRight, MultiBar5)
-- Winged Dragons Action Bar 7 --
-- Left --
local texture = MultiBar6Button1:CreateTexture("$parentWingedDragonLeft", "OVERLAY", nil, 7)
	WingedDragonLeft(MultiBar6Button1WingedDragonLeft, MultiBar6)
-- Right --
local texture = MultiBar6Button1:CreateTexture("$parentWingedDragonRight", "OVERLAY", nil, 7)
	WingedDragonRight(MultiBar6Button1WingedDragonRight, MultiBar6)
-- Winged Dragons Action Bar 8 --
-- Left --
local texture = MultiBar7Button1:CreateTexture("$parentWingedDragonLeft", "OVERLAY", nil, 7)
	WingedDragonLeft(MultiBar7Button1WingedDragonLeft, MultiBar7)
-- Right --
local texture = MultiBar7Button1:CreateTexture("$parentWingedDragonRight", "OVERLAY", nil, 7)
	WingedDragonRight(MultiBar7Button1WingedDragonRight, MultiBar7)
-- Creating the Dragons --
local function DragonLeft(self, point)
	self:SetAtlas("UI-HUD-UnitFrame-Target-PortraitOn-Boss-Gold", true, "LINEAR")
	self:SetDesaturated(true)
	self:SetTexCoord(1, 0, 0, 1)
	self:ClearAllPoints()
	self:SetPoint("CENTER", point, "LEFT", 24, -4)
	self:Hide()
end
local function DragonRight(self, point)
	self:SetAtlas("UI-HUD-UnitFrame-Target-PortraitOn-Boss-Gold", true, "LINEAR")
	self:SetDesaturated(true)
	self:ClearAllPoints()
	self:SetPoint("CENTER", point, "RIGHT", -28, -4)
	self:Hide()
end
-- Dragons Action Bar 1 --
-- Left --
local texture = ActionButton1:CreateTexture("$parentDragonLeft", "OVERLAY", nil, 7)
	DragonLeft(ActionButton1DragonLeft, MainMenuBar)
	ActionButton1DragonLeft:ClearAllPoints()
	ActionButton1DragonLeft:SetPoint("CENTER", MainMenuBar, "LEFT", 24, 0)
-- Right --
local texture = ActionButton1:CreateTexture("$parentDragonRight", "OVERLAY", nil, 7)
	DragonRight(ActionButton1DragonRight, MainMenuBar)
	ActionButton1DragonRight:ClearAllPoints()
	ActionButton1DragonRight:SetPoint("CENTER", MainMenuBar, "RIGHT", -24, 0)
-- Dragons Action Bar 2 --
-- Left --
local texture = MultiBarBottomLeftButton1:CreateTexture("$parentDragonLeft", "OVERLAY", nil, 7)
	DragonLeft(MultiBarBottomLeftButton1DragonLeft, MultiBarBottomLeft)
-- Right --
local texture = MultiBarBottomLeftButton1:CreateTexture("$parentDragonRight", "OVERLAY", nil, 7)
	DragonRight(MultiBarBottomLeftButton1DragonRight, MultiBarBottomLeft)
-- Dragons Action Bar 3 --
-- Left --
local texture = MultiBarBottomRightButton1:CreateTexture("$parentDragonLeft", "OVERLAY", nil, 7)
	DragonLeft(MultiBarBottomRightButton1DragonLeft, MultiBarBottomRight)
-- Right --
local texture = MultiBarBottomRightButton1:CreateTexture("$parentDragonRight", "OVERLAY", nil, 7)
	DragonRight(MultiBarBottomRightButton1DragonRight, MultiBarBottomRight)
-- Dragons Action Bar 4 --
-- Left --
local texture = MultiBarRightButton1:CreateTexture("$parentDragonLeft", "OVERLAY", nil, 7)
	DragonLeft(MultiBarRightButton1DragonLeft, MultiBarRight)
-- Right --
local texture = MultiBarRightButton1:CreateTexture("$parentDragonRight", "OVERLAY", nil, 7)
	DragonRight(MultiBarRightButton1DragonRight, MultiBarRight)
-- Dragons Action Bar 5 --
-- Left --
local texture = MultiBarLeftButton1:CreateTexture("$parentDragonLeft", "OVERLAY", nil, 7)
	DragonLeft(MultiBarLeftButton1DragonLeft, MultiBarLeft)
-- Right --
local texture = MultiBarLeftButton1:CreateTexture("$parentDragonRight", "OVERLAY", nil, 7)
	DragonRight(MultiBarLeftButton1DragonRight, MultiBarLeft)
-- Dragons Action Bar 6 --
-- Left --
local texture = MultiBar5Button1:CreateTexture("$parentDragonLeft", "OVERLAY", nil, 7)
	DragonLeft(MultiBar5Button1DragonLeft, MultiBar5)
-- Right --
local texture = MultiBar5Button1:CreateTexture("$parentDragonRight", "OVERLAY", nil, 7)
	DragonRight(MultiBar5Button1DragonRight, MultiBar5)
-- Dragons Action Bar 7 --
-- Left --
local texture = MultiBar6Button1:CreateTexture("$parentDragonLeft", "OVERLAY", nil, 7)
	DragonLeft(MultiBar6Button1DragonLeft, MultiBar6)
-- Right --
local texture = MultiBar6Button1:CreateTexture("$parentDragonRight", "OVERLAY", nil, 7)
	DragonRight(MultiBar6Button1DragonRight, MultiBar6)
-- Dragons Action Bar 8 --
-- Left --
local texture = MultiBar7Button1:CreateTexture("$parentDragonLeft", "OVERLAY", nil, 7)
	DragonLeft(MultiBar7Button1DragonLeft, MultiBar7)
-- Right --
local texture = MultiBar7Button1:CreateTexture("$parentDragonRight", "OVERLAY", nil, 7)
	DragonRight(MultiBar7Button1DragonRight, MultiBar7)
