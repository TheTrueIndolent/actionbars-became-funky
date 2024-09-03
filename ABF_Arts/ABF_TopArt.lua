-- Jailers Tower --
local function JailersTower(self, point)
	self:SetAtlas("jailerstower-score-topper", true, "LINEAR")
	self:SetDesaturated(true)
	self:ClearAllPoints()
	self:SetPoint("BOTTOM", point, "TOP", 0, -36.5)
	self:Hide()
end
-- Action Bar 1 --
local TopTexture = ActionButton1:CreateTexture("$parentJailersTower", "ARTWORK", nil, 0)
JailersTower(ActionButton1JailersTower, MainMenuBar)
ActionButton1JailersTower:ClearAllPoints()
ActionButton1JailersTower:SetPoint("BOTTOM", MainMenuBar, "TOP", 2, -28)
-- Action Bar 2 --
local TopTexture = MultiBarBottomLeftButton1:CreateTexture("$parentJailersTower", "ARTWORK", nil, 0)
JailersTower(MultiBarBottomLeftButton1JailersTower, MultiBarBottomLeft)
-- Action Bar 3 --
local TopTexture = MultiBarBottomRightButton1:CreateTexture("$parentJailersTower", "ARTWORK", nil, 0)
JailersTower(MultiBarBottomRightButton1JailersTower, MultiBarBottomRight)
-- Action Bar 4 --
local TopTexture = MultiBarRightButton1:CreateTexture("$parentJailersTower", "ARTWORK", nil, 0)
JailersTower(MultiBarRightButton1JailersTower, MultiBarRight)
-- Action Bar 5 --
local TopTexture = MultiBarLeftButton1:CreateTexture("$parentJailersTower", "ARTWORK", nil, 0)
JailersTower(MultiBarLeftButton1JailersTower, MultiBarLeft)
-- Action Bar 6 --
local TopTexture = MultiBar5Button1:CreateTexture("$parentJailersTower", "ARTWORK", nil, 0)
JailersTower(MultiBar5Button1JailersTower, MultiBar5)
-- Action Bar 7 --
local TopTexture = MultiBar6Button1:CreateTexture("$parentJailersTower", "ARTWORK", nil, 0)
JailersTower(MultiBar6Button1JailersTower, MultiBar6)
-- Action Bar 8 --
local TopTexture = MultiBar7Button1:CreateTexture("$parentJailersTower", "ARTWORK", nil, 0)
JailersTower(MultiBar7Button1JailersTower, MultiBar7)
-- Horns --
local function HornsLeft(self, point)
	self:SetAtlas("BossBanner-LeftFillagree", true, "LINEAR")
	self:SetDesaturated(true)
	self:ClearAllPoints()
	self:SetPoint("BOTTOMRIGHT", point, "TOP", 0, -8)
	self:Hide()
end
local function HornsRight(self, point)
	self:SetAtlas("BossBanner-RightFillagree", true, "LINEAR")
	self:SetDesaturated(true)
	self:ClearAllPoints()
	self:SetPoint("BOTTOMLEFT", point, "TOP", 0, -8)
	self:Hide()
end
-- Action Bar 1 --
local TopTexture = ActionButton1:CreateTexture("$parentHornsLeft", "ARTWORK", nil, 0)
HornsLeft(ActionButton1HornsLeft, MainMenuBar)
ActionButton1HornsLeft:ClearAllPoints()
ActionButton1HornsLeft:SetPoint("BOTTOMRIGHT", MainMenuBar, "TOP", 0, 1)
local TopTexture = ActionButton1:CreateTexture("$parentHornsRight", "ARTWORK", nil, 0)
HornsRight(ActionButton1HornsRight, MainMenuBar)
ActionButton1HornsRight:ClearAllPoints()
ActionButton1HornsRight:SetPoint("BOTTOMLEFT", MainMenuBar, "TOP", 0, 1)
-- Action Bar 2 --
local TopTexture = MultiBarBottomLeftButton1:CreateTexture("$parentHornsLeft", "ARTWORK", nil, 0)
HornsLeft(MultiBarBottomLeftButton1HornsLeft, MultiBarBottomLeft)
local TopTexture = MultiBarBottomLeftButton1:CreateTexture("$parentHornsRight", "ARTWORK", nil, 0)
HornsRight(MultiBarBottomLeftButton1HornsRight, MultiBarBottomLeft)
-- Action Bar 3 --
local TopTexture = MultiBarBottomRightButton1:CreateTexture("$parentHornsLeft", "ARTWORK", nil, 0)
HornsLeft(MultiBarBottomRightButton1HornsLeft, MultiBarBottomRight)
local TopTexture = MultiBarBottomRightButton1:CreateTexture("$parentHornsRight", "ARTWORK", nil, 0)
HornsRight(MultiBarBottomRightButton1HornsRight, MultiBarBottomRight)
-- Action Bar 4 --
local TopTexture = MultiBarRightButton1:CreateTexture("$parentHornsLeft", "ARTWORK", nil, 0)
HornsLeft(MultiBarRightButton1HornsLeft, MultiBarRight)
local TopTexture = MultiBarRightButton1:CreateTexture("$parentHornsRight", "ARTWORK", nil, 0)
HornsRight(MultiBarRightButton1HornsRight, MultiBarRight)
-- Action Bar 5 --
local TopTexture = MultiBarLeftButton1:CreateTexture("$parentHornsLeft", "ARTWORK", nil, 0)
HornsLeft(MultiBarLeftButton1HornsLeft, MultiBarLeft)
local TopTexture = MultiBarLeftButton1:CreateTexture("$parentHornsRight", "ARTWORK", nil, 0)
HornsRight(MultiBarLeftButton1HornsRight, MultiBarLeft)
-- Action Bar 6 --
local TopTexture = MultiBar5Button1:CreateTexture("$parentHornsLeft", "ARTWORK", nil, 0)
HornsLeft(MultiBar5Button1HornsLeft, MultiBar5)
local TopTexture = MultiBar5Button1:CreateTexture("$parentHornsRight", "ARTWORK", nil, 0)
HornsRight(MultiBar5Button1HornsRight, MultiBar5)
-- Action Bar 7 --
local TopTexture = MultiBar6Button1:CreateTexture("$parentHornsLeft", "ARTWORK", nil, 0)
HornsLeft(MultiBar6Button1HornsLeft, MultiBar6)
local TopTexture = MultiBar6Button1:CreateTexture("$parentHornsRight", "ARTWORK", nil, 0)
HornsRight(MultiBar6Button1HornsRight, MultiBar6)
-- Action Bar 8 --
local TopTexture = MultiBar7Button1:CreateTexture("$parentHornsLeft", "ARTWORK", nil, 0)
HornsLeft(MultiBar7Button1HornsLeft, MultiBar7)
local TopTexture = MultiBar7Button1:CreateTexture("$parentHornsRight", "ARTWORK", nil, 0)
HornsRight(MultiBar7Button1HornsRight, MultiBar7)