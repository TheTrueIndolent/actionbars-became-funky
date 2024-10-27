local function SavedAnimations()
-- functions for loading the saved variables --
-- edge animation --
		function abfSavedEdgeArtAnimation(text, bar)
			local colorAnimation = CreateColor(abfGetLocalColor(ABFactionBars[text]["Edge"]["AnimationColor"]))
			local colorArt = CreateColor(abfGetLocalColor(ABFactionBars[text]["Edge"]["ArtColor"]))
			local verticalGrandient = CreateColor(abfGetLocalColor(ABFactionBars[text]["Edge"]["ArtGradientColor1"]))
			local horizontalGrandient = CreateColor(abfGetLocalColor(ABFactionBars[text]["Edge"]["ArtGradientColor2"]))
			if ABFactionBars[text]["Edge"]["Art"] == "Gryphon" then
				bar.actionButtons[1].EdgeLeftArtAnimation:SetAtlas("UI-HUD-ActionBar-Gryphon-Left", true, "LINEAR")
				bar.actionButtons[1].EdgeRightArtAnimation:SetAtlas("UI-HUD-ActionBar-Gryphon-Right", true, "LINEAR")
			elseif ABFactionBars[text]["Edge"]["Art"] == "Wyvern" then
				bar.actionButtons[1].EdgeLeftArtAnimation:SetAtlas("UI-HUD-ActionBar-Wyvern-Left", true, "LINEAR")
				bar.actionButtons[1].EdgeRightArtAnimation:SetAtlas("UI-HUD-ActionBar-Wyvern-Right", true, "LINEAR")
			end
			if ABFactionBars[text]["Edge"]["Animation"] and (ABFactionBars[text]["Edge"]["Art"] == "Gryphon" or ABFactionBars[text]["Edge"]["Art"] == "Wyvern") then
				bar.actionButtons[1].Gryphon_WyvernAnimationLeft.Alpha:SetTarget(bar.actionButtons[1].EdgeLeftArtAnimation)
				bar.actionButtons[1].Gryphon_WyvernAnimationLeft.Move:SetTarget(bar.actionButtons[1].EdgeLeftArtAnimation)
				bar.actionButtons[1].Gryphon_WyvernAnimationLeft.Scale:SetTarget(bar.actionButtons[1].EdgeLeftArtAnimation)
				if ABFactionBars[text]["Edge"]["ArtColorChoice"] == "One Color" then
					bar.actionButtons[1].Gryphon_WyvernAnimationLeft.Move.Point:SetOffset(48, 0)
					bar.actionButtons[1].Gryphon_WyvernAnimationLeft:SetScript("OnPlay", function(self)	
						bar.actionButtons[1].EdgeLeftArtAnimation:ClearAllPoints()
						bar.actionButtons[1].EdgeLeftArtAnimation:SetPoint("CENTER", bar.actionButtons[1].EdgeLeftArt, "CENTER", -48, 0)
						bar.actionButtons[1].EdgeLeftArtAnimation:Show()
					end)
					bar.actionButtons[1].Gryphon_WyvernAnimationLeft:SetScript("OnFinished", function(self, requested)
						bar.actionButtons[1].EdgeLeftArtAnimation:ClearAllPoints()
						bar.actionButtons[1].EdgeLeftArtAnimation:SetPoint("TOPLEFT", bar.actionButtons[1].EdgeLeftArt, "TOPLEFT", -6, 6)
						bar.actionButtons[1].EdgeLeftArtAnimation:SetPoint("BOTTOMRIGHT", bar.actionButtons[1].EdgeLeftArt, "BOTTOMRIGHT", -2, 0)
						bar.actionButtons[1].EdgeLeftArt:SetGradient("HORIZONTAL", colorAnimation, colorArt)
					end)
				elseif ABFactionBars[text]["Edge"]["ArtColorChoice"] == "Gradient Color" and ABFactionBars[text]["Edge"]["ArtGradientOrientation"] == "HORIZONTAL" then
					bar.actionButtons[1].Gryphon_WyvernAnimationLeft.Move.Point:SetOffset(48, 0)
					bar.actionButtons[1].Gryphon_WyvernAnimationLeft:SetScript("OnPlay", function(self)	
						bar.actionButtons[1].EdgeLeftArtAnimation:ClearAllPoints()
						bar.actionButtons[1].EdgeLeftArtAnimation:SetPoint("CENTER", bar.actionButtons[1].EdgeLeftArt, "CENTER", -48, 0)
						bar.actionButtons[1].EdgeLeftArtAnimation:Show()
					end)
					bar.actionButtons[1].Gryphon_WyvernAnimationLeft:SetScript("OnFinished", function(self, requested)
						bar.actionButtons[1].EdgeLeftArtAnimation:ClearAllPoints()
						bar.actionButtons[1].EdgeLeftArtAnimation:SetPoint("TOPLEFT", bar.actionButtons[1].EdgeLeftArt, "TOPLEFT", -6, 6)
						bar.actionButtons[1].EdgeLeftArtAnimation:SetPoint("BOTTOMRIGHT", bar.actionButtons[1].EdgeLeftArt, "BOTTOMRIGHT", -2, 0)
						bar.actionButtons[1].EdgeLeftArt:SetGradient("HORIZONTAL", colorAnimation, horizontalGrandient)
					end)
				elseif ABFactionBars[text]["Edge"]["ArtColorChoice"] == "Gradient Color" and ABFactionBars[text]["Edge"]["ArtGradientOrientation"] == "VERTICAL" then
					bar.actionButtons[1].Gryphon_WyvernAnimationLeft.Move.Point:SetOffset(0, -48)
					bar.actionButtons[1].Gryphon_WyvernAnimationLeft:SetScript("OnPlay", function(self)	
						bar.actionButtons[1].EdgeLeftArtAnimation:ClearAllPoints()
						bar.actionButtons[1].EdgeLeftArtAnimation:SetPoint("CENTER", bar.actionButtons[1].EdgeLeftArt, "CENTER", 0, 48)
						bar.actionButtons[1].EdgeLeftArtAnimation:Show()
					end)
					bar.actionButtons[1].Gryphon_WyvernAnimationLeft:SetScript("OnFinished", function(self, requested)
						bar.actionButtons[1].EdgeLeftArtAnimation:ClearAllPoints()
						bar.actionButtons[1].EdgeLeftArtAnimation:SetPoint("TOPLEFT", bar.actionButtons[1].EdgeLeftArt, "TOPLEFT", -6, 6)
						bar.actionButtons[1].EdgeLeftArtAnimation:SetPoint("BOTTOMRIGHT", bar.actionButtons[1].EdgeLeftArt, "BOTTOMRIGHT", -2, 0)
						bar.actionButtons[1].EdgeLeftArt:SetGradient("VERTICAL", verticalGrandient, colorAnimation)
					end)
				end
				
				bar.actionButtons[1].Gryphon_WyvernAnimationRight.Alpha:SetTarget(bar.actionButtons[1].EdgeRightArtAnimation)
				bar.actionButtons[1].Gryphon_WyvernAnimationRight.Move:SetTarget(bar.actionButtons[1].EdgeRightArtAnimation)
				bar.actionButtons[1].Gryphon_WyvernAnimationRight.Scale:SetTarget(bar.actionButtons[1].EdgeRightArtAnimation)
				if ABFactionBars[text]["Edge"]["ArtColorChoice"] == "One Color" then
					bar.actionButtons[1].Gryphon_WyvernAnimationRight.Move.Point:SetOffset(-48, 0)
					bar.actionButtons[1].Gryphon_WyvernAnimationRight:SetScript("OnPlay", function(self)	
						bar.actionButtons[1].EdgeRightArtAnimation:ClearAllPoints()
						bar.actionButtons[1].EdgeRightArtAnimation:SetPoint("CENTER", bar.actionButtons[1].EdgeRightArt, "CENTER", 48, 0)
						bar.actionButtons[1].EdgeRightArtAnimation:Show()
					end)
					bar.actionButtons[1].Gryphon_WyvernAnimationRight:SetScript("OnFinished", function(self, requested)
						bar.actionButtons[1].EdgeRightArtAnimation:ClearAllPoints()
						bar.actionButtons[1].EdgeRightArtAnimation:SetPoint("TOPLEFT", bar.actionButtons[1].EdgeRightArt, "TOPLEFT", 6, 6)
						bar.actionButtons[1].EdgeRightArtAnimation:SetPoint("BOTTOMRIGHT", bar.actionButtons[1].EdgeRightArt, "BOTTOMRIGHT", 2, 0)
						bar.actionButtons[1].EdgeRightArt:SetGradient("HORIZONTAL", colorArt, colorAnimation)
					end)
				elseif ABFactionBars[text]["Edge"]["ArtColorChoice"] == "Gradient Color" and ABFactionBars[text]["Edge"]["ArtGradientOrientation"] == "HORIZONTAL" then
					bar.actionButtons[1].Gryphon_WyvernAnimationRight.Move.Point:SetOffset(-48, 0)
					bar.actionButtons[1].Gryphon_WyvernAnimationRight:SetScript("OnPlay", function(self)	
						bar.actionButtons[1].EdgeRightArtAnimation:ClearAllPoints()
						bar.actionButtons[1].EdgeRightArtAnimation:SetPoint("CENTER", bar.actionButtons[1].EdgeRightArt, "CENTER", 48, 0)
						bar.actionButtons[1].EdgeRightArtAnimation:Show()
					end)
					bar.actionButtons[1].Gryphon_WyvernAnimationRight:SetScript("OnFinished", function(self, requested)
						bar.actionButtons[1].EdgeRightArtAnimation:ClearAllPoints()
						bar.actionButtons[1].EdgeRightArtAnimation:SetPoint("TOPLEFT", bar.actionButtons[1].EdgeRightArt, "TOPLEFT", 6, 6)
						bar.actionButtons[1].EdgeRightArtAnimation:SetPoint("BOTTOMRIGHT", bar.actionButtons[1].EdgeRightArt, "BOTTOMRIGHT", 2, 0)
						bar.actionButtons[1].EdgeRightArt:SetGradient("HORIZONTAL", horizontalGrandient, colorAnimation)
					end)
				elseif ABFactionBars[text]["Edge"]["ArtColorChoice"] == "Gradient Color" and ABFactionBars[text]["Edge"]["ArtGradientOrientation"] == "VERTICAL" then
					bar.actionButtons[1].Gryphon_WyvernAnimationRight.Move.Point:SetOffset(0, -48)
					bar.actionButtons[1].Gryphon_WyvernAnimationRight:SetScript("OnPlay", function(self)	
						bar.actionButtons[1].EdgeRightArtAnimation:ClearAllPoints()
						bar.actionButtons[1].EdgeRightArtAnimation:SetPoint("CENTER", bar.actionButtons[1].EdgeRightArt, "CENTER", 0, 48)
						bar.actionButtons[1].EdgeRightArtAnimation:Show()
					end)
					bar.actionButtons[1].Gryphon_WyvernAnimationRight:SetScript("OnFinished", function(self, requested)
						bar.actionButtons[1].EdgeRightArtAnimation:ClearAllPoints()
						bar.actionButtons[1].EdgeRightArtAnimation:SetPoint("TOPLEFT", bar.actionButtons[1].EdgeRightArt, "TOPLEFT", 6, 6)
						bar.actionButtons[1].EdgeRightArtAnimation:SetPoint("BOTTOMRIGHT", bar.actionButtons[1].EdgeRightArt, "BOTTOMRIGHT", 2, 0)
						bar.actionButtons[1].EdgeRightArt:SetGradient("VERTICAL", verticalGrandient, colorAnimation)
					end)
				end
			end
		end
