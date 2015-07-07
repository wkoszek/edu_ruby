#!/usr/bin/env ruby

require "./ruler"

#-----------------------------------------------------------------------------
R("")

class Thing
	def method_missing(method_name, *args)
		unless method_name =~ /wojtek/
			super
		end
		puts "# will define method #{method_name}"
		self.class.class_eval do
			define_method method_name do |*args|
				s = ""
				s += "Method: #{method_name}"
				args.each do |av|
					s += av
				end
				puts "> String: #{s}"
			end
		end
		send(method_name)
	end
end

t = Thing.new

t.wojtek
t.wojtek
