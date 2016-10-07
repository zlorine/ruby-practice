
def segmenter
	
puts "write a sentence"

s = gets.chomp.gsub!(/[^0-9A-Za-z]/, ' ')
	array = s.split
	array.sort_by {|word| word.downcase}
	
end

segmenter