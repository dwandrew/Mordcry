# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Equipment.create(name: "Sword",	range: "1",	attacks: 4,	damage: "1 / 3", abilities: "Parry", strength: "As User", cost: 10, category: "One handed close")
Equipment.create(name: "Axe/Pick" ,	range: "1",	attacks: 4,	damage: "1 / 3", abilities: "Penetrating", strength: "As User", cost: 5, category: "One handed close")
Equipment.create(name: "Mace/Hammer/Club" ,	range: "1",	attacks: 4,	damage: "1 / 3", abilities: "Clubbed", strength: "As User", cost: 3, category: "One handed close")
Equipment.create(name: "Spear" ,	range: "2",	attacks: 3,	damage: "1 / 4", strength: "As User", cost: 5, category: "One handed close")
Equipment.create(name: "Dagger" ,	range: "1",	attacks: 5,	damage: "1 / 2", strength: "As User", cost: 2, category: "One handed close")
Equipment.create(name: "Morningstar" ,	range: "1",	attacks: 4,	damage: "1 / 3", abilities: "Flailing (1)", strength: "As User", cost: 10, category: "One handed close")
Equipment.create(name: "Fist" ,	range: "1",	attacks: 4,	damage: "1 / 2", abilities: "Blunt", strength: "As User", cost: 0, category: "One handed close")

Equipment.create(name: "Halberd" ,	range: "2",	attacks: 3,	damage: "2 / 4", abilities: "Damaging(1)", strength: "As User +1", cost: 15, category:"Two handed close")
Equipment.create(name: "Flail" ,	range: "2",	attacks: 4,	damage: "1 / 5", abilities: "Flailing (2)", strength: "As User +(*)", cost: 15, category:"Two handed close")
Equipment.create(name: "GreatSword/Axe/Hammer" , range: "1",	attacks: 3,	damage: "2 / 4", abilities: "Damaging(2)", strength: "As User +2", cost: 20, category:"Two handed close")
				
Equipment.create(name: "Shortbow" ,	range: "3-16", attacks: 3, damage: "1 / 3", strength: "3", cost: 5, category: "Ranged")
Equipment.create(name: "Bow", range: "3-24", attacks: 3, damage: "1 / 3", strength: "3", cost: 10, category: "Ranged")
Equipment.create(name: "Longbow" , range: "3-30", attacks: 3, damage: "1 / 3", strength: "3", cost: 15, category: "Ranged")
Equipment.create(name: "Elf Bow" , range: "3-36", attacks: 3, damage: "1 / 4", abilities: "Penetrating", strength: "3", cost: 35, category: "Ranged")
Equipment.create(name: "Crossbow", range: "3-30", attacks: 3, damage: "2 / 4", abilities: "Move or Fire", strength: "4", cost: 25, category: "Ranged")
Equipment.create(name: "Repeater Crossbow" , range:"3-24",	attacks: 5,	damage: "1 / 3", strength: "3", cost: 40, category: "Ranged")
Equipment.create(name: "Pistol" , range: "6",	attacks: 3,	damage: "2 / 5", abilities: "Reload, Penetrating", strength: "4", cost: 15, category: "Ranged")
Equipment.create(name: "Duelling Pistol" , range: "10",	attacks: 3,	damage: "2 / 5",  abilities: "Reload, Penetrating, Accurate", strength: "4", cost: 30 , category: "Ranged")
Equipment.create(name: "Handgun" , range: "3-24", attacks: 3, damage: "2 / 5", abilities: "Move or fire, Reload, Penetrating", strength: "4", cost:30, category: "Ranged")
Equipment.create(name: "Blunderbuss" , range: "*", attacks: 1, damage: "Special", abilities: "Blunderbuss", strength: "Special", cost: 30, category: "Ranged")
Equipment.create(name: "Sling (short range)" , range: "3-9", attacks: 5, damage: "1 / 2",  strength: "3", cost: 3, category: "Ranged")
Equipment.create(name: "Sling (long range)" , range: "3-18", attacks: 3, damage: "1 / 2",  strength: "3", cost: 3, category: "Ranged")
Equipment.create(name: "Throwing Knife/Star" , range: "6",	attacks: 3,	 damage: "1 / 4",  strength: "As User", cost: 10, category: "Ranged")
					
