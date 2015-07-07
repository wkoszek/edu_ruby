#!/usr/bin/env ruby

g_do_verbose = 0
g_go_global = 0

ARGV.each do |a|
	if a =~ /-verbose/
		g_do_verbose = 1
	end
	if a =~ /-global/
		g_do_global = 1
	end
end
