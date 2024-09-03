-- creating texture for the 8 bars --
for i = 1, 8, 1 do
	local texturecenter = abfAnimation:CreateTexture("textureBar"..i.."AnimationCenter","OVERLAY", nil, 7)
		_G["textureBar"..i.."AnimationCenter"]:SetAtlas("Adventure-MissionEnd-Line", false)
		_G["textureBar"..i.."AnimationCenter"]:SetSize(88, 25)
		_G["textureBar"..i.."AnimationCenter"]:Hide()
	local textureleft = abfAnimation:CreateTexture("textureBar"..i.."AnimationLeft", "BACKGROUND", nil, -8)
		_G["textureBar"..i.."AnimationLeft"]:SetDesaturated(true)
		_G["textureBar"..i.."AnimationLeft"]:SetBlendMode("ADD")
		_G["textureBar"..i.."AnimationLeft"]:Hide()
	local  textureright = abfAnimation:CreateTexture("textureBar"..i.."AnimationRight", "BACKGROUND", nil, -8)
		_G["textureBar"..i.."AnimationRight"]:SetDesaturated(true)
		_G["textureBar"..i.."AnimationRight"]:SetBlendMode("ADD")
		_G["textureBar"..i.."AnimationRight"]:Hide()
end
-- on player log in - on options choice --
-- choosing art edge --
function abfSavedAnimationEdgeArt(bar, vbar)
	if (ABFactionBars[vbar]["Edge"]["Art"] == "Gryphon" or ABFactionBars[vbar]["Edge"]["Art"] == "Wyvern") and ABFactionBars[vbar]["Edge"]["Animation"] == "Gryphon/Wyvern" then
-- choosing the atlas for bars left --
		_G["texture"..vbar.."AnimationLeft"]:SetAtlas("UI-HUD-ActionBar-"..ABFactionBars[vbar]["Edge"]["Art"].."-Left", true)
-- choosing the atlas for bars right --
		_G["texture"..vbar.."AnimationRight"]:SetAtlas("UI-HUD-ActionBar-"..ABFactionBars[vbar]["Edge"]["Art"].."-Right", true)
-- targetting the textures bars left --
		_G["abfAnimation"..vbar.."GryphonLeft"].Alpha:SetTarget(_G["texture"..vbar.."AnimationLeft"])
		_G["abfAnimation"..vbar.."GryphonLeft"].Move:SetTarget(_G["texture"..vbar.."AnimationLeft"])
		_G["abfAnimation"..vbar.."GryphonLeft"].Scale:SetTarget(_G["texture"..vbar.."AnimationLeft"])
-- targetting the textures bars right --
		_G["abfAnimation"..vbar.."GryphonRight"].Alpha:SetTarget(_G["texture"..vbar.."AnimationRight"])
		_G["abfAnimation"..vbar.."GryphonRight"].Move:SetTarget(_G["texture"..vbar.."AnimationRight"])
		_G["abfAnimation"..vbar.."GryphonRight"].Scale:SetTarget(_G["texture"..vbar.."AnimationRight"])
-- scripts for play and finish --
-- play --
		_G["abfAnimation"..vbar.."GryphonLeft"]:SetScript("OnPlay", function(self)
			_G["texture"..vbar.."AnimationLeft"]:ClearAllPoints()
			_G["texture"..vbar.."AnimationLeft"]:SetPoint("CENTER", _G[bar.."Button1"..ABFactionBars[vbar]["Edge"]["Art"].."Left"], "CENTER", -48, 0)
			_G["texture"..vbar.."AnimationLeft"]:Show()
		end)
-- finish --
		_G["abfAnimation"..vbar.."GryphonLeft"]:SetScript("OnFinished", function(self, requested)
			_G["texture"..vbar.."AnimationLeft"]:ClearAllPoints()
			_G["texture"..vbar.."AnimationLeft"]:SetPoint("TOPLEFT", _G[bar.."Button1"..ABFactionBars[vbar]["Edge"]["Art"].."Left"], "TOPLEFT", -6, 6)
			_G["texture"..vbar.."AnimationLeft"]:SetPoint("BOTTOMRIGHT", _G[bar.."Button1"..ABFactionBars[vbar]["Edge"]["Art"].."Left"], "BOTTOMRIGHT", -2, 0)
			local leftColor = CreateColor(abfGetLocalColor(ABFactionBars[vbar]["Edge"]["AnimationColor"]))
			local rightColor = CreateColor(abfGetLocalColor(ABFactionBars[vbar]["Edge"]["ArtColor"]))
			_G[bar.."Button1"..ABFactionBars[vbar]["Edge"]["Art"].."Left"]:SetGradient("HORIZONTAL", leftColor, rightColor)
		end)
