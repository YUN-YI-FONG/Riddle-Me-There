--Register.lua
local widget= require("widget")
local composer = require( "composer" )
local scene = composer.newScene()
local image
--預設性別為 male 
local Gender = "male"
----------------------------------------------------------------------------------------------------
local returnPress = function ( self,event ) 
           composer.gotoScene( "Front cover", "fade", 400 )
end

--設定image17按鈕事件
local function onSceneTouch( self, event )
	if event.phase == "began" then
		composer.gotoScene( "Country", "slideLeft", 950  )
		return true
	end
end

--設定image1按鈕事件
local function onSceneTouch1( self, event )
		if event.phase == "began" then
			composer.gotoScene( "Login", "slideLeft", 800  )
		end
	end
---------------------------------------------------------------------------------------------------
function scene:create( event )
	local sceneGroup = self.view
	local idtable 
	local decodedData ={}
	display.setStatusBar( display.HiddenStatusBar )

--資料輸入框
	
local email = native.newTextField( display.contentWidth/2.5, 80, 110, 16 )
	  
	  email:setTextColor(  1, 1, 1  )
	  email.hasBackground = false
--    email:addEventListener( "userInput", fieldHandler( function() return email end ) )
	  

local password = native.newTextField( display.contentWidth/2.4, 127, 110, 16 )
	
	 password:setTextColor(  1, 1,1 )
	 password.hasBackground = false
	 password.isSecure = true
--	 password:addEventListener( "userInput", fieldHandler( function() return password end ) )

local username = native.newTextField( display.contentWidth/2.4, 105, 110, 16 )
	  
	  username:setTextColor( 1,1 , 1 )
	  username.hasBackground = false
--	  username:addEventListener( "userInput", fieldHandler( function() return username end ) )

local age = native.newTextField( display.contentWidth/2.5, 150 , 110, 16 )
	  
	  age:setTextColor(  1, 1, 1  )
	  age.hasBackground = false
--	  age:addEventListener( "userInput", fieldHandler( function() return age end ) )

local Firstname = native.newTextField( display.contentWidth/1.8, 210, 85, 16 )
	  
	  Firstname:setTextColor(  1, 1, 1 )
	  Firstname.hasBackground = false
--	  Firstname:addEventListener( "userInput", fieldHandler( function() return Firstname end ) )

local Lastname = native.newTextField( display.contentWidth/1.8, 240, 85, 16)
	  
	  Lastname:setTextColor(  1, 1, 1  )
	  Lastname.hasBackground = false
--	  Lastname:addEventListener( "userInput", fieldHandler( function() return Lastname end ) )

--sceneGroup插入資料輸入框
    sceneGroup:insert(Lastname)
    sceneGroup:insert(Firstname)
	sceneGroup:insert(age)
	sceneGroup:insert(username)
	sceneGroup:insert(password)
	sceneGroup:insert(email)
-------------------------------------------------------------------------------------

------------------------------------------------------------------------------------------
	image = display.newImage( "muim/Background-1.png" )
	image.x = display.contentCenterX
	image.y = display.contentCenterY

	image0 = display.newImage( "muim/native.png" )
	image0.x = display.contentWidth/2.5
	image0.y = display.contentHeight/6
	
	image1 = display.newImage( "muim/Register buttom.png" )
	image1.x = display.contentWidth/1.2
	image1.y = display.contentHeight/1.1

	image2 = display.newImage( "muim/country.png" )
	image2.x = display.contentWidth/5
	image2.y = display.contentHeight/6

	image3 = display.newImage( "muim/email.png" )
	image3.x = display.contentWidth/4.8
	image3.y = display.contentHeight/4

	image4 = display.newImage( "muim/username.png" )
	image4.x = display.contentWidth/4.8
	image4.y = display.contentHeight/3

	image5 = display.newImage( "muim/password.png" )
	image5.x = display.contentWidth/4.8
	image5.y = display.contentHeight/2.5

	image6 = display.newImage( "muim/age.png" )
	image6.x = display.contentWidth/4.5
	image6.y = display.contentHeight/2.1

	image7 = display.newImage( "muim/Gender.png" )
	image7.x = display.contentWidth/3.8
	image7.y = display.contentHeight/1.8

	image8 = display.newImage( "muim/male.png" )
	image8.x = display.contentWidth/2.25
	image8.y = display.contentHeight/1.8

	image9 = display.newImage( "muim/Firstname.png" )
	image9.x = display.contentWidth/3.2
	image9.y = display.contentHeight/1.55

	image10 = display.newImage( "muim/female.png" )
	image10.x = display.contentWidth/1.7
	image10.y = display.contentHeight/1.8


	image11 = display.newImage( "muim/native.png" )
	image11.x = display.contentWidth/2.5
	image11.y = display.contentHeight/4

	image12 = display.newImage( "muim/native.png" )
	image12.x = display.contentWidth/2.4
	image12.y = display.contentHeight/3

	image13 = display.newImage( "muim/native.png" )
	image13.x = display.contentWidth/2.4
	image13.y = display.contentHeight/2.5

	image14 = display.newImage( "muim/native.png" )
	image14.x = display.contentWidth/2.5
	image14.y = display.contentHeight/2.1

	image15 = display.newImage( "muim/native3.png" )
	image15.x = display.contentWidth/1.8
	image15.y = display.contentHeight/1.53

	image16 = display.newImage( "muim/quill.png" )
	image16.x = display.contentWidth/1.2
	image16.y = display.contentHeight/1.7
