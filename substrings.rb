def substrings(input_string, dictionary)
	# split input by spaces
	# make hash with default 0 values
	# match each dictionary string to words in input
	# increment if found

	input_string_splits = input_string.downcase.split(" ")
	
	output = Hash.new(0)

	input_string_splits.each do |input_word|
		dictionary.each do |dictionary_word|
			output[dictionary_word] += 1 if input_word.include?(dictionary_word)
		end
	end
	puts output
end

dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]
substrings("below", dictionary)

substrings("Howdy partner, sit down! How's it going?", dictionary)