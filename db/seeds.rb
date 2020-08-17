# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


Ability.create(name: "Parry", effect:	"When user attacked successfully, Can roll one dice. If this beats the lowest successful hits dice roll, then ignore the damage from it. Cannot parry crits.")
Ability.create(name: "Penetrating", effect: "Weapon ignores one point of armour soak (in addition to any caused by strength)")
Ability.create(name: "Clubbed", effect:	"Stuns on a 4+ rather than a 5+")
Ability.create(name: "Flailing", effect:	"Parry has to beat the highest successful hit roll.
Add +(*) (Included in Weapon Profile) to Strength if the first activation is used to attack. But not for the second activation (and any consecutive activations this turn) if it is also used to attack.")
Ability.create(name: "Damaging", effect:	"Blows calculated at +(*) Strength (Included in Weapon Profile)")
Ability.create(name: "Move or Fire", effect:	"Cannot be fired if wielder moves during its activation")
Ability.create(name: "Blunt", effect:	"Strength of attack counts as 1 lower for attacks made by this weapon. (Included in Weapon Profile)")
Ability.create(name: "Reload", effect:	"Weapon must be reloaded after firing, takes an activation to reload")
Ability.create(name: "Accurate", effect:	"Weapon gets a +1 on any dice roll to hit, this does not change 5’s into crits.")
Ability.create(name: "Blunderbuss", effect:	"When fired, draw a line 16” long and 1” wide, for anyone in this line roll a dice: <br>
1-2: 1 point of damage<br>
3-5: 3 points of damage<br>
6: 5 points of damage<br>
After firing the Blunderbuss takes a full 2 activations to reload.")
Ability.create(name: "Gromril Weapon", effect: "(CC only)	Weapon ignores 1 point of armour soak (in addition to any it already ignores), increase Damage and Crit Damage of the weapon by +1")
Ability.create(name: "Ithilmar Weapon", effect: "(CC only)	Weapon adds +1 to its number of attacks and Crit Damage")


Armour.create(name: "Light Armour",	soak: 1,	agility_penalty: -1, abilities: "-", cost: 20)
Armour.create(name: "Heavy Armour",	soak: 2,	agility_penalty:-2,	abilities: "-", cost: 50)
Armour.create(name: "Ithilmar Armour",	soak: 2,	agility_penalty:-1,	abilities: "-", cost: 90)
Armour.create(name: "Gromril Armour",	soak: 3, agility_penalty:-2,	abilities: "-", cost: 150)
Armour.create(name: "Shield",	soak: 0,	agility_penalty: 0,	abilities: "+1 Toughness, takes up off hand", cost: 5)
Armour.create(name: "Buckler",	soak: 0,	agility_penalty: 0,	abilities: "Parry (as sword), takes up off hand", cost: 5)
Armour.create(name: "Helmet",	soak: 0,	agility_penalty: 0, abilities: "4+ Save against Stunning, (becomes knocked down instead)", cost: 10)

Skill.create(name: "Leader", description: "Any friendly Warrior within 6\" of this Warrior may use its Bravery instead of their own as long as the Leader is not stunned", skill_category: "Generic" )
Skill.create(name: "Spellcaster", description: "This Warrior may cast spells, and can choose a single spell from the Appropriate list when recruited. <br> Whenever they learn a new skill they can choose a new spell instead or reduce the difficultly to cast of one they already have by 1", skill_category: "Generic")
Skill.create(name: "Large", description: "This Warrior is very large and therefore does not have to take All Alone checks", skill_category: "Generic")
Skill.create(name: "Animal", description: "This Warrior has animalistic intelligence and therefore can never gain skills from experience or become a hero", skill_category: "Generic" )
Skill.create(name: "Fear", description: "This Warrior is intimidating or terrifying and so causes Fear", skill_category: "Generic" )
Skill.create(name: "Burn the Witch", description: "This Warrior hates Spellcasters in particular and gets +1 to their number of close combat attacks if attacking a spellcaster", skill_category: "Generic")
Skill.create(name: "Prayers", description: "This Warrior may cast Prayers, and can choose a single Prayer from the Appropriate list when recruited. <br> Whenever they learn a new skill they can choose a new Prayer instead or reduce the difficultly to cast of one they already have by 1", skill_category: "Generic")
Skill.create(name: "Fanatical", description: "This Warrior is driven by a fervour that means they do not need to take Fear or All Alone checks", skill_category: "Generic")
Skill.create(name: "Swordsman", description: "This Warrior is so effective at parrying that if their parry equals to or beats the enemy hit its coutsn as a successful parry, now they can even parry a crit!", skill_category: "Combat")
Skill.create(name: "Mutations", description: "This Warrior has been twisted by the cursed nature of their surroundings and when purchased can be given Mutations from the list.", skill_category: "Special" )
Skill.create(name: "Perfect Killer", description: "The Warrior has honed the killing arts, and now all attacks ignore 1 point of armour soak (in addition to any already ignored)", skill_category: "Combat" )
Skill.create(name: "No Need for Weapons", description: "The Warrior has no need or has no ability to use Weapons. They many not choose any nor be equipped with them, they can also not use shields or bucklers.", skill_category: "Generic" )
# Skill.create(name: , description: , skill_category: )


Equipment.create(name: "Sword",	range: "1",	attacks: 4,	damage: "1 / 3", strength: "As User", cost: 10, category: "One handed close").abilities << Ability.find_by_name("Parry")
Equipment.create(name: "Axe/Pick" ,	range: "1",	attacks: 4,	damage: "1 / 3", strength: "As User", cost: 5, category: "One handed close").abilities<< Ability.find_by_name("Penetrating")
Equipment.create(name: "Mace/Hammer/Club" ,	range: "1",	attacks: 4,	damage: "1 / 3",  strength: "As User", cost: 3, category: "One handed close").abilities<< Ability.find_by_name("Clubbed")
Equipment.create(name: "Spear" ,	range: "2",	attacks: 3,	damage: "1 / 4", strength: "As User", cost: 5, category: "One handed close")
Equipment.create(name: "Dagger" ,	range: "1",	attacks: 5,	damage: "1 / 2", strength: "As User", cost: 2, category: "One handed close")
Equipment.create(name: "Morningstar" ,	range: "1",	attacks: 4,	damage: "1 / 3", strength: "As User +(1)", cost: 10, category: "One handed close").abilities<< Ability.find_by_name("Flailing")
Equipment.create(name: "Punch/Kick" ,	range: "1",	attacks: 4,	damage: "1 / 2", strength: "As User -1", cost: 0, category: "One handed close").abilities<< Ability.find_by_name("Blunt")
Equipment.create(name: 'Natural Weapons',	range: "1",	attacks: 4,	damage: "2 / 4", strength: "As User", cost: 0, category: "One handed close")
Equipment.create(name: 'Teeth/Claws',	range: "1",	attacks: 4,	damage: "1 / 3", strength: "As User", cost: 0, category: "One handed close")

Equipment.create(name: "Halberd" ,	range: "2",	attacks: 3,	damage: "2 / 4", strength: "As User +1", cost: 15, category:"Two handed close").abilities<< Ability.find_by_name("Damaging")
Equipment.create(name: "Flail" ,	range: "2",	attacks: 4,	damage: "1 / 5", strength: "As User +(2)", cost: 15, category:"Two handed close").abilities<< Ability.find_by_name("Flailing")
Equipment.create(name: "GreatSword/Axe/Hammer" , range: "1",	attacks: 3,	damage: "2 / 4", strength: "As User +2", cost: 20, category:"Two handed close").abilities<< Ability.find_by_name("Damaging")
				
Equipment.create(name: "Shortbow" ,	range: "3-16", attacks: 3, damage: "1 / 3", strength: "3", cost: 5, category: "Ranged")
Equipment.create(name: "Bow", range: "3-24", attacks: 3, damage: "1 / 3", strength: "3", cost: 10, category: "Ranged")
Equipment.create(name: "Longbow" , range: "3-30", attacks: 3, damage: "1 / 3", strength: "3", cost: 15, category: "Ranged")
Equipment.create(name: "Elf Bow" , range: "3-36", attacks: 3, damage: "1 / 4", strength: "3", cost: 35, category: "Ranged").abilities<< Ability.find_by_name("Penetrating")
Equipment.create(name: "Crossbow", range: "3-30", attacks: 3, damage: "2 / 4", strength: "4", cost: 25, category: "Ranged").abilities<< Ability.find_by_name("Move or Fire")
Equipment.create(name: "Repeater Crossbow" , range:"3-24",	attacks: 5,	damage: "1 / 3", strength: "3", cost: 40, category: "Ranged")

Equipment.create(name: "Pistol" , range: "6",	attacks: 3,	damage: "2 / 5", strength: "4", cost: 15, category: "Ranged").abilities << [Ability.find_by_name("Reload"), Ability.find_by_name("Penetrating")]
Equipment.create(name: "Duelling Pistol" , range: "10",	attacks: 3,	damage: "2 / 5", strength: "4", cost: 30 , category: "Ranged").abilities << [Ability.find_by_name("Reload"), Ability.find_by_name("Accurate"), Ability.find_by_name("Penetrating")]
Equipment.create(name: "Handgun" , range: "3-24", attacks: 3, damage: "2 / 5",  strength: "4", cost:30, category: "Ranged").abilities<< [Ability.find_by_name("Move or Fire"), Ability.find_by_name( "Reload"),  Ability.find_by_name("Penetrating")]


Equipment.create(name: "Blunderbuss" , range: "*", attacks: 1, damage: "Special", strength: "Special", cost: 30, category: "Ranged").abilities<< Ability.find_by_name("Blunderbuss")
Equipment.create(name: "Sling (short range)" , range: "3-9", attacks: 5, damage: "1 / 2",  strength: "3", cost: 3, category: "Ranged")
Equipment.create(name: "Sling (long range)" , range: "3-18", attacks: 3, damage: "1 / 2",  strength: "3", cost: 3, category: "Ranged")
Equipment.create(name: "Throwing Knife/Star" , range: "6",	attacks: 3,	 damage: "1 / 4",  strength: "As User", cost: 10, category: "Ranged")
					
Mutation.create(name: "Magic Resistant",cost: 20, description: "A demon protects the warrior, this gives them a 4+ chance to ignore the effects of any spell/prayer that may effect them")    
Mutation.create(name: "Great Claw",cost: 50, description: "The Warriors arm ends in a great claw, This counts as a halberd however it only requires one arm to use so the other is free to be equipped as normal")    
Mutation.create(name: "Cloven Hooves",cost:40, description: "The Warriors feed end in hooves/claws that grant extra speed or dexterity, +1 Movement or +1 Agility (choose at purchase)" )    
Mutation.create(name: "Tentacle limb",cost: 35, description: "One of the Warriors arms becomes a Tentacle, any close combat attack against the mutant loses 1 to its number of attacks (down to a minimum of 1), however the arm cannot be used to hold a weapon or shield")    
Mutation.create(name: "Blackblood",cost: 30, description: "When the Warrior suffers 3 or more wounds in a single round anyone in base contact with the Warrior rolls on the fall damage chart and takes that much damage (ignoring armour soak) as they are hit by the corrosive foulness")    
Mutation.create(name: "Spines",cost: 35, description: "Any Warrior in base contact with the mutant at the start of the mutants activation takes 1 automatic point of damage (armour soak applies)")    
Mutation.create(name: "Scorpion Tail",cost: 40, description: "The Warrior sprouts a chitinous scorpions tail, The Warrior always counts as being equipped with a Pick that attacks at strength 5, (strength 2 against those immune to poison), this does not require hands to use")    
Mutation.create(name: "Extra Arm",cost: 40, description: "The Warrior has been blessed with an entire extra arm! This allows it to be equipped as normal or allowing the warrior three hands worth of equipment at once. If a Possessed takes this their number of basic attacks goes up by +2")    
Mutation.create(name: "Hideous",cost:20, description: "The Warrior is so malformed or vile looking they now get the Fear Skill.")    