-- Top animation --
		function abfSavedTopArtAnimation(text, bar)
			if ABFactionBars[text]["Top"]["Animation"] and ABFactionBars[text]["Top"]["Art"] == "JailersTower" then
				local colorAnimation = CreateColor(abfGetLocalColor(ABFactionBars[text]["Top"]["AnimationColor"]))
				bar.actionButtons[1].TopArtAnimation:SetVertexColor(colorAnimation:GetRGBA())
				bar.actionButtons[1].JailersEyeLeft:SetVertexColor(colorAnimation:GetRGBA())
				bar.actionButtons[1].JailersEyeRight:SetVertexColor(colorAnimation:GetRGBA())
				bar.actionButtons[1].TopArtAnimation:SetAtlas("Artifacts-Anim-Glowies", false, "LINEAR")
				bar.actionButtons[1].TopArtAnimation:SetAlpha(0)
				bar.actionButtons[1].JailersTowerAnimation.MoveGlowies1:SetTarget(bar.actionButtons[1].TopArtAnimation)
				bar.actionButtons[1].JailersTowerAnimation.Glowies1:SetTarget(bar.actionButtons[1].TopArtAnimation)
				bar.actionButtons[1].JailersTowerAnimation.Glowies2:SetTarget(bar.actionButtons[1].TopArtAnimation)
				bar.actionButtons[1].JailersTowerAnimation.Glowies3:SetTarget(bar.actionButtons[1].TopArtAnimation)
				bar.actionButtons[1].JailersTowerAnimation.Glowies4:SetTarget(bar.actionButtons[1].TopArtAnimation)
				bar.actionButtons[1].JailersTowerAnimation.Scale1:SetTarget(bar.actionButtons[1].TopArtAnimation)
				bar.actionButtons[1].JailersTowerAnimation.Scale2:SetTarget(bar.actionButtons[1].TopArtAnimation)
			end
		end
