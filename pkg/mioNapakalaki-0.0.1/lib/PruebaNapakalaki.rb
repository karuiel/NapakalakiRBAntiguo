#!/usr/bin/env ruby
#encoding: utf-8
# To change this license header, choose License Headers in Project Properties.
# To change this template file, choose Tools | Templates
# and open the template in the editor.
#=PruebaNapakalaki.rb
#
#Author:: Miguel Morales Castillo y María del Mar Ruiz Martín
#
#==Descripción
#
# En *PruebaNapakalaki* se hace una prueba de las clases implementadas, además
# se crea un array con los monstruos que vamos a utilizar ademas de las 
# siguientes consultas:
# 
#- Conocer los monstruos que tienen mas de nivel 10
#- Los monstruos cuyo mal rollo solo implica la perdida de nivel
#- Los monstruos cuyo buen rollo implica una ganancia de más de un nivel
#- Los monstruos cuyo  mal rollo supone la perdida de al menos un tesoro ONEHAND
#
#
#Hacer prueba main
#Cambiar los valores -1 por 0
#poner if en los initialize

require_relative "prize.rb"
require_relative "bad_consequence.rb"
require_relative "monster.rb"
require_relative "treasure_kind.rb"


#-----------------------------Prueba Sesión 1--------------------------
        
price = Prize.new(1,1)
puts "Premio creado: " + price.to_s

text =  "Sientes bichos bajo la ropa. Descarta la armadura visible."
bc1 =  BadConsequence.newNumberOfTreasures(text,0,1,0);
bc2 = BadConsequence.newDeath(text)
puts "Malos rollos creados:" , bc1.to_s, bc2.to_s#, bc3.to_s       
   
myMonster =  Monster.new('Monstruito', 8, price, bc1)
puts "Monstruo creado: " + myMonster.to_s


#---------------------------Declaración de los monstruos------------------------


monsters = Array.new


prize = Prize.new(2,1) 
tesoro = Array.new(1,TreasureKind::ARMOR)
badConsequence = BadConsequence.newSpecificTreasures(
  'Pierdes tu armadura visible y otra oculta', 0, tesoro,tesoro)
monsters << Monster.new('3 Byakhees de bonanza', 8, prize, badConsequence)

prize = Prize.new(1,1) 
tesoro = Array.new(1,TreasureKind::HELMET)
vacio = Array.new
badConsequence = BadConsequence.newSpecificTreasures(
    'Embobados con el lindo primigenio te descartas de tu casco visible',
    0, tesoro,vacio)
monsters << Monster.new('Chibithulhu', 2, prize, badConsequence)

prize = Prize.new(1,1) 
tesoro = Array.new(1,TreasureKind::SHOE)
badConsequence = BadConsequence.newSpecificTreasures(
    'El primordial bostezo contagioso. Pierdes el calzado visible.',
    0, tesoro,vacio)
monsters << Monster.new(' El sopor de Dunwich', 2, prize, badConsequence)

prize = Prize.new(4,1) 
tesoro = Array.new(1,TreasureKind::ONEHAND)
badConsequence = BadConsequence.newSpecificTreasures(
    'Te atrapan para llevarte de fiesta y te dejan caer en mitad del vuelo.' +
    'Descarta 1 mano visible y 1 mano oculta.', 0, tesoro, tesoro)
monsters << Monster.new('Ángeles de la noche ibicenca', 14, prize, badConsequence)

prize = Prize.new(3,1)
badConsequence = BadConsequence.newNumberOfTreasures('Pierdes todos tus tesoros visibles',
    0, 80,0)
monsters << Monster.new('El gorrón en el umbral', 10, prize, badConsequence) 

prize = Prize.new(2,1) 
tesoro = Array.new(1,TreasureKind::ARMOR)
badConsequence = BadConsequence.newSpecificTreasures(
    'Pierdes la armadura visible', 0, tesoro, vacio)
monsters << Monster.new('H.P. Munchcraft', 6, prize, badConsequence)

prize = Prize.new(1,1)
tesoro = Array.new(1,TreasureKind::ARMOR)
badConsequence = BadConsequence.newSpecificTreasures(
    'Sientes bichos bajo la ropa. Descarta la armadura visible.', 0, tesoro, vacio)
monsters << Monster.new('Bichgooth', 2, prize, badConsequence)

prize = Prize.new(4,2) 
badConsequence = BadConsequence.newNumberOfTreasures('Pierdes 5 niveles y 3 tesoros visibles',
                                                      5 , 3, 0)
