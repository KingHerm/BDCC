extends Character

func _init():
	id = "elena"
	
	npcCharacterType = CharacterType.Generic
	
	pickedSkin="HumanSkin"
	pickedSkinRColor=Color("ffff89a6")
	pickedSkinGColor=Color("ffbd57fd")
	pickedSkinBColor=Color("ff2ce9ff")
	npcSkinData={
	"hair": {"r": Color("ffa37bfd"),"g": Color("ffe982d3"),"b": Color("ffff87e5"),},
	"breasts": {"b": Color("ffcd91ff"),},
	}
	
func _getName():
	return "E.L.E.N.A."
	#Experimental Learning and Evolving Neural Algorithm

func getGender():
	return Gender.Other
	
func getSmallDescription() -> String:
	return "A hologram of a cute girl."

func getSpecies():
	return ["human"]

func getThickness() -> int:
	return 105

func getFemininity() -> int:
	return 500

func createBodyparts():
	giveBodypartUnlessSame(GlobalRegistry.createBodypart("androidhead"))
	giveBodypartUnlessSame(GlobalRegistry.createBodypart("overeyehair2"))
	giveBodypartUnlessSame(GlobalRegistry.createBodypart("anthrobody"))
	giveBodypartUnlessSame(GlobalRegistry.createBodypart("anthroarms"))
	var breasts = GlobalRegistry.createBodypart("humanbreasts")
	breasts.size = 1
	giveBodypartUnlessSame(breasts)
	var penis = GlobalRegistry.createBodypart("humanpenis")
	penis.lengthCM = 15
	penis.ballsScale = 1
	giveBodypartUnlessSame(penis)
	giveBodypartUnlessSame(GlobalRegistry.createBodypart("anus"))
	var tail = GlobalRegistry.createBodypart("felinetail")
	tail.tailScale = 1
	giveBodypartUnlessSame(tail)
	giveBodypartUnlessSame(GlobalRegistry.createBodypart("plantilegs"))

func getDefaultEquipment():
	return ["AndroidSuit"]
