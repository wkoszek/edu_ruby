#!/usr/bin/env ruby

require "./ruler"

#-----------------------------------------------------------------------------
R("CodeSchool RubyBits2, level 4, challenge 6")

class Library
  SYSTEMS = ['arcade', 'atari', 'pc']
  attr_accessor :games

  def respond_to?(name)
    puts ">> #{name}"
    if SYSTEMS.include?(name)
      true
    else
      super
    end
  end
 
  def method_missing(name, *args)
    puts "-- Library --"
    puts "-- here, name='#{name}'"
    unless SYSTEMS.include?(name.to_s)
	super
    end
    self.class.class_eval do
          define_method name do
	  	puts "# this method is #{name}"
                find_by_system(name)
          end
    end
    send(name)
  end
  private
  def find_by_system(system)
    games.select { |game| game.system == system }
  end
end
class Game
	attr_accessor :system
end

l0 = Library.new
l0.games = [Game.new, Game.new, Game.new]

#puts "----"
#puts l0.respond_to?("atari")
#puts l0.respond_to?("atari2")
puts "--- checking atari ---"
l0.atari
