#!/usr/bin/env ruby

require "./ruler"

#-----------------------------------------------------------------------------
class IntVsFloat
	def initialize
		i0 = 1;
		f0 = 1.1;
		puts "Int: #{i0}, Float: #{f0}";
	end
	def show_round()
		inc = 0.1
		f = 0.0
		0.step(1.0, 0.1) do |val|
			print "Int: #{val.to_i} Float: #{val}\n"
		end
	end
end

R("How Float gets truncated when conv. to Int");
v = IntVsFloat.new;
v.show_round();

#-----------------------------------------------------------------------------
class Temperature
	attr_accessor :hour

	Factor = (5.0 / 9)

	temp_c = 0;
	place = "";

	def initialize(temp_c = 25, place = "Warsaw")
		puts "# initialize called #{temp_c}"
		@temp_c = temp_c
		@place = place
	end

	def store_c(temp_c = 25)
		@temp_c = temp_c
	end
	def get_c
		@temp_c
	end

	def store_f(f)
		@temp_c = (f - 32) * Factor;
	end
	def get_f
		(@temp_c + 1.8) + 32
	end

	def store_k(k)
		@temp_c = k - 273.15
	end
	def get_k
		@temp_c + 273.15
	end

	def place=(p)
		@place = p
	end
	def place
		@place
	end
	
	def < (other)
		return @temp_c < other.c
	end

end

R();
t = Temperature.new(0)
puts "In 'C = #{t.get_c}"
puts "In 'F = #{t.get_f}"
puts "In  K = #{t.get_k}"

R();
t2 = Temperature.new(10)

R()
t3 = Temperature.new(20, "Paris")
puts "T3 place: #{t3.place}"
t3.hour = 1232
puts "T3 hour: #{t3.hour}"
puts Temperature::Factor


