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
		"> @name"
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

R("Create an object of Thing class and list its methods")
t0 = Thing.new
t0.methods.sort.each do |m|
	print "#REM #{m} "
end
puts 

R("Check how respond_to? works")

puts t0.respond_to?(:to_s)
puts t0.respond_to?(:to_ss)

R("Try to redefine the respond_to method")
t0.instance_eval do
	def respond_to?(method_name)
		if method_name =~ /to_ss/
			true
		else
			super
		end
	end
end
puts t0.respond_to?(:to_s)
puts t0.respond_to?(:to_ss)
