#!/usr/bin/env ruby

require "./ruler"

#-----------------------------------------------------------------------------
R("")

class Thing
	attr_accessor :name
	def initialize(options = {})
		@name = options[:name] || "unknown"
	end
	def to_s
		"> #{@name}"
	end
	def to_a
		[@name]
	end
	alias_method :to_ary, :to_a

	def method_missing(method_name)
		puts "> Missing method: #{method_name}"
		super
	end
end

t = Thing.new(name: "wojtek")
puts t
#t.dupa

#-----------------------------------------------------------------------------
R("How include? works")
a = [ 1, 2, 3]
x = 2
puts "Callling include?(#{x}) on a = ", a

puts "Is equal to: ", a.include?(x)

puts "---"
a = [ 'wojtek', 'koszek', 'adam']
puts a.include?(a[0])
puts a.include?(:wojtek)
