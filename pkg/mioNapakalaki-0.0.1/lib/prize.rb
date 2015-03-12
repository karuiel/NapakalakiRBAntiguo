# To change this license header, choose License Headers in Project Properties.
# To change this template file, choose Tools | Templates
# and open the template in the editor.
#encoding: utf­8

class Prize
  
  attr_reader :treasures
  attr_reader :levels
  
  def initialize(someTreasures, someLevels)
    @treasures = someTreasures
    @levels = someLevels
  end
  
  def to_s
    "Tesoros ganados: #{@treasure} \n Niveles ganados: #{@levels}"
  end
end