extends RichTextLabel

export var current_line = 0
var spot_number = 0

func _ready():
	_on_NextLineButton_pressed()

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
			self.bbcode_text = script_line[current_line]
	else:
		self.bbcode_text = "this message shouldn't appear, right? also booba! also this is the end of the dialogue ive put in"
		current_line -= 1
	self.scroll_to_line(0)

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

var script_line = { # remember to set empty lines as null
	1:{"Bust":"Elyssia", "SpriteSpot":1},
	2:"[i]Elyssia walks confidently into the tavern, before dusting her white evening gloves off upon each other as her gaze travels around the warm, packed room.[/i]",
	3:"[i]Among the many surprised faces, respectful or otherwise, very few of the tavern-goers stood out to her, as the third daughter of the cities namesake and ruler, Lord Gyldenbend.[/i]",
	4:"[i]Once she decides that she's surveyed the tavern sufficiently, she takes one step after another towards the bar, her creamy dump-truck butt jiggling and sweat shimmering under the torchlight with every bounce.[/i]",
	5:"Another den of commoners... I swear one of these days I'll have to walk into [i]someplace[/i] fun in this city. [i]She says confidently, not caring for the looks nor opinions of those around her.[/i]",
	6:"[i]Once she’s made her way to the bar, she bends over the counter and leans towards the barkeep, before whispering almost conspiratorially about a certain delicious dish called ‘pizza’ that she hopes he knows how to make, or at-least hopes he knows someone who knows how to make it. He does not. So Elyssia pomfs her butt down upon a bar stool and mopes as she considers what non-alcoholic drink to buy.[/i]",
	7:{"Bust":"", "SpriteSpot":1},
	8:{"Bust":"Lyra", "SpriteSpot":5},
	9:"[i]Sulking in the corner of the bar, Lyra, filled with hope of drawing in one of the bar's residents for an easy meal, is currently faking a drunken stupor as she keeps one sharp eye on the juicy noble snack that had just walked into the bar. Lyra quickly realised that she has never tasted the blood of so pretty a noble and so, driven by both hunger and curiosity, begins thinking of the myriad ways she could turn the blood of this noble girl’s ass into her snack.[/i]",
	10:"[i]With renewed motivation—after failing to snatch a random guy from the bar using her patented strategy of ‘squeezing her tits around her victim’s arm while a free hand wanders their body’—Lyra makes her way towards her next choice of victim. She sensually licks her lips before taking a seat next to Elyssia and ordering a mug of water.[/i]",
	11:null,
	12:null,
	13:null,
}


