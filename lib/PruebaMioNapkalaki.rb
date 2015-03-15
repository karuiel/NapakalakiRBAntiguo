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
require_relative "treasure_kind.rb"

monsters = Array.new


prize = Prize.new(2,1) 
badConsequence = BadConsequence.newSpecificTreasures(
  'Pierdes tu armadura visible y otra oculta', 0, TreasureKind::ARMOR,TreasureKind::ARMOR)
monsters << Monster.new('3 Byakhees de bonanza', 8, prize, badConsequence)

prize = Prize.new(1,1) 
badConsequence = BadConsequence.newSpecificTreasures(
    'Embobados con el lindo primigenio te descartas de tu casco visible',
    0, TreasureKind::HELMET,nil)
monsters << Monster.new('Chibithulhu', 2, prize, badConsequence)

prize = Prize.new(1,1) 
badConsequence = BadConsequence.newSpecificTreasures(
    'El primordial bostezo contagioso. Pierdes el calzado visible.',
    0, TreasureKind::SHOE,nil)
monsters << Monster.new(' El sopor de Dunwich', 2, prize, badConsequence)

prize = Prize.new(4,1) 
badConsequence = BadConsequence.newSpecificTreasures(
    'Te atrapan para llevarte de fiesta y te dejan caer en mitad del vuelo.' +
    'Descarta 1 mano visible y 1 mano oculta.', 0, TreasureKind::ONEHAND, TreasureKind::ONEHAND)
monsters << Monster.new('ngeles de la noche ibicenca', 14, prize, badConsequence)

prize = Prize.new(3,1)
badConsequence = BadConsequence.newNumberOfTreasures('Pierdes todos tus tesoros visibles',
    0, 80,0)
monsters << Monster.new('El gorron en el umbral', 10, prize, badConsequence) 

prize = Prize.new(2,1) 
badConsequence = BadConsequence.newSpecificTreasures(
    'Pierdes la armadura visible', 0, TreasureKind::ARMOR, nil)
monsters << Monster.new('H.P. Munchcraft', 6, prize, badConsequence)

prize = Prize.new(1,1) 
badConsequence = BadConsequence.newSpecificTreasures(
    'Sientes bichos bajo la ropa. Descarta la armadura visible.', 0, TreasureKind::ARMOR, nil)
monsters << Monster.new('Bichgooth', 2, prize, badConsequence)

prize = Prize.new(4,2) 
badConsequence = BadConsequence.newNumberOfTreasures('Pierdes 5 niveles y 3 tesoros visibles',
                                                      5 , 3, 0)
monsters << Monster.new('El rey de rosa', 13, prize, badConsequence)
prize = Prize.new(1,1) 
badConsequence = BadConsequence.newSpecificTreasures(
    'Toses los pulmones y pierdes dos niveles', 2, nil,nil)
monsters << Monster.new('La que redacta en las tinieblas', 2, prize, badConsequence)
prize = Prize.new(2,1) 
badConsequence = BadConsequence.newNumberOfTreasures(
    'Te faltan manos para tanta cabeza. Pierdes tres niveles y'+
    'tus tesoros visibles de las manos.', 3, 80,0)
monsters << Monster.new('Bicefalo', 20, prize, badConsequence)

prize = Prize.new(2,1) 
badConsequence = BadConsequence.newDeath(
    "Estos monstruos resultan bastante superficiales y te aburren"+
   "mortalmente. Estas muerto")
monsters << Monster.new('Bicefalo', 8, prize, badConsequence)

prize = Prize.new(2,1) 
badConsequence = BadConsequence.newDeath(
    "Estos monstruos resultan bastante superficiales y te aburren"+
   "mortalmente. Estas muerto")
monsters << Monster.new('Bicefalo', 8, prize, badConsequence)

puts "Los monstruos con un nivel menor que 10 son: \n"
  monsters.each{|x|      
    if x.combatLevel<10
   puts x.to_s + "\n"
    end    
  }
puts "Los monstrues cuyo mal rollo solo implica la perdida de nivel son: \n"
  monsters.each{|x|
    if ((x.bc.nHiddenTreasures && x.bc.nVisibleTreasures)==0)&&(x.bc.levels!=0)
    puts x.to_s + "\n"
    end
  }

puts monsters[0].to_s