--image17為 Country 分頁
	image17 = display.newImage( "muim/more.png" )
	image17.x = display.contentWidth/1.8
	image17.y = display.contentHeight/6

	image18 = display.newImage( "muim/Lastname.png" )
	image18.x = display.contentWidth/3.1
	image18.y = display.contentHeight/1.35

	image19 = display.newImage( "muim/native3.png" )
	image19.x = display.contentWidth/1.8
	image19.y = display.contentHeight/1.33

-------------------------------------------------------------------------

	sceneGroup:insert( image )  sceneGroup:insert( image10)  sceneGroup:insert( image11)  
	sceneGroup:insert( image0)  sceneGroup:insert( image5)	sceneGroup:insert( image12)
	sceneGroup:insert( image1)  sceneGroup:insert( image6)	sceneGroup:insert( image13)
	sceneGroup:insert( image2)  sceneGroup:insert( image7)	sceneGroup:insert( image14)
	sceneGroup:insert( image3)  sceneGroup:insert( image8)	sceneGroup:insert( image15)
	sceneGroup:insert( image4)  sceneGroup:insert( image9)	sceneGroup:insert( image16)
	sceneGroup:insert( image17) sceneGroup:insert( image18)	sceneGroup:insert( image19)
-------------------------------------------------------------------------	
--image1 設定為確認註冊完成按鈕
--image17 設定為跳轉分頁，選擇國家按鈕	
image1.touch = onSceneTouch1	
image17.touch = onSceneTouch
-------------------------------------------------------------------------

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
--------------------------------------------------------------------------
--設定選擇性別男女按鈕，預設為男生
local function onSwitchPress( event )

    local switch = event.target
    print( "Switch with ID '"..switch.id.."' is on: "..tostring(switch.isOn) )
    Gender = switch.id
    print(Gender)
end
-- Create two associated radio buttons (inserted into the same display group)
local radioButton1 = widget.newSwitch(
    {
        left = 170,
        top = 165,
        style = "radio",
        id = "Male",
        initialSwitchState = true,
        onPress = onSwitchPress
    }
)
sceneGroup:insert( radioButton1 )

local radioButton2 = widget.newSwitch(
    {
        left = 230,
        top = 165,
        style = "radio",
        id = "Female",
        onPress = onSwitchPress
    }
)
sceneGroup:insert( radioButton2 )
------------------------------------------------------------------------------------------

--預設國家選項字串

	
	local myText1 = display.newText("Select...", display.contentWidth/2.5,display.contentHeight/6, native.systemFontBold,16)
    myText1:setTextColor(1, 1, 1) 
    sceneGroup:insert(myText1)
    

 
 
end
---------------------------------------------------------------------------------------------------
function scene:show( event )
	local phase = event.phase
	composer.removeScene( "Front cover" )
	composer.removeScene( "country" )

	if "did" == phase then
		print( "1: show event, phase did" )
local showMem = function()
	--image1按鈕事件加入監聽器 否則無法使用按鈕
	--image17按鈕事件加入監聽器 否則無法使用按鈕
	image1:addEventListener( "touch", image1 )
	image17:addEventListener( "touch", image17 )

	end
		memTimer = timer.performWithDelay( 500, showMem, 1 )
	end	
end

function scene:hide( event )
	local phase = event.phase
	if "will" == phase then
		print( "1: hide event, phase will" )
	--過頁後移除image1監聽器
	--過頁後移除image17監聽器
	image1:removeEventListener( "touch", image1 )
	image17:removeEventListener( "touch", image17 )
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


