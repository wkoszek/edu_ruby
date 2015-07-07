#!/usr/bin/env ruby

require "./ruler"

#-----------------------------------------------------------------------------
R("")
module CardData
	@@suits = %w{h d c d}
	@@ranks = %w{2 3 4 5}
end

class Card
	attr_accessor	:suit, :rank
	def initialize(s, r)
		self.suit = s
		self.rank = r
	end
end

# The fact that Deck inherits after Array makes it get an access to Array's
# methods.
class Deck < Array
	include CardData

	attr_reader :shuffled

	def initialize
		puts "-- Deck --"
		@@suits.each do |s|
			@@ranks.each do |r|
				puts "=== s=#{s} r=#{r}"
				push Card.new(r, s)
			end
		end
		@shuffled = false
	end

	def shuffle!
		size.downto(1) do |n|
			push delete_at rand(n)
		end
		@shuffled = true
	end

	def deal(n)
		if size - n < 0
			puts "Not enough cards to deal #{n}"
		else
			if not shuffled
				puts "Warning: dealing from unshuffled deck"
			end
			slice!(0, n)
		end
	end
end

d = Deck.new
hand = d.deal(5)
p hand
d.shuffle!
hand = d.deal(5)
p hand
hand = d.deal(100)
