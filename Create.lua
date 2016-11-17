-- Create.lua
local widget= require("widget")
local composer = require( "composer" )
local scene = composer.newScene()
local img

local returnPress = function ( self,event ) 
		if (photoGroup) then
			photoGroup:removeSelf()
		end
           composer.gotoScene( "Main menu", "fade", 400 )
end
--設定image3按鈕事件 camera
local function onSceneTouch1( self, event )
		
		if event.phase == "began" then
			

			local function onComplete( event )
				photo = event.target
			    photoGroup = display.newGroup()  
			    photoGroup:insert(photo)

			    --設定camera照片顯示大小
			 	photo.x = 300	
				photo.y = 210
   				photo.width=100
				photo.height=100
			    local tmpDirectory = system.DocumentsDirectory
			    display.save(photoGroup, "image.jpg", tmpDirectory) 
			end

			if media.hasSource( media.Camera ) then
			   media.capturePhoto( { listener=onComplete} )

			else
				 --設定camera照片確認使用
			    native.showAlert( "Corona", "This device does not have a camera.", { "OK" } )
			end

		end
end		        




function scene:create( event )
	local sceneGroup = self.view

	image = display.newImage( "muim/Background-5.png" )
	image.x = display.contentCenterX
	image.y = display.contentCenterY	
	
	image1 = display.newImage( "muim/title button.png" )
	image1.x = display.contentWidth/5.5
	image1.y = display.contentHeight/4.5

	image2 = display.newImage( "muim/riddle button.png" )
	image2.x = display.contentWidth/5
	image2.y = display.contentHeight/3

	image3 = display.newImage( "muim/camera.png" )
	image3.x = display.contentWidth/1.6
	image3.y = display.contentHeight/1.5


	image4 = display.newImage( "muim/awnser button.png" )
	image4.x = display.contentWidth/4.6
	image4.y = display.contentHeight/2.2

	image5 = display.newImage( "muim/submit button.png" )
	image5.x = display.contentWidth/4.5
	image5.y = display.contentHeight/1.2


	sceneGroup:insert( image )
	sceneGroup:insert( image1 )
	sceneGroup:insert( image2 )
	sceneGroup:insert( image3 )
	sceneGroup:insert( image4 )
	sceneGroup:insert( image5 )


--設定title、riddle輸入框

title = native.newTextField( display.contentWidth/1.87, 54, 180, 15 )
	  
	  title:setTextColor( 1,1,1  )
	  title.hasBackground = false

riddle = native.newTextBox( 257, 90, 180, 45 )
	  riddle:setTextColor( 1,1,1  )
	  riddle.hasBackground = false
	  riddle.isEditable = true


sceneGroup:insert(title)
sceneGroup:insert(riddle)
image3.touch = onSceneTouch1
---------------------------------------------------------------  


		local returnPress = widget.newButton
 { 
	
	defaultFile = "muim/returnPress.png",
	overFile = "muim/returnPress.png",
	emboss = true,
	onPress = returnPress,
	--onRelease = button1Release,
 }
     sceneGroup:insert(returnPress)
    returnPress.x =display.contentWidth/1.05
	returnPress.y =display.contentHeight/1.15


end

function scene:show( event )
	local phase = event.phase

		if "did" == phase then

		print( "1: show event, phase did" )
	local showMem = function()
	
		image3:addEventListener( "touch", image3 )
		end

		memTimer = timer.performWithDelay( 500, showMem, 1 )
	end	
end

function scene:hide( event )
	local phase = event.phase
	if "will" == phase then
		print( "1: hide event, phase will" )
		image3:addEventListener( "touch", image3 )
	
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


