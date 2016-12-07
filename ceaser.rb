puts "Please enter the text you want to cipher using Caesar cipher"

sentance = gets.chomp

puts "please enter the shift factor (+ to go right, - to go left"

shift = gets.chomp.to_i

if shift > 26 || shift < -26
	puts "Please enter a number that is smaller than 26"
	shift = gets.chomp.to_i
else
end

char = sentance.split("")

newSent = ""

char.each do |i|
	
	i=i.ord

	if i == 32
		@newChar = " "

	else
		if  i >= 65 && i <= 90 
		
			@newChar = i.to_i + shift

				if @newChar < 65
					@newChar = (@newChar + 26).chr
				elsif @newChar > 90
					@newChar = (@newChar -26).chr
				else
					@newChar = @newChar.chr
				end
		else
			@newChar = i.to_i + shift

				if @newChar < 97
					@newChar = (@newChar + 26).chr
				elsif @newChar > 122
					@newChar = (@newChar -26).chr
				else
					@newChar = @newChar.chr
				end
		end
	end

		newSent = newSent + @newChar
end

puts "The incripted Sentance is " + newSent