#!/usr/bin/env ruby

require "./ruler"

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

r = (Random.rand() * 100) % 4
r = r.round(0)

sample_when(r)