-- play --
		_G["abfAnimation"..vbar.."GryphonRight"]:SetScript("OnPlay", function(self)
			_G["texture"..vbar.."AnimationRight"]:ClearAllPoints()
			_G["texture"..vbar.."AnimationRight"]:SetPoint("CENTER", _G[bar.."Button1"..ABFactionBars[vbar]["Edge"]["Art"].."Right"], "CENTER", 48, 0)
			_G["texture"..vbar.."AnimationRight"]:Show()
		end)
-- finish --
		_G["abfAnimation"..vbar.."GryphonRight"]:SetScript("OnFinished", function(self, requested)
			_G["texture"..vbar.."AnimationRight"]:ClearAllPoints()
			_G["texture"..vbar.."AnimationRight"]:SetPoint("TOPLEFT", _G[bar.."Button1"..ABFactionBars[vbar]["Edge"]["Art"].."Right"], "TOPLEFT", 6, 6)
			_G["texture"..vbar.."AnimationRight"]:SetPoint("BOTTOMRIGHT", _G[bar.."Button1"..ABFactionBars[vbar]["Edge"]["Art"].."Right"], "BOTTOMRIGHT", 2, 0)
			local leftColor = CreateColor(abfGetLocalColor(ABFactionBars[vbar]["Edge"]["ArtColor"]))
			local rightColor = CreateColor(abfGetLocalColor(ABFactionBars[vbar]["Edge"]["AnimationColor"]))
			_G[bar.."Button1"..ABFactionBars[vbar]["Edge"]["Art"].."Right"]:SetGradient("HORIZONTAL", leftColor, rightColor)
		end)
	end
end
-- choosing color edge --
function abfSavedAnimationEdgeColor(vbar)
	if ABFactionBars[vbar]["Edge"]["AnimationColorOptions"] == "Default Color" then
		_G["texture"..vbar.."AnimationLeft"]:SetDesaturated(false)
		_G["texture"..vbar.."AnimationRight"]:SetDesaturated(false)
	else
		_G["texture"..vbar.."AnimationLeft"]:SetDesaturated(true)
		_G["texture"..vbar.."AnimationRight"]:SetDesaturated(true)
	end
	_G["texture"..vbar.."AnimationLeft"]:SetVertexColor(abfGetLocalColor(ABFactionBars[vbar]["Edge"]["AnimationColor"]))
	_G["texture"..vbar.."AnimationRight"]:SetVertexColor(abfGetLocalColor(ABFactionBars[vbar]["Edge"]["AnimationColor"]))
end
-- choosing art Top --
function abfSavedAnimationTopArt(bar, vbar)
	if ABFactionBars[vbar]["Top"]["Animation"] == "MissionLine"  then
-- choosing the atlas and setting point for bars center --
		if vbar == "Bar1" then
			local metra = Round(MainMenuBar.BorderArt:GetWidth() - 88)
			abfAnimationBar1BackgroundPath1:SetOffset(metra, 0)
			abfAnimationBar1BackgroundPath2:SetOffset(-metra, 0)
			textureBar1AnimationCenter:ClearAllPoints()
			textureBar1AnimationCenter:SetPoint("LEFT", MainMenuBar.BorderArt, "TOPLEFT", 0, 0)
		else
			local metra = Round(_G[bar.."ABFbackground"]:GetWidth() - 88)
			_G["abfAnimation"..vbar.."BackgroundPath1"]:SetOffset(metra, 0)
			_G["abfAnimation"..vbar.."BackgroundPath2"]:SetOffset(-metra, 0)
			_G["texture"..vbar.."AnimationCenter"]:ClearAllPoints()
			_G["texture"..vbar.."AnimationCenter"]:SetPoint("LEFT", _G[bar.."ABFbackground"], "TOPLEFT", 0, -2)
		end
-- targetting the textures bars center --
		_G["abfAnimation"..vbar.."Background"].Move1:SetTarget(_G["texture"..vbar.."AnimationCenter"])
		_G["abfAnimation"..vbar.."Background"].Move2:SetTarget(_G["texture"..vbar.."AnimationCenter"])
-- scripts for play and finish --
-- play --
		_G["abfAnimation"..vbar.."Background"]:SetScript("OnPlay", function(self)
			_G["texture"..vbar.."AnimationCenter"]:Show()
		end)
-- Finished --
		_G["abfAnimation"..vbar.."Background"]:SetScript("OnStop", function(self)
			_G["texture"..vbar.."AnimationCenter"]:Hide()
		end)
	end
end
-- choosing color Top --
function abfSavedAnimationTopColor(vbar)
	if ABFactionBars[vbar]["Top"]["AnimationColorOptions"] == "Default Color" then
		_G["texture"..vbar.."AnimationCenter"]:SetDesaturated(false)
	else
		_G["texture"..vbar.."AnimationCenter"]:SetDesaturated(false)
	end
	_G["texture"..vbar.."AnimationCenter"]:SetVertexColor(abfGetLocalColor(ABFactionBars[vbar]["Top"]["AnimationColor"]))
end