monsters << Monster.new('El rey de rosa', 13, prize, badConsequence)
#Revisar este montruo creo que el constructor correcto seria number of treasures
prize = Prize.new(1,1) 
badConsequence = BadConsequence.newSpecificTreasures(
    'Toses los pulmones y pierdes dos niveles', 2, vacio,vacio)
monsters << Monster.new('La que redacta en las tinieblas', 2, prize, badConsequence)

prize = Prize.new(2,1) 
badConsequence = BadConsequence.newNumberOfTreasures(
    'Te faltan manos para tanta cabeza. Pierdes tres niveles y'+
    'tus tesoros visibles de las manos.', 3, 80,0)
monsters << Monster.new('Bicéfalo', 20, prize, badConsequence)

prize = Prize.new(2,1) 
badConsequence = BadConsequence.newDeath(
    "Estos monstruos resultan bastante superficiales y te aburren"+
   "mortalmente. Estas muerto")
monsters << Monster.new('Los hondos', 8, prize, badConsequence)

prize = Prize.new(2,1) 
badConsequence = BadConsequence.newNumberOfTreasures(
    "Pierdes 2 niveles y 2 tesoros ocultos",2,0,2)
monsters << Monster.new('Semillas Cthulhu', 4, prize, badConsequence)

prize = Prize.new(2,1) 
tesoro = Array.new(1,TreasureKind::ONEHAND)
badConsequence = BadConsequence.newSpecificTreasures(
    "Te intentas escaquear. Pierdes una mano visible",0,tesoro,vacio)
monsters << Monster.new('Dameargo', 1, prize, badConsequence)

prize = Prize.new(1,1) 
badConsequence = BadConsequence.newNumberOfTreasures(
    "Da mucho asquito. Pierdes 3 niveles",3,0,0)
monsters << Monster.new('Pollipolipo volante', 3, prize, badConsequence)

prize = Prize.new(3,1) 
badConsequence = BadConsequence.newDeath(
    "No le hace gracia que pronuncien mal su nombre. Estas muerto")
monsters << Monster.new('Yskhtihyssg-Goth', 12, prize, badConsequence)

prize = Prize.new(4,1) 
badConsequence = BadConsequence.newDeath(
    "La familia te atrapa.Estas muerto")
monsters << Monster.new('Familia Feliz', 1, prize, badConsequence)

prize = Prize.new(2,1) 
tesoro = Array.new(1,TreasureKind::BOTHHANDS)
badConsequence = BadConsequence.newSpecificTreasures(
    "La quinta directiva primaria te obliga a perder 2 niveles y"+
      "un tesoro 2 manos visible",2,tesoro,vacio)
monsters << Monster.new('Roboggoth', 8, prize, badConsequence)

prize = Prize.new(1,1) 
tesoro = Array.new(1,TreasureKind::HELMET)
badConsequence = BadConsequence.newSpecificTreasures(
    "Te asusta en la noche. Pierdes un casco visible.",0,tesoro,vacio)
monsters << Monster.new('El espia', 5, prize, badConsequence)

prize = Prize.new(1,1) 
badConsequence = BadConsequence.newNumberOfTreasures(
    "Menudo susto te llevas. Pierdes 2 niveles y 5 tesoros visibles.",2,5,0)
monsters << Monster.new('El Lenguas', 20, prize, badConsequence)


#---------------------------------Consultas-----------------------------------

puts "\nLos monstruos con un nivel superior que 10 son: \n"
  monsters.each{ |x| 
    if x.combatLevel>10
      puts x.to_s + "\n"
  end    
  }
puts "\n\nLos monstrues cuyo mal rollo solo implica la perdida de nivel son: \n\n"
monsters.each{ |x|
  if ((x.bc.nHiddenTreasures && x.bc.nVisibleTreasures)==0)&&(x.bc.levels!=0) &&
      (!x.bc.death)
    puts x.to_s + "\n"
  end
}
  
puts "\n\nLos monstruos cuyo buen rollo implica una ganancia de más de un nivel son: \n"
  monsters.each{ |x|
    if(x.price.levels > 1) 
      puts x.to_s 
    end
  }

puts"\n\nLos monstruos cuyo  mal rollo supone la perdida de al menos un tesoro ONEHAND son:\n"
  monsters.each{ |x|
    if(x.bc.specificVisibleTreasures.find{|y| y == TreasureKind::ONEHAND})
      puts x.to_s 
    else if(x.bc.specificHiddenTreasures.find{|y| y == TreasureKind::ONEHAND})
      puts x.to_s 
    end 
    end
  }  
