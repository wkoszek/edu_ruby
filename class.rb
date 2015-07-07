#!/usr/bin/env ruby

class U
	@name = ""
	def up_vote(friend)
		bump_karma
		friend.bump_karma
	end

	def bump_karma
		puts "karma up for #{@name}"
	end
end

joe = U.new 'joe'
leo = U.new 'leo'

joe.up_vote(leo)
