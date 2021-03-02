require_relative "lib/Manager"
require_relative "lib/Employee"
require 'pry'


#Test your code here
assaf_gat=Manager.new("Assaf Gat", "Sales & Marketing", 37 )
guy_peer=Manager.new("Guy Peer", "Software Development", 42)
michelle_hyers=Manager.new("Michelle Hyers", "Operations", 35)

henry_velasquez=Employee.new("Henry Velasquez", 101000, assaf_gat)
chris_sanchez=Employee.new("Chris Sanchez", 56000, guy_peer)
dylan_johnson=Employee.new("Dylan Johnson", 200000, michelle_hyers)
manish_masthi=Employee.new("Manish Masthi", 101004, assaf_gat)
charlie_laughlin=Employee.new("Charlie Laughlin", 185000, assaf_gat)
michael_goglia=Employee.new("Michael Goglia", 70000, guy_peer)


binding.pry
puts "done"
