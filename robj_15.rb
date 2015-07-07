#!/usr/bin/env ruby

require "./ruler"

#-----------------------------------------------------------------------------
R("Doing a loop with the iterator and yielding object to itself")

class Container
	attr_accessor :from, :to
	attr_accessor :x

	def initialize(options = {})
		@from = options[:from] || 0
		@to = options[:to] || 0
	end

	def iter
		@from.upto(@to) do |i|
			@x = i
			puts "> #{i}"
			yield self
		end
	end
end

c0 = Container.new(from: 0, to: 10)

c0.iter do |v|
	puts "v.i = #{v.x}"
end

