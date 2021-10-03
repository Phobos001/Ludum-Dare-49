extends Label


func _ready():
	text = ""
	
	text += "Exotons collected: "
	text += str(GlobalVariables.exotons_collected)
	text += "\n\n --------------------------- \n\n" 
	
	if GlobalVariables.scared_dayon:
		if GlobalVariables.scared_dayon_failed:
			text += "You tried to threaten Dayon and fell on your ass\n\n"
		else:
			text += "You were mean to Dayon >:(\n"
			
	if GlobalVariables.dayon_masochism:
		text += "You crushed yourself to death like ten times.\n"
			
	text += "\n\n --------------------------- \n\n" 
			
	if GlobalVariables.added_ads_for_mass:
		text += "You left Ludum Dare to the ad wolves in desperation \n\n"
	
	if GlobalVariables.promise_to_kill_joma:
		if GlobalVariables.actually_killed_joma:
			text += "Joma fucking died\n"
			text += " N i c e \n\n"
		else:
			text += "You spared Joma for some reason\n\n"
			
	text += "\n\n --------------------------- \n\n" 
	
		
	pass
