#!/usr/bin/env ruby

require './ruler'

#-----------------------------------------------------------------------------
R("just check what :<something> does");
def ex_class()
	colors = [ :red, :green, :blue, :yellow ]
	colors.each do |c|
		puts "> #{c}"
	end
end

ex_class()

#-----------------------------------------------------------------------------
R("Just check what talk() does");
class Thing
	def talk
		puts "-- This is original talk() --"
	end
end
t0 = Thing.new
t0.talk

class Thing
	alias	:oldtalk :talk
	def talk
		puts "-- Thing->talk --"
		oldtalk
	end
end
t1 = Thing.new
t1.talk

#-----------------------------------------------------------------------------
R("Just check what &does");
class Array
	alias :oldsort :sort

	def sort(&block)
		puts "Size: #{size}"
		if size > 10000
			$stderr.puts "###### Warn: size > 10000!"
			$stderr.flush
		end
		oldsort(&block)
	end
end
(0...15000).to_a.sort

#---------------------------
R("understanding *args")
def method(*args)
	args.each do |a|
		puts "Arg: #{a}"
	end
end
method(1)

