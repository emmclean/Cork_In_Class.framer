BackgroundLayer = "white"

Join = new Layer
	width: 1024
	height: 768
	image: "images/05_Program_Page_Join.png"

Join_HS = new Layer
	parent: Join
	y: 669
	x: 28
	height: 73
	width: 168
	backgroundColor: null
	
Waiting = new Layer
	width: 1024
	height: 768
	image: "images/06_In_Class_Waiting.png"
	opacity: 0
Waiting.sendToBack()

In_Class = new Layer
	width: 1024
	height: 768
	image: "images/06_In_Class.png"
	opacity: 0
In_Class.sendToBack()

Casting = new Layer
	parent: In_Class
	y: 664
	x: 28
	height: 83
	width: 121
	backgroundColor: null

Next_HS = new Layer
	x: 776
	y: 23
	height: 110
	width: 219
	backgroundColor: null 
	parent: In_Class
	
In_Class_Cast = new Layer
	width: 1024
	height: 768
	image: "images/In_Class_Cast.png"
	opacity: 0
In_Class_Cast.sendToBack()

Casting_2 = new Layer
	parent: In_Class_Cast
	y: 664
	x: 28
	height: 83
	width: 121
	backgroundColor: null
	
Post_Class = new Layer
	width: 1024
	height: 768
	image: "images/06_Post_Class_Chat.png"
	opacity: 0
Post_Class.sendToBack()

Next_2_HS = new Layer
	x: 776
	y: 23
	height: 110
	width: 219
	backgroundColor: null 
	parent: Post_Class
	
Questionnaire = new Layer
	width: 1024
	height: 768
	image: "images/06_Post_Class_Questionnaire.png"
	opacity: 0
Questionnaire.sendToBack()

circle = new Layer 
	width: 24 
	height: 24
	borderRadius: 24 
	backgroundColor: "black"
	parent: Questionnaire
	x: 612
	y: 322
	opacity: 0

Submit_HS = new Layer
	parent: Questionnaire	
	x: 610
	y: 451
	height: 70
	width: 224
	backgroundColor: null 
	
Join_HS.onClick ->
	Waiting.bringToFront()
	Waiting.animate 
		properties:
			opacity: 1
		time: 0.3 
		curve: "cubic-bezier(0.4, 0.0, 0.2, 1)"
	Utils.delay 3, ->
		In_Class.bringToFront()
		In_Class.animate
			properties:
				opacity: 1
			time: 0.3 
			curve: "cubic-bezier(0.4, 0.0, 0.2, 1)"

Casting.onClick -> 
	In_Class_Cast.bringToFront()
	In_Class_Cast.animate
		properties:
			opacity: 1
		time: 0.3 
		curve: "cubic-bezier(0.4, 0.0, 0.2, 1)"
	Utils.delay 0.3, ->
		In_Class.opacity = 0

Casting_2.onClick ->
	In_Class.bringToFront()
	In_Class.animate
		properties:
			opacity: 1
		time: 0.3 
		curve: "cubic-bezier(0.4, 0.0, 0.2, 1)"	

Next_HS.onClick ->
	Post_Class.bringToFront()
	Post_Class.animate
		properties:
			opacity: 1
		time: 0.3 
		curve: "cubic-bezier(0.4, 0.0, 0.2, 1)"		
		
Next_2_HS.onClick ->
	Questionnaire.bringToFront()
	Questionnaire.animate
		properties:
			opacity: 1
		time: 0.3 
		curve: "cubic-bezier(0.4, 0.0, 0.2, 1)"		

circle.onClick ->
	Join.opacity = 0
	Waiting.opacity = 0
	In_Class.opacity = 0
	In_Class_Cast.opacity = 0
	Post_Class.opacity = 0
	
	circle.animate
		properties:
			opacity: 1
		time: 0.1 
		curve: "cubic-bezier(0.4, 0.0, 0.2, 1)"	

Submit_HS.onClick ->
	Questionnaire.animate
		properties:
			opacity: 0
		time: 0.1 
		curve: "cubic-bezier(0.4, 0.0, 0.2, 1)"	
		
			
