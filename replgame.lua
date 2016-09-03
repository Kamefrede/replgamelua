weapons =  { "Dagger", "Crossbow", "Gun", "Sickle", "Wand" } 
player_health = 100
monster_health = 100
yes = { "Yes", "Y", "Yeah", "Yas", "Yeh" }
no =  {"No", "N", "Nah", "Nope", "lolno" }
clock = os.clock

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
		confirm()
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

function confirm()
	io.write("The old man asks: \n"
	io.write("Are you brave enough to enter the dungeon? Yes/No \n")
	local response = io.read()
	if check(yes, response) == true then
		startGame()
	else
		io.write("You cowardly ran back to the old man, returning your " .. player_weapon .. " to him and exiting the dungeon.\n")
		io.write("Play Again? Yes/No \n")
		local response2 = io.read()
		if check(yes, response) == true then
			chooseName()
		else
			print("Thanks for playing!\n")
			return false
		end
	end
end

function startGame()
	io.write("After saying yes to the old man you black out\n")
	io.write("...")
	sleep(0.5)
	io.write("...")
	sleep(0.5)
    initialroom()
end

function initialroom()
	io.write("You wake up in a small locked room. In front of you, you see a large door that appears to be locked.\n")
	io.write("Get up and look around? Yes/No \n")
	local response = io.read()
	if check(yes, response) == true then
		io.write("stuff")
	else
		io.write("You decide not to do anything and you eventually fall asleep. \n")
		sleepy()
	end
end

function sleepy()
	io.write("You suddenly wake up for no apparent reason and find yourself binded by chains in an even smaller room\n")
	sleep(3)
	io.write("After roughly 2 days of just being there, you start getting dizzy because you haven't drank any water in two days\n")
	sleep(3)
	io.write("2 days later you die from dehydration.\n")
	gameOver()
end

function gameOver()
	io.write("Game Over, Play Again? Yes/No")
	local response = io.read()
	if check(yes, response) == true then
		for i=1,30 do
			io.write("\n")
			chooseName()
		end
	else
		io.write("Thanks for playing \n")
		return false
	end

end

function check(table, checkie)
	for key,value in pairs(table) do
		if value == checkie then
			return true
		end
	end
return false
end

function sleep(n)
	local t0 = clock()
	while clock() - t0 <= n do end
end


chooseName()