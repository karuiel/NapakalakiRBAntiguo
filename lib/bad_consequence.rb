# To change this license header, choose License Headers in Project Properties.
# To change this template file, choose Tools | Templates
# and open the template in the editor.
#encoding: utf­8

class BadConsequence
  
  private_class_method :new
  attr_reader :text
  attr_reader :levels
  attr_reader :nVisibleTreasures
  attr_reader :nHiddenTreasures
  attr_reader :death
  #attr_reader :specificHiddenTreasures
  #attr_reader :specificVisibleTreasures

  def initialize(aText, someLevels, someVisibleTreasures, someHiddenTreasures, 
                  someSpecificVisibleTreasures, someSpecificHiddenTreasures, death)
  
    
  end
  
  def BadConsequence.newNumberOfTreasures(aText, someLevels, someVisibleTreasures, 
                                          someHiddenTreasures)
    @text = aText
    @levels = someLevels
    @nVisibleTreasures = someVisibleTreasures
    @nHiddenTreasures = someHiddenTreasures   
  end
  
  def BadConsequence.newSpecificTreasures (aText, someLevels, someSpecificVisibleTreasures, 
                                           someSpecificHiddenTreasures)
    @test = aText
    @levels = someLevels
     
  end                                       
  
  def BadConsequence.newDeath (aText)
    @text = aText
    @death = true
  end
  
  def to_s
    "Text: #{@text}\nLevels: #{@levels}\nnVisibleTreasures: #{@nVisibleTreasures}\n"+
    "nHiddenTreasures: #{@nHiddenTreasures}"
  end
end
