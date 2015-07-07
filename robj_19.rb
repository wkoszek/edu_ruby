#!/usr/bin/env ruby

require "./ruler"

#-----------------------------------------------------------------------------
R("Pass method instead of a block")

def me(x)
	puts "> #{x}"
end

mep = method(:me)

ar = [ 1, 2, 3 ]
ar.each(&mep)

puts "---- 2nd iterator ----"

(1..3).each(&mep)

#-----------------------------------------------------------------------------
R("Set self=Class and evaluate")

class Experiment
	def to_s
		"old"
	end
end

e = Experiment.new
puts e

Experiment.class_eval do
	def to_s
		"new"
	end
end

puts e

