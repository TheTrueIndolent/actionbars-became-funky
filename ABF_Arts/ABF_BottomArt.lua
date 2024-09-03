-- Creating Bottom Line --
-- Bottom Line 1 --
local function BottomLine1(self, point)
	self:SetAtlas("UI-Achievement-Border-7", true, "LINEAR")
	self:SetDesaturated(true)
	self:SetBlendMode("ADD")
	self:SetAlpha(0.75)
	self:ClearAllPoints()
	self:SetPoint("TOPLEFT", point, "BOTTOMLEFT", 0, 4)
	self:SetPoint("TOPRIGHT", point, "BOTTOMRIGHT", 0, 4)
	self:Hide()
end
--Action Bar 1 --
local Line = ActionButton1:CreateTexture("$parentBottomLine1", "OVERLAY", nil, 0)
BottomLine1(ActionButton1BottomLine1, MainMenuBar)
--Action Bar 2 --
local Line = MultiBarBottomLeftButton1:CreateTexture("$parentBottomLine1", "OVERLAY", nil, 0)
BottomLine1(MultiBarBottomLeftButton1BottomLine1, MultiBarBottomLeft)
--Action Bar 3 --
local Line = MultiBarBottomRightButton1:CreateTexture("$parentBottomLine1", "OVERLAY", nil, 0)
BottomLine1(MultiBarBottomRightButton1BottomLine1, MultiBarBottomRight)
--Action Bar 4 --
local Line = MultiBarRightButton1:CreateTexture("$parentBottomLine1", "OVERLAY", nil, 0)
BottomLine1(MultiBarRightButton1BottomLine1, MultiBarRight)
--Action Bar 5 --
local Line = MultiBarLeftButton1:CreateTexture("$parentBottomLine1", "OVERLAY", nil, 0)
BottomLine1(MultiBarLeftButton1BottomLine1, MultiBarLeft)
--Action Bar 6 --
local Line = MultiBar5Button1:CreateTexture("$parentBottomLine1", "OVERLAY", nil, 0)
BottomLine1(MultiBar5Button1BottomLine1, MultiBar5)
--Action Bar 7 --
local Line = MultiBar6Button1:CreateTexture("$parentBottomLine1", "OVERLAY", nil, 0)
BottomLine1(MultiBar6Button1BottomLine1, MultiBar6)
--Action Bar 8 --
local Line = MultiBar7Button1:CreateTexture("$parentBottomLine1", "OVERLAY", nil, 0)
BottomLine1(MultiBar7Button1BottomLine1, MultiBar7)
-- SoftCloud --
local function SoftCloud(self, point)
	self:SetAtlas("AftLevelup-SoftCloud", true, "LINEAR")
	self:SetDesaturated(true)
	self:SetBlendMode("ADD")
	self:SetAlpha(0.75)
	self:ClearAllPoints()
	self:SetPoint("TOPLEFT", point, "BOTTOMLEFT", 0, 12)
	self:SetPoint("TOPRIGHT", point, "BOTTOMRIGHT", 0, 12)
	self:SetHeight(self:GetHeight()/3)
	self:Hide()
end
--Action Bar 1 --
local Line = ActionButton1:CreateTexture("$parentSoftCloud", "OVERLAY", nil, 7)
SoftCloud(ActionButton1SoftCloud, MainMenuBar)
--Action Bar 2 --
local Line = MultiBarBottomLeftButton1:CreateTexture("$parentSoftCloud", "OVERLAY", nil, 7)
SoftCloud(MultiBarBottomLeftButton1SoftCloud, MultiBarBottomLeft)
--Action Bar 3 --
local Line = MultiBarBottomRightButton1:CreateTexture("$parentSoftCloud", "OVERLAY", nil, 7)
SoftCloud(MultiBarBottomRightButton1SoftCloud, MultiBarBottomRight)
--Action Bar 4 --
local Line = MultiBarRightButton1:CreateTexture("$parentSoftCloud", "OVERLAY", nil, 7)
SoftCloud(MultiBarRightButton1SoftCloud, MultiBarRight)
--Action Bar 5 --
local Line = MultiBarLeftButton1:CreateTexture("$parentSoftCloud", "OVERLAY", nil, 7)
SoftCloud(MultiBarLeftButton1SoftCloud, MultiBarLeft)
--Action Bar 6 --
local Line = MultiBar5Button1:CreateTexture("$parentSoftCloud", "OVERLAY", nil, 7)
SoftCloud(MultiBar5Button1SoftCloud, MultiBar5)
--Action Bar 7 --
local Line = MultiBar6Button1:CreateTexture("$parentSoftCloud", "OVERLAY", nil, 7)
SoftCloud(MultiBar6Button1SoftCloud, MultiBar6)
--Action Bar 8 --
local Line = MultiBar7Button1:CreateTexture("$parentSoftCloud", "OVERLAY", nil, 7)
SoftCloud(MultiBar7Button1SoftCloud, MultiBar7)
