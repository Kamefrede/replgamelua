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
	io.write("The old man asks: \n")
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
	sleep(5)
	io.write("After roughly 2 days of just being there, you start getting dizzy because you haven't drank any water in two days\n")
	sleep(5)
	io.write("2 days later you die from dehydration.\n")
	gameOver()
end

function gameOver()
	io.write("Game Over, Play Again? Yes/No\n")
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

function treasure_room()
	io.write("You manage to open the huge door.\n On the other side of the door there is a treasure room! Yes! \n As you walk something catches your eye. \n !!!! Seems to be a treasure chest! Talk about luck! \n Spoke too soon. Monster incoming at 10 o' clock. Now that's some luck alright. \n It's an ogre! He's armored to the teeth and seems to be carrying a cub.\n Do you want to fight it?")
	local response = io.read()
	if check(yes, response) == true then
		io.write("You pull out your " .. player weapon .. " to fight the ogre.")
		fight()
	else
		io.write("You don't pull out your weapon, but then realize it was a bad idea because there is no other way out.")
		sleep(5)
		io.write("You get killed by the ogre.")
		gameOver()
end

function fight()
	--tbd
end

function previctory()
	io.write("You're finally able to approach the chest!\n Hm.. the lid is a bit heavy. It must be a good prize inside.\n With the suspense killing you, you have to decide either to open it or not.\n Open it? Yes/No \n")
	local response = io.read()
	if check(yes, response) == true then
		victory()
	else
		io.write("You spend a long time contemplating if you should open it or not, you spend just enough time for the ogre's girlfriend to sneak up behind you and kill you!\n Congratulations you died because you didn't want a prize.\n"
		gameOver()
	end
end

function victory()
	io.write("You pick up the diamond from the treasure chest and as you raise it up with your hand it reflects a light beam and opens a passageway!\n As it is the only sane move to do, you run through the passageway and magically get teleported to the entrace of your house.\n Victory! Hurray! \n Play Again Yes/No \n")
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