weapons =  { "Dagger", "Crossbow", "Gun", "Sickle", "Wand" } 
player_health = 100
monster_health = 100
yes = { "Yes", "Y", "Yeah", "Yas", "Yeh" }
no =  {"No", "N", "Nah", "Nope", "lolno" }

function chooseName()
	io.write("Hello Young Traveler, what is thy name?\n")
	player_name = io.read()
	chooseWeapon()
end

function chooseWeapon()
	io.write("Very well " .. player_name .. ", what weapon would you want?\n")
	io.write("Would you like a Dagger, a Crossbow, a Gun, a Sickle or a Wand?\n")
	player_weapon = io.read()
	if check(weapons, player_weapon) == true then
		startGame()
	else 
		print("That's not quite right would you like to choose again?")
		local response = io.read()
		if check(yes, response) == true then
			chooseWeapon()
		else
			print("Thanks for playing!\n")
			return false
		end
	end
end

function startGame()
	print("hey atleast you got it to work")
end

function check(table, checkie)
	for key,value in pairs(table) do
		if value == checkie then
			return true
		end
	end
return false
end

chooseName()