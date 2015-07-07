#!/usr/bin/env ruby

class Box
	attr_accessor	:height, :width, :length

	def initialize(_h = 0, _w = 0, _l = 0)
		@height = _h
		@width = _w
		@length = _l
	end

	def volume
		@height * @width * @length
	end

	def serialize(fn)
		fp = File.open(fn, "w")
		puts "# > Serialize to #{fn}"
		fp.puts(@height)
		fp.puts(@width)
		fp.puts(@length)
		fp.close
		if fp.closed?
			puts "# < Serialize to #{fn} done!"
		end
	end

	def unser(fn)
		fp = File.open(fn, "r")
		puts "# > Unserialize from #{fn}"
		h = fp.gets
		w = fp.gets
		l = fp.gets
		fp.close
		if fp.closed?
			puts "# < Unserialize from #{fn} done"
		end
		puts "Box h = #{h}"
		puts "Box w = #{w}"
		puts "Box l = #{l}"
		bret = Box.new(h, w, l)
		bret
	end
end

b0 = Box.new
p b0
b0.width = 1
b0.height = 2
b0.length = 3
p b0
p "Vol: #{b0.volume}"
b0.serialize("data_robj06.txt")
b1 = b0.unser("data_robj06.txt")
p b1
