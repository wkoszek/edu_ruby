#!/usr/bin/env ruby

require "./ruler"

#-----------------------------------------------------------------------------
R("how to fork?")

STDOUT.sync = true

c2p, pfc = IO.pipe
p2c, cfp = IO.pipe

kid = fork do
	print $$
	puts " child something"

	10.times do |i|
		pfc.puts "Send #{i}"
	end
end

#loop do
10.times do |i|
	s = c2p.gets.chomp
	puts "S> #{s}"
end

Process.waitpid(kid, Process::WNOHANG)
