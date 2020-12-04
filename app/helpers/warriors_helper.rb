module WarriorsHelper

    def warrior_categories
        case @warband.warband_type 
        when 'Ratmen'
            ["Assassin", "Brute", "Sorceror", "Apprentice", "Henchrat", 'Giant Rat', "Rat Monster"]
        when 'Witch Hunters'
            ["Witch Hunter Captain", "Warrior Priest", "Witch Hunter", "Zealot", "Flaggellant", "War Dog" ]
        when "Mercenaries"
            ["Captain", "Champion", "Rookie", "Swordsman", "Sniper", "Soldier"]
        when "Chaos Cultists"
            ["Cult Leader", "Mutant", "Possessed", "DemonSoul", "Cultist", "Beastmen"]
        when 'The Sisterhood'
            ["Mother Superior", "Sister Superior", "Auger", "Sister", "Novice"]
        when 'The Undead'
            ["Vampire", "Necromancer", "Dreg", "Zombie", "Ghoul", "Dire Wolf"]
        else 
            "No Warband of that name"
        end
        
    end


    def which_stats(name)
        case @warband.warband_type
        when 'Ratmen'
            ratmen_stats(name)
        when 'Witch Hunters'
            witchhunter_stats(name)
        when "Mercenaries"
            mercenary_stats(name)
        when "Chaos Cultists"
            cultist_stats(name)
        when "The Sisterhood"
            sisterhood_stats(name)
        when 'The Undead'
            undead_stats(name)
        end

    end

    def ratmen_stats(name)
        case name
        when  "Assassin"
               w= Warrior.create(
                    name: "", 
                    warrior_type: "Assassin",
                    exp: 10,
                    move: 5,
                    strength: 4,
                    toughness: 3,
                    agility: 4,
                    wounds: 20,
                    bravery: 4,
                    number: 1,
                    warband_type: "Ratmen",
                    is_hero: true,
                    skills_list: "Combat, Shooting, Academic, Strength, Speed, Skaven_Special",
                    cost: 60)
                    w.equipment_list= equipment_lists(w)
                    w.skill << Skill.find_by_name('Leader')
                    w.skill << Skill.find_by_name('Perfect Killer')
                    w
        when  "Brute"
                w= Warrior.create(
                    name: "", 
                    warrior_type: "Brute",
                    exp: "4",
                    move: 5,
                    strength: 4,
                    toughness: 3,
                    agility: 4,
                    wounds: 15,
                    bravery: 3,
                    number: 2,
                    warband_type: "Ratmen",
                    is_hero: true,
                    skills_list: "Combat, Shooting, Strength, Speed, Skaven_Special",
                    cost: 40 )
                    w.equipment_list= equipment_lists(w)
                    w
        when "Sorceror"
                w= Warrior.create(
                    name: "", 
                    warrior_type: "Sorceror",
                    exp: "6",
                    move: 5,
                    strength: 3,
                    toughness: 3,
                    agility: 4,
                    wounds: 12,
                    bravery: 3,
                    number: 1,
                    warband_type: "Ratmen",
                    is_hero: true,
                    skills_list: "Academic, Speed, Skaven_Special",
                    cost: 45)
                    w.equipment_list= equipment_lists(w)
                    w.skill << Skill.find_by_name('Spellcaster')
                    w 
        when  "Apprentice"
                w= Warrior.create(
                    name: "", 
                    warrior_type: "Apprentice",
                    exp: 0,
                    move: 5,
                    strength: 2,
                    toughness: 3,
                    agility: 4,
                    wounds: 10,
                    bravery: 3,
                    number: 2,
                    warband_type: "Ratmen",
                    is_hero: true,
                    skills_list: "Combat, Shooting, Speed, Skaven_Special",
                    cost: 20)
                    w.equipment_list= equipment_lists(w)
                    w
        when  "Henchrat"
                w= Warrior.create(
                    name: "", 
                    warrior_type: "Henchrat",
                    exp: 0,
                    move: 5,
                    strength: 3,
                    toughness:3,
                    agility: 4,
                    wounds: 8,
                    bravery: 2,
                    number: 20,
                    warband_type: "Ratmen",
                    is_hero: false,
                    cost: 20)
                    w.equipment_list= equipment_lists(w)
                    w 
        when  'Giant Rat'
                w= Warrior.create(
                    name: '', 
                    warrior_type: 'Giant Rat',
                    exp: 0,
                    move: 6,
                    strength: 2,
                    toughness: 2,
                    agility: 4,
                    wounds: 6,
                    bravery: 2,
                    number: 20,
                    warband_type: "Ratmen",
                    is_hero: false,
                    cost: 15)
                    w.equipment_list= equipment_lists(w)
                    w.skill << Skill.find_by_name('Animal')
                    w.skill << Skill.find_by_name('No Need for Weapons')
                    w 
        when  "Rat Monster"
               w=  Warrior.create(
                    name: "", 
                    warrior_type: "Rat Monster",
                    exp: 0,
                    move: 5,
                    strength: 5,
                    toughness:4,
                    agility: 4,
                    wounds: 30,
                    bravery: 4,
                    # skills: 'Fear, Animal, Large',
                    number: 1,
                    warband_type: "Ratmen",
                    is_hero: false,
                    cost: 210)
                    w.skill << Skill.find_by_name('Fear')
                    w.skill << Skill.find_by_name('Large')
                    w.skill << Skill.find_by_name('Animal')
                    w.skill << Skill.find_by_name('No Need for Weapons')
                    w.equipment_list= equipment_lists(w)
                    w
        else   "Nothing" 
        end
    end


    def witchhunter_stats(name)
        case name    
            when "Witch Hunter Captain" 
                w = Warrior.create(
                    name: "", 
                    warrior_type: "Witch Hunter Captain",
                    exp: 10,
                    move: 4,
                    strength: 3,
                    toughness: 3,
                    agility: 3,
                    wounds: 20,
                    bravery: 5,
                    # skills: "Burn the Witch, Leader",
                    number: 1,
                    warband_type: "Witch Hunters",
                    is_hero: true,
                    skills_list: "Combat, Shooting, Academic, Strength, Speed, Witch_Hunter_Special",
                    cost: 60)
                    w.skill << Skill.find_by_name('Leader')
                    w.skill << Skill.find_by_name('Burn the Witch')
                    w.equipment_list= equipment_lists(w)
                    w
            when "Warrior Priest" 
                w= Warrior.create(
                    name: "", 
                    warrior_type: "Warrior Priest",
                    exp: 8,
                    move: 4,
                    strength: 3,
                    toughness: 3,
                    agility: 3,
                    wounds: 12,
                    bravery: 5,
                    # skills: "Prayers",
                    number: 1,
                    warband_type: "Witch Hunters",
                    skills_list: "Combat, Academic, Strength, Witch_Hunter_Special",
                    is_hero: true,
                    cost: 40)
                    w.skill << Skill.find_by_name('Prayers')
                    w.equipment_list= equipment_lists(w)
                    w
            when "Witch Hunter" 
                w= Warrior.create(
                    name: "", 
                    warrior_type: "Witch Hunter" ,
                    exp: 4,
                    move: 4,
                    strength: 3,
                    toughness: 3,
                    agility: 3,
                    wounds: 12,
                    bravery: 4,
                    # skills: "Burn the Witch",
                    number: 3,
                    warband_type: "Witch Hunters",
                    skills_list: "Combat, Shooting, Academic, Speed, Witch_Hunter_Special",
                    is_hero: true,
                    cost:25)
                    w.skill << Skill.find_by_name('Burn the Witch')
                    w.equipment_list= equipment_lists(w)
                    w
            when "Zealot" 
                w= Warrior.create(
                    name: "", 
                    warrior_type: "Zealot",
                    exp: 0,
                    move: 4,
                    strength: 3,
                    toughness: 3,
                    agility: 3,
                    wounds: 8,
                    bravery: 4,
                    number: 10,
                    warband_type: "Witch Hunters",
                    is_hero: false,
                    cost: 20)
                    w.equipment_list= equipment_lists(w)
                    w
            when "Flaggellant"
                w= Warrior.create(
                    name: "", 
                    warrior_type: "Flaggellant",
                    exp: 0,
                    move: 4,
                    strength: 4,
                    toughness: 4,
                    agility: 3,
                    wounds: 12,
                    bravery: 5,
                    # skills: "Fanatical",
                    number: 5,
                    warband_type: "Witch Hunters",
                    is_hero: false,
                    cost: 40)
                    w.skill << Skill.find_by_name('Fanatical')
                    w.equipment_list= equipment_lists(w)
                    w
            when "War Dog"
                w = Warrior.create(
                name: "", 
                warrior_type: "War Dog",
                exp: 0,
                move: 5,
                strength: 4,
                toughness: 3,
                agility: 4,
                wounds: 8,
                bravery: 3,
                number: 5,
                warband_type: "Witch Hunters",
                is_hero: false,
                cost: 20) 
                w.skill << Skill.find_by_name('Animal')
                w.skill << Skill.find_by_name('No Need for Weapons')
                w.equipment_list= equipment_lists(w)
                w
        end
    
    
    end

    def mercenary_stats(name)
        case name    
            when"Captain"
               w= Warrior.create(
                name: "", 
                warrior_type: "Captain",
                exp: 10,
                move: 4,
                strength: 3,
                toughness: 3,
                agility: 4,
                wounds: 20,
                bravery: 5,
                # skills: "Leader",
                number: 1,
                warband_type: "Mercenaries",
                is_hero: true,
                skills_list: "Combat, Shooting, Academic, Strength, Speed, Mercenary_Special",
                cost: 60)
                w.skill << Skill.find_by_name('Leader')
                w.equipment_list= equipment_lists(w)
                w
            when"Champion"
                w= Warrior.create(
                name: "", 
                warrior_type: "Champion",
                exp: 4,
                move: 4,
                strength: 3,
                toughness: 3,
                agility: 3,
                wounds: 12,
                bravery: 5,
                number: 2,
                warband_type: "Mercenaries",
                skills_list: "Combat, Shooting, Strength, Mercenary_Special",
                is_hero: true,
                cost: 35)
                w.equipment_list= equipment_lists(w)
                w
            when"Rookie"
                w= Warrior.create(
                name: "", 
                warrior_type: "Rookie",
                exp: 10,
                move: 4,
                strength: 2,
                toughness: 3,
                agility: 3,
                wounds: 10,
                bravery: 3,
                number: 2,
                warband_type: "Mercenaries",
                skills_list: "Combat, Shooting, Speed, Mercenary_Special",
                is_hero: true,
                cost: 15)
                w.equipment_list= equipment_lists(w)
                w
            when"Swordsman"
                w= Warrior.create(
                name: "", 
                warrior_type: "Swordsman",
                exp: 0,
                move: 4,
                strength: 3,
                toughness: 3,
                agility: 3,
                wounds: 8,
                bravery: 3,
                number: 5,
                warband_type: "Mercenaries",
                is_hero: false,
                cost: 35)
                w.skill << Skill.find_by_name('Swordsman')
                w.equipment_list= equipment_lists(w)
                w
            when"Sniper"
                w= Warrior.create(
                name: "", 
                warrior_type: "Sniper",
                exp: 0,
                move: 4,
                strength: 4,
                toughness: 3,
                agility: 3,
                wounds: 8,
                bravery: 3,
                number: 7,
                warband_type: "Mercenaries",
                is_hero: false,
                cost: 25)     
                w.equipment_list= equipment_lists(w)
                w       
            when"Soldier"
                w= Warrior.create(
                name: "", 
                warrior_type: "Soldier",
                exp: 0,
                move: 4,
                strength: 3,
                toughness: 3,
                agility: 3,
                wounds: 8,
                bravery: 3,
                number: 10,
                warband_type: "Mercenaries",
                is_hero: false,
                cost: 25)
                w.equipment_list= equipment_lists(w)
                w
            end
    end

    def cultist_stats(name)
        case name
        when "Cult Leader"
           w= Warrior.create(
            name: "", 
            warrior_type: "Cult Leader",
            exp: 10,
            move: 4,
            strength: 3,
            toughness: 3,
            agility: 3,
            wounds: 20,
            bravery: 5,
            # skills: "Leader, SpellCaster",
            number: 1,
            warband_type: "Chaos Cultists",
            is_hero: true,
            skills_list: "Combat, Academic, Strength, Speed, Chaos_Cultist_Special",
            cost: 70)
            w.skill << Skill.find_by_name('Leader')
            w.skill << Skill.find_by_name('Spellcaster')
            w.equipment_list= equipment_lists(w)
            w
        when "Mutant"  
            w= Warrior.create(
            name: "", 
            warrior_type: "Mutant" ,
            exp: 0,
            move: 4,
            strength: 3,
            toughness: 3,
            agility: 4,
            wounds: 12,
            bravery: 3,
            # skills: "Mutations",
            number: 2,
            warband_type: "Chaos Cultists",
            skills_list: "Combat, Speed, Chaos_Cultist_Special",
            is_hero: true,
            cost: 35)
            w.skill << Skill.find_by_name('Mutations')
            w.equipment_list= equipment_lists(w)
            w                
        when "Possessed" 
            w= Warrior.create(
            name: "", 
            warrior_type: "Possessed" ,
            exp: 4,
            move: 4,
            strength: 4,
            toughness: 4,
            agility: 4,
            wounds: 18,
            bravery: 5,
            # skills: "Fear, Mutations",
            number: 2,
            warband_type: "Chaos Cultists",
            skills_list: "Combat, Strength, Speed, Chaos_Cultist_Special",
            is_hero: true,
            cost: 90)
            w.skill << Skill.find_by_name('Mutations')
            w.skill << Skill.find_by_name('Fear')
            w.skill << Skill.find_by_name('No Need for Weapons')
            w.equipment_list= equipment_lists(w)
            w
        when "DemonSoul"
            w= Warrior.create(
            name: "", 
            warrior_type: "DemonSoul",
            exp: 0,
            move: 4,
            strength: 4,
            toughness: 3,
            agility: 3,
            wounds: 10,
            bravery: 4,
            # skills: "Fanatical",
            number: 1,
            warband_type: "Chaos Cultists",
            is_hero: false,
            cost: 35)
            w.skill << Skill.find_by_name('Fanatical')
            w.equipment_list= equipment_lists(w)
            w
        when "Cultist"
            w= Warrior.create(
            name: "", 
            warrior_type: "Cultist",
            exp: 0,
            move: 4,
            strength: 3,
            toughness: 3,
            agility: 3,
            wounds: 8,
            bravery: 3,
            
            number: 10,
            warband_type: "Chaos Cultists",
            is_hero: false,
            cost: 25)
            w.equipment_list= equipment_lists(w)
            w
        when "Beastmen"
            w = Warrior.create(
            name: "", 
            warrior_type: "Beastmen",
            exp: 0,
            move: 4,
            strength: 3,
            toughness: 4,
            agility: 4,
            wounds: 15,
            bravery: 5,
            
            number: 3,
            warband_type: "Chaos Cultists",
            is_hero: false,
            cost: 45)
            w.equipment_list= equipment_lists(w)
            w
        end
    end

    def sisterhood_stats(name)
        case name    
            when "Mother Superior" 
                w = Warrior.create(
                    name: "", 
                    warrior_type: "Mother Superior",
                    exp: 10,
                    move: 4,
                    strength: 3,
                    toughness: 3,
                    agility: 3,
                    wounds: 20,
                    bravery: 5,
                    number: 1,
                    warband_type: "The Sisterhood",
                    is_hero: true,
                    skills_list: "Combat, Academic, Strength, Speed, Sisterhood_Special",
                    cost: 60)
                    w.skill << Skill.find_by_name('Leader')
                    w.skill << Skill.find_by_name('Prayers')
                    w.equipment_list= equipment_lists(w)
                    w
            when "Sister Superior" 
                w= Warrior.create(
                    name: "", 
                    warrior_type: "Sister Superior",
                    exp: 4,
                    move: 4,
                    strength: 3,
                    toughness: 3,
                    agility: 3,
                    wounds: 12,
                    bravery: 5,
                    number: 3,
                    warband_type: "The Sisterhood",
                    skills_list: "Combat, Academic, Strength, Speed, Sisterhood_Special",
                    is_hero: true,
                    cost: 35)
                    w.equipment_list= equipment_lists(w)
                    w
            when "Auger" 
                w= Warrior.create(
                    name: "", 
                    warrior_type: "Auger" ,
                    exp: 4,
                    move: 4,
                    strength: 2,
                    toughness: 3,
                    agility: 3,
                    wounds: 10,
                    bravery: 4,
                    number: 1,
                    warband_type: "The Sisterhood",
                    skills_list: "Academic, Speed, Sisterhood_Special",
                    is_hero: true,
                    cost:25)
                    w.skill << Skill.find_by_name('Blessed Sight')
                    w.equipment_list= equipment_lists(w)
                    w
            when "Sister" 
                w= Warrior.create(
                    name: "", 
                    warrior_type: "Sister",
                    exp: 0,
                    move: 4,
                    strength: 3,
                    toughness: 3,
                    agility: 3,
                    wounds: 10,
                    bravery: 4,
                    number: 10,
                    warband_type: "The Sisterhood",
                    is_hero: false,
                    cost: 25)
                    w.equipment_list= equipment_lists(w)
                    w
            when "Novice"
                w= Warrior.create(
                    name: "", 
                    warrior_type: "Novice",
                    exp: 0,
                    move: 4,
                    strength: 2,
                    toughness: 3,
                    agility: 3,
                    wounds: 8,
                    bravery: 3,
                    # skills: "Fanatical",
                    number: 7,
                    warband_type: "The Sisterhood",
                    is_hero: false,
                    cost: 15)
                    w.equipment_list= equipment_lists(w)
                    w
        end
    end

    def warrior_cost(warrior)
        cost = 0
        warrior.equipment.each {|e| cost+= e.cost}
        warrior.armour.each {|a| cost+= a.cost}
        warrior.mutations.each {|m| cost += m.cost}
        cost += warrior.cost
        warrior.cost = cost
    end

    def equipment_lists(warrior)
        case warrior.warband_type 
        when 'Ratmen'
            case warrior.warrior_type
                when "Assassin"
                    "Dagger, Sword, Flail, Spear, Halberd, Weeping Blades, Fighting Claws, Sling, Throwing Knife/Star, Blowpipe, Warplock Pistol" 
                when  "Brute"
                    "Dagger, Sword, Flail, Spear, Halberd, Weeping Blades, Fighting Claws, Sling, Throwing Knife/Star, Blowpipe, Warplock Pistol" 
                when "Sorceror"
                    "Dagger, Sword, Flail, Spear, Halberd, Weeping Blades, Fighting Claws, Sling, Throwing Knife/Star, Blowpipe, Warplock Pistol"
                when "Apprentice" 
                    "Dagger, Mace/Hammer/Club, Sword, Spear, Sling"
                when "Henchrat"
                    "Dagger, Mace/Hammer/Club, Sword, Spear, Sling"
                when 'Giant Rat'
                    "None"
                when "Rat Monster"
                    "None"
            end
        when 'Witch Hunters'
            case warrior.warrior_type
                when "Witch Hunter Captain"
                    "Dagger, Mace/Hammer/Club, Axe/Pick, Sword, Double-Handed Weapon, Crossbow, Pistol"
                when "Warrior Priest"
                    "Dagger, Mace/Hammer/Club, Axe/Pick, Sword, Double-Handed Weapon, Crossbow, Pistol" 
                when "Witch Hunter"
                    "Dagger, Mace/Hammer/Club, Axe/Pick, Sword, Double-Handed Weapon, Crossbow, Pistol" 
                when "Zealot"
                    "Dagger, Mace/Hammer/Club, Axe/Pick, Sword, Double-Handed Weapon, Spear, Bow, Shortbow" 
                when "Flaggellant"
                    "Flail, Morningstar, Double-Handed Weapon" 
                when "War Dog"
                    "none"
            end
             
            
        when "Mercenaries"
            case warrior.warrior_type
                when "Captain"
                    "Dagger, Mace/Hammer/Club, Axe/Pick, Sword, MorningStar, Double-Handed Weapon, Spear, Halberd, Crossbow, Pistol, Duelling Pistol, Bow" 
                when "Champion"
                    "Dagger, Mace/Hammer/Club, Axe/Pick, Sword, MorningStar, Double-Handed Weapon, Spear, Halberd, Crossbow, Pistol, Duelling Pistol, Bow"  
                when "Rookie"
                    "Dagger, Mace/Hammer/Club, Axe/Pick, Sword, MorningStar, Double-Handed Weapon, Spear, Halberd, Crossbow, Pistol, Duelling Pistol, Bow"  
                when "Swordsman"
                    "Dagger, Mace/Hammer/Club, Axe/Pick, Sword, MorningStar, Double-Handed Weapon, Spear, Halberd, Crossbow, Pistol, Duelling Pistol, Bow"  
                when "Sniper"
                    "Dagger, Mace/Hammer/Club, Axe/Pick, Sword, Crossbow, Pistol, Bow, Longbow, Blunderbuss, Handgun, Hunting Rifle" 
                when "Soldier"
                    "Dagger, Mace/Hammer/Club, Axe/Pick, Sword, MorningStar, Double-Handed Weapon, Spear, Halberd, Crossbow, Pistol, Duelling Pistol, Bow" 
            end
            

            
        when "Chaos Cultists"
            case warrior.warrior_type
                when "Cult Leader"
                    "Dagger, Mace/Hammer/Club, Axe/Pick, Sword, Double-Handed Weapon, Spear, Bow, Shortbow" 
                when "Mutant"
                    "Dagger, Mace/Hammer/Club, Axe/Pick, Sword, Double-Handed Weapon, Spear, Bow, Shortbow"  
                when "Possessed" 
                    "None"
                when "DemonSoul"
                    "Dagger, Mace/Hammer/Club, Axe/Pick, Sword, Double-Handed Weapon, Flail"  
                when "Cultist"
                    "Dagger, Mace/Hammer/Club, Axe/Pick, Sword, Double-Handed Weapon, Spear, Bow, Shortbow" 
                when "Beastmen"
                    "Dagger, Mace/Hammer/Club, Axe/Pick, Sword, Double-Handed Weapon, Flail"  
            end
            
        when "The Sisterhood"
            "Dagger, Mace/Hammer/Club, Blessed Warhammer, Steel Whip, Double-Handed Weapon, Flail, Sling" 
            
        else 
            "No Warband of that name"
        end

    end




end

