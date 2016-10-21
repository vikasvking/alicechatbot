
require './colour.rb'
require 'rubygems'

require 'programr'
brains=Dir.glob("lib/*")

robot = ProgramR::Facade.new
robot.learn(brains)

begin
  print 'type: '.green
  s = STDIN.gets
  
  if s != 'quit' || s!='exit'
    reaction = robot.get_reaction(s)
	if reaction.nil?
		STDOUT.puts "Sorry".yellow
    	else
	STDOUT.puts "bot: #{reaction}".yellow 
	end
  end
end while s != 'quit'
