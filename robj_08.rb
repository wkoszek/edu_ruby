#!/usr/bin/env ruby

require "./ruler"

#-----------------------------------------------------------------------------
R("")
class Animal
	attr_accessor :date
	def born(_d = 0)
		@date = _d
	end
	def p
		"# Cat = #{@date}\n"
	end
end

class Cat < Animal
	def initialize
		@what_food = -1
	end

	def eat(_w = 0)
		@what_food = _w
	end
	def p
		super + "# Cat food = #{@what_food}\n"
	end
end

cat = Cat.new
cat.date = 10
cat.eat(10)
puts cat.p
