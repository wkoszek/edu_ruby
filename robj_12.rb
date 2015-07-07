#!/usr/bin/env ruby

require "./ruler"

#-----------------------------------------------------------------------------
R("Proc example")

p = Proc.new do
	puts "something"
end
p.call

#-----------------------------------------------------------------------------
R("proc");

array = [ 1, 2, 3, 4 ]

oper = proc { |n, n2| 2*n  + n2 }
a = oper.call(1, 3)
puts "2*n+n2 = #{a}"

sum_a = proc { |*sum|
	ret = 0
	sum.each do |elem|
		ret += elem
	end
	ret
}
sum = sum_a.call(1, 2, 3)
puts "sum = #{sum}"

#-----------------------------------------------------------------------------
#R("pass a procedure")
#
#def filter(a, fi)
#	filtered = []
#	a.each do |a_item|
#		if fi(a_item)
#			filtered.push(a_item)
#		end
#	end
#	filtered
#end
#
#filt = Proc.new {
#	puts "#{n}"
#}
#
#filter([1, 5, 2, 4, 6, 3, 7], filt)
