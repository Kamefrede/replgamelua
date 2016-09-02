
player_health = 100
monster_health = 100
function introduction()
io.write("Hello Young Traveler, what is thy name?\n")
player_name = io.read()
io.write("Very well " .. player_name .. ", what weapon would you want?\n")
io.write("Would you like a Dagger, a Crossbow, a Gun, a Sickle or a Wand?\n")
player_weapon = io.read()
if player_weapon == "Dagger" then
	io.write("Okay, " .. player_name .. " you chose to wield " .. player_weapon ..  " as your trusty weapon!\n")
elseif player_weapon == "Crossbow" then
	io.write("Okay, " .. player_name .. " you chose to wield " .. player_weapon ..  " as your trusty weapon!\n")
elseif player_weapon == "Crossbow" then
	io.write("Okay, " .. player_name .. " you chose to wield " .. player_weapon ..  " as your trusty weapon!\n")
elseif player_weapon == "Gun" then
	io.write("Okay, " .. player_name .. " you chose to wield " .. player_weapon ..  " as your trusty weapon!\n")
elseif player_weapon == "Sickle" then
	io.write("Okay, " .. player_name .. " you chose to wield " .. player_weapon ..  " as your trusty weapon!\n")
elseif player_weapon == "Wand" then
	io.write("Okay, " .. player_name .. " you chose to wield " .. player_weapon ..  " as your trusty weapon!\n")
else
	io.write("That's not quite right!\n")
end
end

function start_game()
io.write("Are you ready to play? Yes/No")
response = io.read()
if response == "Yes" then
	enter_room
elseif response == "Y" then
	enter_room
else
	io.write("Game Over!")
	introduction()
end
end

introduction()