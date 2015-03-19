#!/usr/bin/env ruby
# To change this license header, choose License Headers in Project Properties.
# To change this template file, choose Tools | Templates
# and open the template in the editor.
#encoding: utf­8
#
#=prize.rb
#
#Author:: Miguel Morales Castillo y María del Mar Ruiz Martín
#
#==Clase Prize
#
#Esta clase recoge el premio que recibes por matar a un monstruo de la clase _Monster_
#
#La clase _Prize_ esta compuesta por:
#
#* método initialize
#
# En este método se inicializan todos los los atributos :
# -treasures: tesoros que ganas
# -levels: niveles que ganas
# 
#* método to_s
# 
# En este método se devuelve un string con el estado completo del objeto 
#

class Prize
  
  attr_reader :treasures, :levels
  
  def initialize(someTreasures, someLevels)
    @treasures = someTreasures
    @levels = someLevels
  end
  
  def to_s
    "Tesoros ganados: #{@treasures} \n Niveles ganados: #{@levels}"
  end
end