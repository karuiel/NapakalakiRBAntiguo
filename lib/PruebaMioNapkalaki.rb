# To change this license header, choose License Headers in Project Properties.
# To change this template file, choose Tools | Templates
# and open the template in the editor.
#encoding: utf­8+
#
#Hacer prueba main
#TODO BADCONSEQUENCE

require_relative "prize.rb"
require_relative "bad_consequence.rb"
require_relative "monster.rb"

monsters = Array.new

prize = Prize.new(4,2) 
badConsequence = BadConsequence.newNumberOfTreasures('Pierdes 5 niveles y 3 tesoros visibles',
                                                      5 , 3, 0)
monsters << Monster.new('El rey de rosa', 13, prize, badConsequence)
