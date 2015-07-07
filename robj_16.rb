#!/usr/bin/env ruby

require "./ruler"

#-----------------------------------------------------------------------------
R("Showing how to handle to_s of the inherited class")
class Obj
	attr_accessor :x, :y

	def initialize(_x, _y)
		@x, @y = _x, _y
	end

	def to_s
		"x:#{@x} y:#{@y}"
	end
end
class Planet < Obj
	attr_accessor :color

	def initialize(_x, _y, _color)
		super(_x, _y)
		@color = _color
	end

	def to_s
		super + " color: #{@color}"
	end
end

p0 = Planet.new(10, 20, "red")
p1 = Planet.new(30, 10, "red")

puts p0, p1

#-----------------------------------------------------------------------------
R("Use include=instance methods; extend==class methods")
module Mover
	def move_to(x_to, y_to)
		puts "x_to: #{x_to}, y_to: #{y_to}"
		self.x += x_to
		self.y += y_to
	end
end

class Obj
	include Mover
end

p3 = Planet.new(15, 25, "Planeta p3, color red")
puts p3
p3.move_to(10, 20)
puts p3
