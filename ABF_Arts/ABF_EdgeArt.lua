-- create edges textures --
local function CreateEdgesTextures(bar)
	bar.actionButtons[1].EdgeLeftArt = bar.actionButtons[1]:CreateTexture(nil, "OVERLAY", nil, 7)
	bar.actionButtons[1].EdgeRightArt = bar.actionButtons[1]:CreateTexture(nil, "OVERLAY", nil, 7)
end
CreateEdgesTextures(MainMenuBar)
CreateEdgesTextures(MultiBarBottomLeft)
CreateEdgesTextures(MultiBarBottomRight)
CreateEdgesTextures(MultiBarRight)
CreateEdgesTextures(MultiBarLeft)
CreateEdgesTextures(MultiBar5)
CreateEdgesTextures(MultiBar6)
CreateEdgesTextures(MultiBar7)
