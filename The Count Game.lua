local lives = 10

math.randomseed(os.time())

local randomNumber = math.random(1, 50)


print("Welcome to higher or lower than!")

print("Guess a number from 1 to 50")

print("\n")

while lives > 0 do

	print("You have "..lives.." lives left. Guess the number.")

	local number = io.read()
	number = tonumber(number)

		if number == randomNumber then
			print("You guessed it right, I'll spare your life... for now!")
      print("\n")
      print("THE END")
			break

    elseif number > 50 then
			print("Ummm... Which part of FROM 1 TO 50 didn't you understand...?")
      print("\n")

			lives = lives - 1

		elseif number < randomNumber then
			print("HIGHER!")
      print("\n")

			lives = lives - 1

		elseif number > randomNumber then
			print("not THAT high...")
      print("\n")

			lives = lives - 1

		end

	if lives <= 0 then

	print("You failed, your soul belongs to ME now!")
  print("\n")
  print("GAME OVER")
	break

	end

end



io.read()