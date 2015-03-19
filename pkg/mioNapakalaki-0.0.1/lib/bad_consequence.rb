#!/usr/bin/env ruby
# To change this license header, choose License Headers in Project Properties.
# To change this template file, choose Tools | Templates
# and open the template in the editor.
#encoding: utf­8
#
#=bad_consequence.rb
#
#Author:: Miguel Morales Castillo y María del Mar Ruiz Martín
#
#== Clase BadConsequence
#En esta clase se recoge lo relativo a los mal rollos de los monstruos, indica 
#que tesoros pierdes tanto visibles como ocultos asi como la pérdida de niveles
#e incluso la muerte.
#
#La clase _BadConsequence_ consta de:
#* método initialize
# En este método se inicializa un objeto válido de la clase que tiene los siguientes
# atributos:
#   - tex: texto con el mal rollo
#   - levels: niveles que pierdes
#   - nVisibleTreasures: número de tesoros visibles que pierdes
#   - nHiddenTreasures: número de tesoros ocultos que pierdes
#   - death: variable _boolean_ que indica si estas muerto o no
#   - specificHiddenTreasures: array con los tesoros específicos ocultos que pierdes
#   - specificVisibleTreasures: array con los tesoros específicos visibles que pierdes
#
#* getters de todos los atributos
#* constructor newNumberOfTreasures
#
#En este constructor pasas como parámetro el texto, los niveles, y el número de
#tesoros visibles y ocultos que pierdes
#
#* constructor newSpecificTreasures
#
#En este constructor pasas como parámetro el texto, los niveles y los arrays 
#correspondientes a los tesoros específicos visibles y ocultos
#
#* constructor newDeath
#
#En este constructor pasas como parametro solo el texto se usa para poner la veriable
#_death_ a true
#
#* método to_s
#
#En este método se devuelve un string con el estado completo del objeto
#


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