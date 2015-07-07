#!/usr/bin/env ruby

require "./ruler"
testing = 1

#-----------------------------------------------------------------------------
R("")

def sample_when(x)
	case x
	when 0..1
		puts "0..1"
	when 2..3
		puts "1..2"
	end
end

val = (Random.rand() * 100) % 4
if testing then
	val = 123
end

r = val
r = r.round(0)

sample_when(r)
