#!/usr/bin/env ruby

require "./ruler"

#-----------------------------------------------------------------------------
R("Simple puts")
f = File.open("data_robj07.txt", "w")
f.putc('c')
f.close
puts "OK" if f.closed?

#-----------------------------------------------------------------------------
R("Check ? in methods")
class Sample
	def is_ok?
		return 1
	end
end
s = Sample.new
puts "Sample OK" if s.is_ok?

#------------------------------------------------------------------------------
R("Simple regex match")
words = %w(
	wojciech
	koszek
	adam
	taku
	ssss
)

words.each do |w|
	if w =~ /^w/
		puts "Starts with 'w'"
	end
end
#-----------------------------------------------------------------------------
R("Regex object checking");

words2 = %w(
	wojciech
	koszek
	adam
	taku
	ssss
)
re_w = /^w/
words2.each do |w|
	puts "Word #{w.rjust(10)}"
	if re_w.match(w)
		puts "...matched re_w"
	end
end

