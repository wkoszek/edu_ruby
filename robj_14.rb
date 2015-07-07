#!/usr/bin/env ruby

require "./ruler"
testing = 1

#-----------------------------------------------------------------------------
R("")

a = []
for i in (0..10) do
	val = (Random.rand() * 100).to_i
	if testing then
		val = i
	end
	a.push(i)
end

a.each do |av|
	print "#{av.to_s.rjust(3)} "
end
puts ""

#-----------------------------------------------------------------------------
R("Now reinitialize to constant array");

a = [ 1, -2, 17, 4, 19, 19, 16, 21, 15 ]

b = a.select { |av| av if av % 2 == 0 }.flatten

puts b


#-----------------------------------------------------------------------------
R("class")

class Person
	@age = 0
	@name = ""

	def initialize(age, name)
		@age = age
		@name = name
	end
	def mod_inc(person, n)
		person.inc(n)
	end
	def to_s
		"#{@name} age is #{@age}"
	end

	def inc(v)
		@age += v
	end
end

john = Person.new(10, "john")
mary = Person.new(20, "mary")

puts john, mary, "---"

mary.mod_inc(john, 2)

puts john, mary, "---"
