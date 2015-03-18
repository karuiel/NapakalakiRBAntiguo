#!/usr/bin/env ruby
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
  attr_reader :specificHiddenTreasures
  attr_reader :specificVisibleTreasures

  def initialize(aText, someLevels, someVisibleTreasures, someHiddenTreasures, 
                  someSpecificVisibleTreasures, someSpecificHiddenTreasures, newDeath)
    @text = aText
    @levels = someLevels
    @nVisibleTreasures = someVisibleTreasures
    @nHiddenTreasures = someHiddenTreasures
    @specificVisibleTreasures = someSpecificVisibleTreasures
    @specificHiddenTreasures = someSpecificHiddenTreasures
    @death = newDeath
    
  end
  
  def BadConsequence.newNumberOfTreasures(aText, someLevels, someVisibleTreasures, 
                                          someHiddenTreasures)
    new(aText, someLevels, someVisibleTreasures, someHiddenTreasures,
            Array.new, Array.new, false)  
  end
  
  def BadConsequence.newSpecificTreasures (aText, someLevels, someSpecificVisibleTreasures, 
                                           someSpecificHiddenTreasures)
    new(aText, someLevels, 0, 0, someSpecificVisibleTreasures,
            someSpecificHiddenTreasures, false)
     
  end                                       
  
  def BadConsequence.newDeath (aText)
    
    new(aText, 0, 0, 0, Array.new, Array.new, true)
    
  end
  
  def to_s
    out="Text: #{@text}\nLevels: #{@levels}\nnVisibleTreasures: #{@nVisibleTreasures}\n"+
    "nHiddenTreasures: #{@nHiddenTreasures}\nDeath: #{@death}\nSpecificVisibleTreasure: "
    if(@specificVisibleTreasures != nil)
      @specificVisibleTreasures.each {|x| out += x.to_s }
    else 
      out += "nil"
    end
    out += "\nSpecificHiddenTreasures: "
    if (@specificHiddenTreasures != nil)
      @specificHiddenTreasures.each {|x| out += x.to_s}
    else
      out += "nil"
    end  
    out
   
  end
end