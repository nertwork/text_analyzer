#!/usr/bin/ruby
unless ARGV.size > 0
	puts "You need to select a text file"
	exit
end
text_file = ARGV[0]
lines = File.readlines(text_file)
line_count = lines.size
text = lines.join
total_characters = text.length
total_characters_nospaces = text.gsub(/\s+/,'').length
word_count1 = text.split.length
sentence_count = text.split(/\.|\?|!/).length
paragraph_count = text.split(/\n\n/).length
puts "#{line_count} lines 
#{total_characters} characters
#{total_characters_nospaces} characters (excluding spaces)
#{word_count1} words
#{sentence_count} sentences
#{paragraph_count} paragraphs
#{sentence_count / paragraph_count} sentences per paragraph (average)
#{word_count1 / sentence_count} words per sentence (average"
