--Country.lua
local widget= require("widget")
local composer = require( "composer" )
local scene = composer.newScene()
local image

local returnPress = function ( self,event ) 
		
        composer.gotoScene( "Register", "fade", 400 )
end


function scene:create( event )
	local sceneGroup = self.view
	local namevalue = {}
	local value
image = display.newImage( "muim/Background-1.png" )
image.x = display.contentCenterX
image.y = display.contentCenterY

sceneGroup:insert( image )
--------------------------------------------------------------------------------
	local returnPress = widget.newButton
 { 
	
	defaultFile = "muim/return.png",
	overFile = "muim/return.png",
	emboss = true,
	onPress = returnPress,
	--onRelease = button1Release,
 }
     sceneGroup:insert(returnPress)
    returnPress.x =display.contentWidth/4.5
	returnPress.y =display.contentHeight/1.1

	end


	---------------------------------------------------------------------------------------------------
function scene:show( event )
	local phase = event.phase
	composer.removeScene( "Register" )
	
	if "did" == phase then
		print( "1: show event, phase did" )
		local showMem = function()
			
		end
		memTimer = timer.performWithDelay( 500, showMem, 1 )
	end	
end

function scene:hide( event )
	local phase = event.phase
	if "will" == phase then
		print( "1: hide event, phase will" )

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


