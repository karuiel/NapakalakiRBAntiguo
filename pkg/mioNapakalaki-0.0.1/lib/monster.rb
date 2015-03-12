# To change this license header, choose License Headers in Project Properties.
# To change this template file, choose Tools | Templates
# and open the template in the editor.
#encoding: utf­8

class Monster
  attr_reader :name;
  attr_reader :combatLevel;
  attr_reader :price;
  attr_reader :bc;
  
  def initialize( aName, someCombatLevel, aPrice, aBC)
    @name = aName
    @combatLevel = someCombatLevel
    @price = aPrice
    @bc = aBC    
  end
  
  def to_s
    "Name: #{@name}\nCombatLevel: #{@combatLevel}\n Price: #{@price.to_s}"+
      "\nBadConsequence: #{@bc.to_s}"
  end
end
