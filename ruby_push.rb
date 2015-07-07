#!/usr/bin/env ruby

class O < Array
	@@A = []
	def initialize
		@@A.each do |ai|
			puts "#{ai} #{self.class}"
		end
		
	end

	def p(*args)
		puts ".. #{self.class}"
		push args[0]
	end

	def pr()
		self.each do |a|
			puts "> #{a}"
		end
	end
end

o = O.new
o.p 1
o.p 2
o.p 3
o.pr

def paper_find
	@papers
end
