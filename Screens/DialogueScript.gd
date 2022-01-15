extends RichTextLabel

export var current_line = 0
var spot_number = 0

func _on_NextLineButton_pressed():
	current_line += 1
	if script_line[current_line] != null:
		if typeof(script_line[current_line]) == TYPE_DICTIONARY:
			$"../../../NameLabel".text = script_line[current_line]["Bust"]
			spot_number = script_line[current_line]["SpriteSpot"]
			var bust_to_insert = script_line[current_line]["Bust"]
			get_node(character_sprite_spots[spot_number]).texture = character_busts[bust_to_insert]
			_on_NextLineButton_pressed()
		else:
			$".".bbcode_text = script_line[current_line]
	else:
		$".".bbcode_text = "this message shouldn't appear, right? also Boobies"

var character_busts = {
	"":null,
	"Elyssia":load("res://Images/Characters/elyssia_bust.png"),
	"Lyra":load("res://Images/Characters/lyra_bust.png"),
	"Bing":load("res://Images/Characters/bing_bust.png"),
	"Soph":load("res://Images/Characters/soph_bust.png"),
	"Lans":load("res://Images/Characters/lans_bust.png")
}

var character_sprite_spots = {
	0:null,
	1:"../../../CharacterSpriteSpots/Char1",
	2:"../../../CharacterSpriteSpots/Char2",
	3:"../../../CharacterSpriteSpots/Char3",
	4:"../../../CharacterSpriteSpots/Char4",
	5:"../../../CharacterSpriteSpots/Char5"
}

var script_line = {
	1:"[i]Elyssia walks confidently into the tavern, before dusting her white evening gloves off upon each other as her gaze travels around the warm, packed room.[/i]",
	2:"[i]Among the many surprised faces, respectful or otherwise, very few of the tavern-goers stood out to her, as the third daughter of the cities namesake and ruler, Lord Gyldenbend.[/i]",
	3:{"Bust":"Elyssia", "SpriteSpot":1},
	4:"[i]Once she decides that she's surveyed the tavern sufficiently, she takes one step after another towards the bar, her creamy dump-truck butt jiggling and sweat shimmering under the torchlight with every bounce.[/i]",
	5:"Another den of commoners... I swear one of these days I'll have to walk into [i]someplace[/i] fun in this city. [i]She says confidently, not caring for the looks nor opinions of those around her.[/i]",
	6:{"Bust":"Lyra", "SpriteSpot":3},
	7:"HI ELYSSIA I WANNA SUCK THE BLOOD FROM YOUR MASSIVE JIGGLING ASS",
	8:{"Bust":"Bing", "SpriteSpot":4},
	9:"I HAVE A MASSIVE MEATY DICK SWINGING BETWEEN MY LEGS AND IM ALSO A POLAR BEAR",
	10:{"Bust":"Soph", "SpriteSpot":2},
	11:"I'M A LITTLE WITCH, SHORT AND SPOUT, HERE IS MY AMBY AND HERE IS MY STAFF"
}


