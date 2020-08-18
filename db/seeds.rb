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
Ability.create(name: "Blunderbuss", effect:	"When fired, draw a line 16” long and 1” wide, for anyone in this line roll a dice:
1-2: 1 point of damag
3-5: 3 points of damag
6: 5 points of damag
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

#Generic and oddment skills
Skill.create(name: "Leader", description: "Any friendly Warrior within 6\" of this Warrior may use its Bravery instead of their own as long as the Leader is not stunned", skill_category: "Generic" )
Skill.create(name: "Spellcaster", description: "This Warrior may cast spells, and can choose a single spell from the Appropriate list when recruited. Whenever they learn a new skill they can choose a new spell instead or reduce the difficultly to cast of one they already have by 1", skill_category: "Generic")
Skill.create(name: "Large", description: "This Warrior is very large and therefore does not have to take All Alone checks", skill_category: "Generic")
Skill.create(name: "Animal", description: "This Warrior has animalistic intelligence and therefore can never gain skills from experience or become a hero", skill_category: "Generic" )
Skill.create(name: "Fear", description: "This Warrior is intimidating or terrifying and so causes Fear", skill_category: "Generic" )
Skill.create(name: "Burn the Witch", description: "This Warrior hates Spellcasters in particular and gets Hatred toward anyone with the Spellcaster Skill", skill_category: "Generic")
Skill.create(name: "Prayers", description: "This Warrior may cast Prayers, and can choose a single Prayer from the Appropriate list when recruited. Whenever they learn a new skill they can choose a new Prayer instead or reduce the difficultly to cast of one they already have by 1", skill_category: "Generic")
Skill.create(name: "Fanatical", description: "This Warrior is driven by a fervour that means they do not need to take Fear or All Alone checks", skill_category: "Generic")
Skill.create(name: "Mutations", description: "This Warrior has been twisted by the cursed nature of their surroundings and when purchased can be given Mutations from the list.", skill_category: "Special" )
Skill.create(name: "Perfect Killer", description: "The Warrior has honed the killing arts, and now all attacks ignore 1 point of armour soak (in addition to any already ignored)", skill_category: "Combat" )
Skill.create(name: "No Need for Weapons", description: "The Warrior has no need or has no ability to use Weapons. They many not choose any nor be equipped with them, they can also not use shields or bucklers.", skill_category: "Generic" )
    
#Combat Skils 

Skill.create(name: "Swordsman", description: "This Warrior is so effective at parrying that if their parry equals to or beats the enemy hit its coutsn as a successful parry, now they can even parry a crit!", skill_category: "Combat")
Skill.create(name: "Strike to Injure", description: "The Warrior gets a +1 on any chart to take an enemy Out of Action or Stun them", skill_category: "Combat" )
Skill.create(name: "Combat Master", description: "The Warrior specialises at taking on multiple opponents, They get +1 to the number of attacks of close combat weapons as long as they are in base contact with 2 or more enemy models, they are also immune to All Alone tests", skill_category: "Combat" )
Skill.create(name: "Weapons Training", description: "The Warrior specialises at using any weapon available, so can use any close combat weapon found (not just those on the warbands equipment list)", skill_category: "Combat" )
Skill.create(name: "Step Aside", description: "The Warrior has a natural armour soak of 1 against close combat attacks, that stacks with other armours soak value, this skill stacks and can be taken up to two times", skill_category: "Combat" )
Skill.create(name: "Quick Shot", description: "The Warrior has become swift at firing their weapon, add +2 to the number of attacks of Ranged Weapons used by this Warrior", skill_category: "Ranged" )
Skill.create(name: "Eagle Eyes", description: "The Warrior has incredible keen sight, add +6\" to the range of any missile weapons used by this Warrior", skill_category: "Ranged" )
Skill.create(name: "Weapons Expert", description:  "The Warrior specialises at using any ranged weapon available, so can use any weapon found (not just those on the warbands equipment list)", skill_category: "Ranged" )
#Shooting Skills
Skill.create(name: "Nimble", description: "The Warrior can move and fire with weapons that have the Move or Fire Ability, this cannot be combined with Quick Shot", skill_category: "Ranged" )
Skill.create(name: "Trick Shooter", description: "Enemies do not get modifiers for cover when this Warrior has them in their sights, ignores all toughness bounuses for cover when using ranged weapons", skill_category: "Ranged" )
Skill.create(name: "Hunter", description: "The Warrior has become adept at reloading, all reload times are reduced by 1 action, cannot be combined with Quick Shot", skill_category: "Ranged" )
Skill.create(name: "Knife Fighter", description: "The Warrior is unrivalled at using thrown weapons to their advantage, they get +2 to the number of attacks and +1 Crit damage when using throwing knives/stars", skill_category: "Ranged" )
Skill.create(name: "Armours Bane", description: "All Ranged attacks from this Warrior ignore 1 point of Armour soak in addition to any other", skill_category: "Ranged" )
#Academic Skills
Skill.create(name: "Battle Tongue", description: "This skill can only be chosen by a Leader, they have excelled at using their commands to keep their warband in line, The Range of the Leader skill increases by 6\"", skill_category: "Academic" )
Skill.create(name: "Sorcery", description: "This skill can only be taken by Spellcasters, they get +1 to cast any spells", skill_category: "Academic" )
Skill.create(name: "Haggle", description: "Each time the Warrior visits the Merchant they can reduce the price of one item by 2D6 gold crowns (down to a minimum of 1gc)", skill_category: "Academic" )
Skill.create(name: "Arcane Lore", description: "Any Warrior with this skill can learn Lesser Magic if they own a tome of Magic (Witch Hunters and The Sisterhood can not learn this skill)", skill_category: "Academic" )
Skill.create(name: "Wyrdstone Hunter", description: "If this Warrior is helping search during the exploration phase, roll one extra dice and choose one to discard", skill_category: "Academic" )
Skill.create(name: "Warrior Wizard", description: "The Spellcaster has learnt to balance armour with their arcane skills and can now wear armour and cast spells", skill_category: "Academic" )
#Strength SKills
Skill.create(name: "Mighty Blow", description: "The Warrior knows how to use their strength to maximum effect and now has +1 Str to all close combat attacks", skill_category: "Strength" )
Skill.create(name: "Pit Fighter", description: "This Warrior has learned to fight in tight confines, whenever they fight with a roof overhead they get +1 Str and +1 to the number of attacks of their weapon", skill_category: "Strength" )
Skill.create(name: "Resilient", description: "This Warrior is as tough as old boots, deduct -1 Str from any close combat attacks directed at them, this does not effect armour soak", skill_category: "Strength" )
Skill.create(name: "Fearsome", description: "The Warriors reputation and physique have become so potent that he now causes Fear ", skill_category: "Strength" )
Skill.create(name: "Strongman", description: "The Warriors Strikes have become powered by such forced that both Damage and Crit Damage got up by +1 for any close combat weapon wielded by the Warrior", skill_category: "Strength" )
Skill.create(name: "Unstoppable Charge", description: "The Warriors charges have become incredibly potent, adding an additional +1 to the number of attacks and +1 to Str on a successful charge", skill_category: "Strength" )
Skill.create(name: "Robust", description: "The Warrior has trained in armour for long hours and can now move in it like a second skin, any Agility Penalty for Armour worn is reduced by 1", skill_category: "Strength" )
#Speed Skills
Skill.create(name: "Leap", description: "Through training or just skill the warrior can make incredible leaps, add +D6\" to any jump attempts by the Warrior", skill_category: "Speed" )
Skill.create(name: "Sprint", description: "The Warrior is incredible fleet of foot, add +1 to their Movement", skill_category: "Speed" )
Skill.create(name: "Acrobat", description: "The Warrior is agile and swift on their feet. They only need to take fall damage for each 6\" or Partial 6\" they fall, and can re-roll diving charge tests", skill_category: "Speed" )
Skill.create(name: "Jump Up", description: "The Warrior is swift to jump back on their feet when, they may ignore the effect of being Knocked Down, unless they are knocked down because of a successful save from a helmet", skill_category: "Speed" )
Skill.create(name: "Dodge", description: "The Warrior has a natural armour soak of 1 against shooting attacks, that stacks with other armours soak value, this skill stacks and can be taken up to two times", skill_category: "Speed" )
Skill.create(name: "Scale Sheer surfaces", description: "The Warrior is so skilled at climbing it barely causes them to pause, you can re-roll failed climbing checks and climb up to double your move for one action", skill_category: "Speed" )
# Skill.create(name: , description: , skill_category: "Speed" )

#Special Skills
# Skill.create(name: , description: , skill_category: "Ratmen Special" )
# Skill.create(name: , description: , skill_category: "Ratmen Special" )
# Skill.create(name: , description: , skill_category: "Ratmen Special" )
# Skill.create(name: , description: , skill_category: "Ratmen Special" )
# Skill.create(name: , description: , skill_category: "Sisterhood Special" )
# Skill.create(name: , description: , skill_category: "Sisterhood Special" )
# Skill.create(name: , description: , skill_category: "Sisterhood Special" )
# Skill.create(name: , description: , skill_category: "Sisterhood Special" )

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

Injury.create(name:"Leg Wound", description:"The warrior’s leg is broken. They suffer a -1 Movement characteristic penalty from now on.")
Injury.create(name:"Arm Wound", description: "Roll another D6:
1 = Severe arm wound. The arm must be amputated. The warrior may only use a single onehanded weapon from now on.
2-6 = Light wound. The warrior must miss the next game.
")
Injury.create(name:"Fearful", description: "The Warriors will has started to become broken, -1 Bravery characteristic penalty from now on.")
Injury.create(name: "Smashed Leg", description:"Roll another D6: 
1 = The warrior may not run any more but he may still charge. 
2-6 = The warrior misses the next game.
")
Injury.create(name:"Chest Wound", description:"The warrior has been badly wounded in the chest. They recover but are weakened by the injury, -1 Toughness characteristic penalty from now on.")
Injury.create(name:"Blinded in One Eye" , description:"The warrior survives but loses the sight in one eye; randomly determine which. They suffer -1 to attack rolls with Ranged weapons from now on (A 6 to hit still counts as a crit). If the warrior is subsequently blinded in their remaining good eye they must retire from the warband.")
Injury.create(name:"Old Battle Wound" , description:"The warrior survives, but their wound will prevent them from fighting if you roll a 1 on a D6 at the start of any battle. Roll at the start of each battle from now on.
")
Injury.create(name:"Nervous Condition", description:"The warrior’s nervous system has been damaged. Their Agility is permanently reduced by 1 from now on")
Injury.create(name:"Hand injury", description:"The warrior’s hand is badly injured. They suffer -1 to attack rolls with close combat weapons from now on (A 6 to hit still counts as a crit).")
Injury.create(name:"Deep Wound", description: "The warrior has suffered a serious wound and must miss the next D3 games while they are recovering. They may do nothing at all while recovering.")
Injury.create(name:"Bitter Enmity", description:"The warrior makes a full physical recovery, but is psychologically scarred by his experience. From now on the warrior hates the following (roll a D6):
D6 Result
1-3 The individual who caused the injury. If it was a Henchman, he hates the enemy leader instead
4 The leader of the warband that caused the injury
5 The entire warband of the warrior responsible for the injury
6 All warbands of that type."
)
Injury.create(name:"Hardened", description:"The warrior survives and becomes inured to the horrors of Mordheim. From now on they are immune to fear.")
Injury.create(name:"Horrible Scars", description:"The warrior causes fear from now on.")

