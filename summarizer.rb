#!/usr/bin/ruby
unless ARGV.size > 0
	puts "You need to select a txt file"
	exit
end
#Parses txt document
txt_file = ARGV[0]
lines = File.readlines(txt_file)
text = lines.join
sentences = text.gsub(/\s+/, ' ').strip.split(/\.|\?|!/)
sentences_sorted = sentences.sort_by { |sentence| sentence.length }
one_third = sentences_sorted.length / 3
ideal_sentences = sentences_sorted.slice(one_third, one_third + 1)
ideal_sentences = ideal_sentences.select { |sentence| sentence =~ /is|are/ }
puts ideal_sentences.join(".")
