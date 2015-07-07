#!/usr/bin/env ruby

require "./ruler"

#-----------------------------------------------------------------------------
R("Checking instance_eval")

class Image
	attr_accessor :name, :x, :y

	def initialize(name)
		@name = name
		@x = 10
		@y = 20
	end

	def to_s
		"# Image name: #{@name}, x:#{@x}, y:#{@y}"
	end

	def move_xy(_x, _y)
		@x, @y = _x, _y
		puts "# Moved to #{_x} and #{_y}"
	end
end

i = Image.new("pablo")
puts i

i.instance_eval do
	@x = 12
end
puts i
