#!/usr/bin/env ruby

require "./ruler"

#-----------------------------------------------------------------------------
R("")

class A
	def initialize(*vals)
		@arr = []
		vals.each do |v|
			@arr.push(v)
		end
	end

	def each
		for i in (0..@arr.size - 1) do
			yield(i, @arr[i])
		end
	end
end

#a = A.new(1, 2, 8, -2)
a = A.new(:woj, :kos, :adam)

puts "-- iterator --"
a.each { |ai, av|
	puts "#{ai} = #{av}"
}

puts "--"
a_oper = Proc.new { |a, b|
	puts "#{a} #{b}"
}

puts "--"
a.each &a_oper;
