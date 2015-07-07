#!/usr/bin/env ruby

require "./ruler"

def ex_arr()
	a = [ 1, 3, -1, 10, -19, 20 ]
	b = [ 1, 3]
	puts "Min\t#{a.min}"
	puts "Max\t#{a.max}"
	puts "Sort\t#{a.sort}"
end

def ex_arr2()
	a = [ 1, 3, -1, 10, -19, 20 ]
	b = [ 1, 3]
	c = [ 100, 200 ]

	p "a:", a
	p "b:", b
	p "a-b:"
	p (a - b)
	p "a & b:"
	p (a & b)
	p "c:"
	p c
	p "a | c:"
	p (a | c)
end

def ex_grep()
	ws = %w(wojtek adam koszek jola koszek)
	puts ws.grep(/^[wa]/)
end

def ex_hash()
	h = Hash.new
	h["a"] = "aaaa"
	h["b"] = "bbbb"
	h["c"] = "cccc"
	p h
	p h["qwe"]
end

# Oh... This is so weird.
def ex_hash2()
	ha = {
		'name'		=>	"wojciech",
		'name2'		=>	"adam",
		'surname'	=>	"koszek"
	}
	p ha
	p "---------------------"
	p ha.keys
	p ha.values
	p "---------------------"
	p ha.key?("name")
	p ha.key?("name3")
end

R("array0")
ex_arr()

R("array1")
ex_arr2()

R("grep")
ex_grep()

R("hash")
ex_hash()

R("hash2");
ex_hash2()
