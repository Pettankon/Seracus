extends RichTextLabel

export var current_line = 0

func _on_NextLineButton_pressed():
	current_line += 1
	if typeof(script_line[current_line]) == TYPE_DICTIONARY:
		$"../../../NameLabel".text = script_line[current_line]["Bust"]
		character_sprite_spots[script_line][current_line]["SpriteSpot"].texture = character_busts[script_line][current_line]["Bust"]
		_on_NextLineButton_pressed()
	else:
		$".".bbcode_text = script_line[current_line]

var character_busts = {
	"Elyssia":preload("res://Images/Characters/elyssia_bust.png"),
	"Lyra":preload("res://Images/Characters/lyra_bust.png"),
}

var character_sprite_spots = {
	1:$"../../../CharacterSpriteSpots/Char1",
	2:$"../../../CharacterSpriteSpots/Char2",
	3:$"../../../CharacterSpriteSpots/Char3",
	4:$"../../../CharacterSpriteSpots/Char4",
	5:$"../../../CharacterSpriteSpots/Char5"
}

var script_line = {
	1:"[i]Elyssia walks confidently into the tavern, before dusting her white evening gloves off upon eachother as her gaze travels around the warm, packed room.[/i]",
	2:"[i]Among the many surprised faces, respectful or otherwise, very few of the tavern-goers stood out to her, as the third daughter of the cities namesake and ruler, Lord Gyldenbend.[/i]",
	3:{"Bust":"Elyssia", "SpriteSpot":1},
	4:"[i]Once she decides that she's surveyed the tavern sufficiently, she takes one step after another towards the bar, her creamy dumptruck-sized butt jiggling and shimmering with sweat under the torchlight with every step.[/i]",
	5:"Another den of commoners... I swear one of these days I'll have to walk into [i]someplace[/i] unusual in this city. [i]She says confidently, not caring for the looks nor opinions of those around her.[/i]",
	6:"",
	7:"",
}


