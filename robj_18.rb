#!/usr/bin/env ruby

require "./ruler"

#-----------------------------------------------------------------------------
R("Proc and passing an array to it")

p = Proc.new do |a|
	puts "p proc, size: #{a.size}"
end

a = [1, 2, 3]
p.call(a)

#-----------------------------------------------------------------------------
R("Struct")

String2 = Struct.new(:user, :pass) do
	def to_s
		"#{user} #{pass}"
	end
	alias_method	:to_string, :to_s
end

str = String2.new("wojtek", "aaa123")
puts str
puts str.to_string

#-----------------------------------------------------------------------------
R("State and method generation")
class State
	states = [ :running, :suspended, :waiting ]
	states.each do |state|
		define_method state do
			@state = state
		end
	end

	def to_s
		"> #{@state}"
	end

	def sample
		puts "-- Sample class #{self} --"
	end
end

st0 = State.new
puts st0
st0.running
puts st0
st0.suspended
puts st0

st0.send(:sample)

obj_meth = st0.method(:sample)
obj_meth.call
