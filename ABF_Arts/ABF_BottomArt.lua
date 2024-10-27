-- create top texture --
local function CreateBottomTextures(bar)
	bar.actionButtons[1].BottomArt = bar.actionButtons[1]:CreateTexture(nil, "OVERLAY", nil, 7)
end
CreateBottomTextures(MainMenuBar)
CreateBottomTextures(MultiBarBottomLeft)
CreateBottomTextures(MultiBarBottomRight)
CreateBottomTextures(MultiBarRight)
CreateBottomTextures(MultiBarLeft)
CreateBottomTextures(MultiBar5)
CreateBottomTextures(MultiBar6)
CreateBottomTextures(MultiBar7)