-- Bottom animation --
		function abfSavedBottomArtAnimation(text, bar)
			if ABFactionBars[text]["Bottom"]["Animation"] and ABFactionBars[text]["Bottom"]["Art"] == "SoftCloud" then
				local colorAnimation = CreateColor(abfGetLocalColor(ABFactionBars[text]["Bottom"]["AnimationColor"]))
				bar.actionButtons[1].SoftCloudAnimation.Glowies1:SetTarget(bar.actionButtons[1].BottomArt)
				bar.actionButtons[1].SoftCloudAnimation.Glowies2:SetTarget(bar.actionButtons[1].BottomArt)
				bar.actionButtons[1].SoftCloudAnimation.Glowies3:SetTarget(bar.actionButtons[1].BottomArt)
				bar.actionButtons[1].SoftCloudAnimation.Glowies4:SetTarget(bar.actionButtons[1].BottomArt)
			end
		end
end
local function Animations(text, bar)
	abfSavedEdgeArtAnimation(text, bar)
	abfSavedTopArtAnimation(text, bar)
	abfSavedBottomArtAnimation(text, bar)
end
-- Events time --
local function EventsTime(self, event, arg1, arg2, arg3)
	if event == "PLAYER_LOGIN" then
		SavedAnimations()
-- loading... --
		Animations("Bar1", MainMenuBar)
		Animations("Bar2", MultiBarBottomLeft)
		Animations("Bar3", MultiBarBottomRight)
		Animations("Bar4", MultiBarRight)
		Animations("Bar5", MultiBarLeft)
		Animations("Bar6", MultiBar5)
		Animations("Bar7", MultiBar6)
		Animations("Bar8", MultiBar7)
	end
end
abfZlave:HookScript("OnEvent", EventsTime)
