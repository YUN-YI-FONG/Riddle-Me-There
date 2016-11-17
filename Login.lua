 --Login.lua
local widget= require("widget")
local composer = require( "composer" )
local scene = composer.newScene()
local image
----------------------------------------------------------------
local returnPress = function ( self,event ) 
           composer.gotoScene( "Front cover", "fade", 400 )
end

local function onSceneTouch1( self, event )
	if event.phase == "began" then
		composer.gotoScene( "Main menu", "slideLeft", 950  )
		return true
	end
end           				            
----------------------------------------------------------------

function scene:create( event )
	local sceneGroup = self.view

	display.setStatusBar( display.HiddenStatusBar )
	image = display.newImage( "muim/background.png" )
	image.x = display.contentCenterX
	image.y = display.contentCenterY
	
	image1 = display.newImage( "muim/automatic login.png" )
	image1.x = display.contentWidth/2.8
	image1.y = display.contentHeight/1.8

	image2 = display.newImage( "muim/email.png" )
	image2.x = display.contentWidth/4
	image2.y = display.contentHeight/3

	image3 = display.newImage( "muim/password.png" )
	image3.x = display.contentWidth/4
	image3.y = display.contentHeight/2.3

	image4 = display.newImage( "muim/yes.png" )
	image4.x = display.contentWidth/2.4
	image4.y = display.contentHeight/1.45

	image5 = display.newImage( "muim/no.png" )
	image5.x = display.contentWidth/1.7
	image5.y = display.contentHeight/1.45


	image6 = display.newImage( "muim/native.png" )
	image6.x = display.contentWidth/2.2
	image6.y = display.contentHeight/3

	image7 = display.newImage( "muim/native.png" )
	image7.x = display.contentWidth/2.2
	image7.y = display.contentHeight/2.3

	image8 = display.newImage( "muim/Login buttom1.png" )
	image8.x = display.contentWidth/1.4
	image8.y = display.contentHeight/1.125

	sceneGroup:insert( image )	sceneGroup:insert( image5 )
	sceneGroup:insert( image1 ) sceneGroup:insert( image6 )
	sceneGroup:insert( image2 )	sceneGroup:insert( image7 )
	sceneGroup:insert( image3 )	sceneGroup:insert( image8 )
	sceneGroup:insert( image4 )
-- 設定image8 為確認登入按鈕
	image8.touch = onSceneTouch1
------------------------------------------------------------
--插入 email、password 輸入框
 	 email = native.newTextField( display.contentWidth/2.2, 105, 110, 15 )
	  
	 email:setTextColor(  1, 1, 1  )
	 email.hasBackground = false
	-- email:addEventListener( "userInput", fieldHandler( function() return email end ) )
	 password = native.newTextField( display.contentWidth/2.2, 140, 110, 15 )
 	
 	 password:setTextColor(  1, 1, 1  )
	 password.hasBackground = false
	 password.isSecure = true
	-- password:addEventListener( "userInput",  fieldHandler( function() return password end ) )



    sceneGroup:insert(email)
    sceneGroup:insert(password)

-------------------------------------------------------------------
--插入選擇是否記住帳密自動登入選項按鈕
local function onSwitchPress( event )
    local switch = event.target

    print( "Switch with ID '"..switch.id.."' is on: "..tostring(switch.isOn) )
    auto = switch.id
end
-- Create two associated radio buttons (inserted into the same display group)
local radioButton1 = widget.newSwitch(
    {
        left = 150,
        top = 200,
        style = "radio",
        id = "Yes",
        initialSwitchState = true,
        onPress = onSwitchPress
    }
)
sceneGroup:insert( radioButton1 )

local radioButton2 = widget.newSwitch(
    {
        left = 230,
        top = 200,
        style = "radio",
        id = "No",
        onPress = onSwitchPress
    }
)
sceneGroup:insert( radioButton2 )
-----------------------------------------------------------------------------------	
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
--------------------------------------------------------------------------------------
function scene:show( event )
	local phase = event.phase
	composer.removeScene( "Front cover" )
	if "did" == phase then
		print( "1: show event, phase did" )
		local showMem = function()
	--image8按鈕事件加入監聽器 否則無法使用按鈕
		image8:addEventListener( "touch", image8 )
		end
		memTimer = timer.performWithDelay( 500, showMem, 1 )
	end	
end

function scene:hide( event )
	local phase = event.phase
	if "will" == phase then
	

	
		print( "1: hide event, phase will" )
--過頁後移除image8監聽器
	image8:removeEventListener( "touch", image8 )

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


