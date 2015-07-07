#!/usr/bin/env ruby

require "./ruler"

#-----------------------------------------------------------------------------
R("how to fork?")

def how_to_fork(testing = 0)
	STDOUT.sync = true

	c2p, pfc = IO.pipe
	p2c, cfp = IO.pipe

	kid = fork do
		if testing
			print "<PID>"
		else
			print $$
		end
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
end

how_to_fork(testing = 1)
