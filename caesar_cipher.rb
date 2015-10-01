def caesar_cipher(input, shift_num)
	output = ""
	input.scan(/./) do |letter|
		new_ordinal = letter.downcase.ord + shift_num
		new_ordinal -= 26 if new_ordinal > 122
		output << new_ordinal.chr.upcase if letter =~ /[A-Z]/
		output << letter if letter =~ /\W/ or letter =~ /\d/
		output << new_ordinal.chr if letter =~ /[a-z]/
	end
	puts "Your output is: #{output}"
end

puts "What's your input text?"
input = gets.chomp
puts "What do you want to shift by?"
shift_num = gets.chomp.to_i

caesar_cipher(input, shift_num)