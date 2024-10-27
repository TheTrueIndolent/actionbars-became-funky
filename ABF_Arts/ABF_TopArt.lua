-- create top texture --
local function CreateTopTextures(bar)
	bar.actionButtons[1].TopArt = bar.actionButtons[1]:CreateTexture(nil, "OVERLAY", nil, 6)
	bar.actionButtons[1].TopLeftArt = bar.actionButtons[1]:CreateTexture(nil, "OVERLAY", nil, 6)
	bar.actionButtons[1].TopRightArt = bar.actionButtons[1]:CreateTexture(nil, "OVERLAY", nil, 6)
end
CreateTopTextures(MainMenuBar)
CreateTopTextures(MultiBarBottomLeft)
CreateTopTextures(MultiBarBottomRight)
CreateTopTextures(MultiBarRight)
CreateTopTextures(MultiBarLeft)
CreateTopTextures(MultiBar5)
CreateTopTextures(MultiBar6)
CreateTopTextures(MultiBar7)
