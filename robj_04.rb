#!/usr/bin/env ruby

def ex_each()
	puts "-----------#{__method__.to_s}--------------"

	a = [1, 2, 3, 10, -20, -17]
	a.each { puts "aa" }
end

def ex_each_iter()
	puts "-----------#{__method__.to_s}--------------"

	a = [1, 2, 3, 10, -20, -17]
	a.each { |a|
		puts "aa #{a}"
	}

	puts "-----------"
	for n in (1..3)
		puts n
	end
end

def ex_range()
	puts "-----------#{__method__.to_s}--------------"

	a = [1, 2, 3, 10, -20, -17]
	a.each do
		| ai |
		puts ai
	end
end

def ex_times()
	puts "-----------#{__method__.to_s}--------------"

	n = 3
	n.times do
		puts "@ "
	end

	n.times do |ni|
		puts "> #{ni}"
	end

	10.downto(1) do |x|
		print "#{x} ";
		if (x == 1) then
			puts ""
		end
	end

	1.step(19, 2) do |oddnum|
		print "#{oddnum} "
		if (oddnum == 19) then
			puts ""
		end
	end
end

def ex_eachline()
	puts "-----------#{__method__.to_s}--------------"
	s = "woj\nasd"
	s.split("\n").each do |l|
		puts l
	end
end


ex_each()
ex_each_iter()
ex_range()
ex_times()
ex_eachline()
