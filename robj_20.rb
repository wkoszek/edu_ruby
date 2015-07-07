#!/usr/bin/env ruby

require "./ruler"

#-----------------------------------------------------------------------------
R("")
class MethodLogger
	def log_method(klass, method_name)
		klass.class_eval do
			puts "> Trying to define #{method_name}"
			alias_method "#{method_name}_old", method_name
			define_method "#{method_name}" do |*args, &block|
				puts "# DBG: #{method_name} called"
				send "#{method_name}_old", args, block
			end
		end
	end
end

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

R("Before move_xy is traced")
i = Image.new("kossak")
puts i
i.move_xy(1, 1)
puts i

R("After move_xy is traced")
ml = MethodLogger.new
ml.log_method(Image, :move_xy)
i.move_xy(-10, -5)
