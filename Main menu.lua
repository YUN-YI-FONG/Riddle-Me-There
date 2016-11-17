--Main menu.lua
local widget= require("widget")
local composer = require( "composer" )
local scene = composer.newScene()
local image,image1,image2,image3,image4,image5,image6,image7,image8

--設定image按鈕事件
local function onSceneTouch1( self, event )
	if event.phase == "began" then
		composer.gotoScene( "Solve","fade", 400  )
	end
end

local function onSceneTouch2( self, event )
	
	if event.phase == "began" then
		composer.gotoScene( "Create", "fade", 400  )
	end
end

local function onSceneTouch3( self, event )
	if event.phase == "began" then
		composer.gotoScene( "area", "fade", 400  )
		
	end
end

local function onSceneTouch4( self, event )
	if event.phase == "began" then
		composer.gotoScene( "Friends","fade", 400  )
		
	end
end

local function onSceneTouch5( self, event )
	if event.phase == "began" then
		composer.gotoScene( "Profile","fade", 400  )
		
	end
end

local function onSceneTouch6( self, event )
	if event.phase == "began" then
		composer.gotoScene( "Scores", "fade", 400  )
		
	end
end

local function onSceneTouch7( self, event )
	if event.phase == "began" then
		composer.gotoScene( "Extra", "fade", 400  )
		
	end
end



function scene:create( event )
	local sceneGroup = self.view
	local alert

	
	image = display.newImage( "muim/Background-3.png" )
	image.x = display.contentCenterX
	image.y = display.contentCenterY
	
	image1 = display.newImage( "muim/Solve button.png" )
	image1.x = display.contentWidth/1.8
	image1.y = display.contentHeight/9

	image2 = display.newImage( "muim/Create button.png" )
	image2.x = display.contentWidth/2.5
	image2.y = display.contentHeight/3.5

	image3 = display.newImage( "muim/Area button.png" )
	image3.x = display.contentWidth/1.65
	image3.y = display.contentHeight/2.7

	image4 = display.newImage( "muim/Friends button.png" )
	image4.x = display.contentWidth/2.5
	image4.y = display.contentHeight/1.85

	image5 = display.newImage( "muim/Profile button.png" )
	image5.x = display.contentWidth/1.65
	image5.y = display.contentHeight/1.6

	image6 = display.newImage( "muim/Score button.png" )
	image6.x = display.contentWidth/2.5
	image6.y = display.contentHeight/1.25

	image7 = display.newImage( "muim/Extra button.png" )
	image7.x = display.contentWidth/1.6
	image7.y = display.contentHeight/1.15

	
	
	sceneGroup:insert( image )	sceneGroup:insert( image4 )
	sceneGroup:insert( image1 ) sceneGroup:insert( image5 )
	sceneGroup:insert( image2 )	sceneGroup:insert( image6 )
	sceneGroup:insert( image3 )	sceneGroup:insert( image7 )


	image1.touch = onSceneTouch1
	image2.touch = onSceneTouch2 
	image3.touch = onSceneTouch3 
	image4.touch = onSceneTouch4 
	image5.touch = onSceneTouch5 
	image6.touch = onSceneTouch6  
	image7.touch = onSceneTouch7 

end

function scene:show( event )
	local phase = event.phase
		composer.removeScene("Solve")
		composer.removeScene("Login")
		composer.removeScene("Correct")
		composer.removeScene( "wrong" )
		composer.removeScene( "Create" )
		composer.removeScene( "local" )
		composer.removeScene( "Profile" )
		composer.removeScene( "map" )
		composer.removeScene( "personal" )
		composer.removeScene( "Score" )
		composer.removeScene( "Global" )
		composer.removeScene( "countryscore" )
		

		if "did" == phase then
		print( "1: show event, phase did" )
		
	local showMem = function()
		--image按鈕事件加入監聽器 否則無法使用按鈕
		image1:addEventListener( "touch", image1 )
		image2:addEventListener( "touch", image2 )
		image3:addEventListener( "touch", image3 )
		image4:addEventListener( "touch", image4 )
		image5:addEventListener( "touch", image5 )
		image6:addEventListener( "touch", image6 )
		image7:addEventListener( "touch", image7 )
		
		end
		memTimer = timer.performWithDelay( 500, showMem, 1 )
	end	
end

function scene:hide( event )
	local phase = event.phase



	if "will" == phase then
		print( "1: hide event, phase will" )
		--過頁後移除image監聽器
		image1:removeEventListener( "touch", image1 )
		image2:removeEventListener( "touch", image2 )
		image3:removeEventListener( "touch", image3 )
		image4:removeEventListener( "touch", image4 )
		image5:removeEventListener( "touch", image5 )
		image6:removeEventListener( "touch", image6 )
		image7:removeEventListener( "touch", image7 )
		

	end
end



function scene:destroy( event )
		
	print( "((destroying scene 1's view))" )
end

scene:addEventListener( "create", scene )
scene:addEventListener( "show", scene )
scene:addEventListener( "hide", scene )
scene:addEventListener( "destroy", scene )

return scene


