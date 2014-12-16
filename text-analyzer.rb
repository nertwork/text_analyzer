#!/usr/bin/ruby
unless ARGV.size == 1
	puts "You need to select just one txt file"
	exit
end
#Parses txt document
lines = File.readlines(ARGV[0])
line_cnt = lines.size
txt = lines.join
t_char = txt.length
t_char_nospaces = txt.gsub(/\s+/,'').length
w_cnt1 = txt.split.length
sentence_cnt = txt.split(/\.|\?|!/).length
paragraph_cnt = txt.split(/\n\n/).length
stopws = %w{a the by on for of are with we just but and to the my I has some in this}
ws = txt.scan(/\w+/)
kws = ws.select { |w| !stopws.include?(w) }
kws_percent = ((kws.length.to_f / txt.length.to_f) * 100).to_i

#Reads output to terminal
puts "#{line_cnt} lines 
#{t_char} characters
#{t_char_nospaces} characters (excluding spaces)
#{w_cnt1} words
#{sentence_cnt} sentences
#{paragraph_cnt} paragraphs
#{sentence_cnt / paragraph_cnt} sentences per paragraph (average)
#{w_cnt1 / sentence_cnt} words per sentence (average)
and #{kws_percent}% are keywords."
