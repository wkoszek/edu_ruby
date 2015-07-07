#!/usr/bin/env ruby

require "./ruler"

def ex_char_range()
	r = ("a" .. "d").to_a
	puts r
	puts "--"
	r[1].capitalize!
	puts r
	puts "--"
	puts r.length
end

def ex_str()
	puts "wojte" == "wojte"
	puts "w" == "a"
end

def ex_str2()
	puts "--"
	s = "wkoszek"
	puts s[1,3]
	puts s.[](-1)
end

def ex_str3()
	s = "wojciech adam koszek"
	puts s["adam"]
	puts s["ss"]
end

def ex_str4()
	s = "adam"
	s << "koszek"
	puts s
	puts "abc".center(2)
end

def ex_str5()
	s = "aaawbbojc"
	puts s.count("!a")
end

def ex_str6()
	# RUBY! Inconsistency in handling strings.
	s = "aaawbbojc"
	puts s.delete("a-b")
	puts s
end

def ex_str7()
	s = "abc123ABC"
	p s.downcase
	p s.upcase
	p s.capitalize
end

def ex_str8()
	s = "abc"
	puts s.include?("b")
end

def ex_str9()
	pa = []
	puts ":", pa
	pa.push("wojtek")
	pa.push("adam")
	puts ";", pa

	puts "-----------"
	p0 = pa.shift
	puts p0
	p1 = pa.shift
	puts p1
	pN = pa.shift
	puts pN
end

R("string")
ex_char_range()

R("ex_str")
ex_str()

R("ex_str2")
ex_str2()

R("ex_str3")
ex_str3()

R("ex_str4")
ex_str4()

R("ex_str5")
ex_str5()

R("ex_str6")
ex_str6()

R("ex_str7")
ex_str7()

R("ex_str8")
ex_str8()

R("ex_str9")
ex_str9()

