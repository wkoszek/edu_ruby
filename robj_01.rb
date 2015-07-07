#!/usr/bin/env ruby

require "./ruler"

#-----------------------------------------------------------------------------
def ex_self
	#Object#type is deprecated; use Object#class
	#puts self.type

	puts self.class
end

#-----------------------------------------------------------------------------
class Person
	def sample
		puts "Person_sample"
	end
end

class Person
	def sample2
		puts "Sample2"
	end
end

def ex_obj
	other = Object.new
	def other.pp
		puts "ex_obj"
	end
	other.pp

	p0 = Person.new
	p0.sample
	p0.sample2

	p1 = Person.new
	def p1.sample2
		puts "P1 sample2"
	end
	p1.sample2
end

#-----------------------------------------------------------------------------
def ex_return
	def sample_ret2(x)
		return x, (x*2)
	end

	a, b = sample_ret2(10)
	puts a
	puts b
end

#-----------------------------------------------------------------------------
def ex_refer
	a = "wojtek"
	b = a

	p	a, b

	b += "aaa";
	p	a, b;


	def mo(x)
		x[0] = x[0] + 1
	end
	x = [ 1 ]
	p x
	mo(x)
	p x
	undef mo

	def mo(y)
		y += 1
	end
	y = 1
	p y
	mo(y)
	p y

end

#-----------------------------------------------------------------------------
R("self");
ex_self();

R("obj");
ex_obj();

R("ret");
ex_return();

R("reference");
ex_refer();
