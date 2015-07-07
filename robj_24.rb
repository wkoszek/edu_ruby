#!/usr/bin/env ruby

require "./ruler"

#-----------------------------------------------------------------------------
R("Show how one can use missing_method to do additional stuff")

class Obj
	attr_accessor :obj_name
	def initialize(name)
		@obj_name = name
	end
	def dupa
		puts "> DUPA from Obj class"
	end
	def chuj
		puts "> CHUJ from Obj class"
	end
	def missing_method(m_name)
		puts "Obj #{m_name} undefined"
	end
	def to_s; @obj_name; end
end

class Thing
	attr_accessor :user
	def initialize(user)
		@user = user
	end

	# -------------------------------------------------------------------
	def to_s
		"to_s_Thing_" + @user.to_s
	end
#	def to_a
#		[ @user ]
#	end
#	alias_method :to_ary, :to_a

	def method_missing(method_name, *args)
		puts "--- before sending #{method_name}---"
		@user.send(method_name, *args)
		puts "--- after sending ---"
	end
end

o = Obj.new("my_object")
t = Thing.new(o)
puts t
t.dupa
t.chuj


