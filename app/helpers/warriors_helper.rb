module WarriorsHelper

    def warrior_categories
        case @warband.warband_type 
        when 'Ratmen'
            ["Assassin", "Brute", "Sorceror", "Apprentice", "Henchrat", 'Giant Rat', "Rat Monster"]
        when 'Witch Hunters'
            ["Witch Hunter Captain", "Warrior Priest", "Witch Hunter", "Zealot", "Flaggellant", "War Dog" ]
        when "Mercenaries"
            ["Captain", "Champion", "Rookie", "Swordsman", "Sniper", "Soldier"]
        when "Chaos Cultits"
            ["Cult Leader", "Mutant", "Possessed", "DemonSoul", "Cultist", "Beastmen"]
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
        when "Chaos Cultits"
            cultist_stats(name)
        end
    end

    def ratmen_stats(name)
        case name
        when  "Assassin"
                Warrior.create(
                    name: "", 
                    warrior_type: "Assassin",
                    exp: 10,
                    move: 5,
                    strength: 4,
                    toughness: 3,
                    agility: 4,
                    wounds: 20,
                    bravery: 4,
                    skills: "",
                    number: 1,
                    warband_type: "Ratmen",
                    is_hero: true,
                    cost: 60) 
        when  "Brute"
                Warrior.create(
                    name: "", 
                    warrior_type: "Brute",
                    exp: "4",
                    move: 5,
                    strength: 4,
                    toughness: 3,
                    agility: 4,
                    wounds: 15,
                    bravery: 3,
                    skills: "",
                    number: 2,
                    warband_type: "Ratmen",
                    is_hero: true,
                    cost: 40 ) 
        when "Sorceror"
                Warrior.create(
                    name: "", 
                    warrior_type: "Sorceror",
                    exp: "6",
                    move: 5,
                    strength: 3,
                    toughness: 3,
                    agility: 4,
                    wounds: 12,
                    bravery: 3,
                    skills: "Spellcaster",
                    number: 1,
                    warband_type: "Ratmen",
                    is_hero: true,
                    cost: 45) 
        when  "Apprentice"
                Warrior.create(
                    name: "", 
                    warrior_type: "Apprentice",
                    exp: 0,
                    move: 5,
                    strength: 2,
                    toughness: 3,
                    agility: 4,
                    wounds: 10,
                    bravery: 3,
                    skills: "",
                    number: 2,
                    warband_type: "Ratmen",
                    is_hero: true,
                    cost: 20) 
        when  "Henchrat"
                Warrior.create(
                    name: "", 
                    warrior_type: "Henchrat",
                    exp: 0,
                    move: 5,
                    strength: 3,
                    toughness:3,
                    agility: 4,
                    wounds: 8,
                    bravery: 2,
                    skills: '',
                    number: 20,
                    warband_type: "Ratmen",
                    is_hero: false,
                    cost: 20) 
        when  'Giant Rat'
                Warrior.create(
                    name: '', 
                    warrior_type: 'Giant Rat',
                    exp: 0,
                    move: 6,
                    strength: 2,
                    toughness: 2,
                    agility: 4,
                    wounds: 6,
                    bravery: 2,
                    skills: "Animal",
                    number: 20,
                    warband_type: "Ratmen",
                    is_hero: false,
                    cost: 15) 
        when  "Rat Monster"
                Warrior.create(
                    name: "", 
                    warrior_type: "Rat Monster",
                    exp: 0,
                    move: 5,
                    strength: 5,
                    toughness:4,
                    agility: 4,
                    wounds: 25,
                    bravery: 4,
                    skills: 'Fear, Animal, Large',
                    number: 1,
                    warband_type: "Ratmen",
                    is_hero: false,
                    cost: 210)
        else   "Nothing" 
        end
    end


    def witchhunter_stats(name)
        case name    
            when "Witch Hunter Captain" 
                Warrior.create(
                    name: "", 
                    warrior_type: "Witch Hunter Captain",
                    exp: 10,
                    move: 4,
                    strength: 3,
                    toughness: 3,
                    agility: 3,
                    wounds: 20,
                    bravery: 5,
                    skills: "Burn the Witch, Leader",
                    number: 1,
                    warband_type: "Witch Hunters",
                    is_hero: true,
                    cost: 60)
            when "Warrior Priest" 
                Warrior.create(
                    name: "", 
                    warrior_type: "Warrior Priest",
                    exp: 8,
                    move: 4,
                    strength: 3,
                    toughness: 3,
                    agility: 3,
                    wounds: 12,
                    bravery: 5,
                    skills: "Prayers",
                    number: 1,
                    warband_type: "Witch Hunters",
                    is_hero: true,
                    cost: 40)
            when "Witch Hunter" 
                Warrior.create(
                    name: "", 
                    warrior_type: "Witch Hunter" ,
                    exp: 4,
                    move: 4,
                    strength: 3,
                    toughness: 3,
                    agility: 3,
                    wounds: 12,
                    bravery: 4,
                    skills: "",
                    number: 3,
                    warband_type: "Witch Hunters",
                    is_hero: true,
                    cost:25)
            when "Zealot" 
                Warrior.create(
                    name: "", 
                    warrior_type: "Zealot",
                    exp: 0,
                    move: 4,
                    strength: 3,
                    toughness: 3,
                    agility: 3,
                    wounds: 8,
                    bravery: 4,
                    skills: "",
                    number: 10,
                    warband_type: "Witch Hunters",
                    is_hero: false,
                    cost: 20)
            when "Flaggellant"
                Warrior.create(
                    name: "", 
                    warrior_type: "Flaggellant",
                    exp: 0,
                    move: 4,
                    strength: 4,
                    toughness: 4,
                    agility: 3,
                    wounds: 12,
                    bravery: 5,
                    skills: "Fanatical",
                    number: 5,
                    warband_type: "Witch Hunters",
                    is_hero: false,
                    cost: 40)
            when "War Dog"
                Warrior.create(
                name: "", 
                warrior_type: "War Dog",
                exp: 0,
                move: 5,
                strength: 4,
                toughness: 3,
                agility: 4,
                wounds: 8,
                bravery: 3,
                skills: "Animal",
                number: 5,
                warband_type: "Witch Hunters",
                is_hero: false,
                cost: 20) 
        end
    
    
    end

    def mercenary_stats(name)
        case name    
            when"Captain"
                Warrior.create(
                name: "", 
                warrior_type: "Captain",
                exp: 10,
                move: 4,
                strength: 3,
                toughness: 3,
                agility: 4,
                wounds: 20,
                bravery: 5,
                skills: "Leader",
                number: 1,
                warband_type: "Mercenaries",
                is_hero: true,
                cost: 60)
            when"Champion"
                Warrior.create(
                name: "", 
                warrior_type: "Champion",
                exp: 4,
                move: 4,
                strength: 3,
                toughness: 3,
                agility: 3,
                wounds: 12,
                bravery: 5,
                skills: "",
                number: 2,
                warband_type: "Mercenaries",
                is_hero: true,
                cost: 35)
            when"Rookie"
                Warrior.create(
                name: "", 
                warrior_type: "Rookie",
                exp: 10,
                move: 4,
                strength: 2,
                toughness: 3,
                agility: 3,
                wounds: 10,
                bravery: 3,
                skills: "",
                number: 2,
                warband_type: "Mercenaries",
                is_hero: true,
                cost: 15)
            when"Swordsman"
                Warrior.create(
                name: "", 
                warrior_type: "Swordsman",
                exp: 0,
                move: 4,
                strength: 3,
                toughness: 3,
                agility: 3,
                wounds: 8,
                bravery: 3,
                skills: "Swordsman",
                number: 5,
                warband_type: "Mercenaries",
                is_hero: false,
                cost: 35)
            when"Sniper"
                Warrior.create(
                name: "", 
                warrior_type: "Sniper",
                exp: 0,
                move: 4,
                strength: 4,
                toughness: 3,
                agility: 3,
                wounds: 8,
                bravery: 3,
                skills: "",
                number: 7,
                warband_type: "Mercenaries",
                is_hero: false,
                cost: 25)            
            when"Soldier"
                Warrior.create(
                name: "", 
                warrior_type: "Soldier",
                exp: 0,
                move: 4,
                strength: 3,
                toughness: 3,
                agility: 3,
                wounds: 8,
                bravery: 3,
                skills: "",
                number: 10,
                warband_type: "Mercenaries",
                is_hero: false,
                cost: 25)
            end
    end

    def cultist_stats(name)
        case name
        when "Cult Leader"
            Warrior.create(
            name: "", 
            warrior_type: "Cult Leader",
            exp: 10,
            move: 4,
            strength: 3,
            toughness: 3,
            agility: 3,
            wounds: 20,
            bravery: 5,
            skills: "Leader, SpellCaster",
            number: 1,
            warband_type: "Chaos Cultits",
            is_hero: true,
            cost: 70)
        when "Mutant"  
            Warrior.create(
            name: "", 
            warrior_type: "Mutant" ,
            exp: 0,
            move: 4,
            strength: 3,
            toughness: 3,
            agility: 4,
            wounds: 12,
            bravery: 3,
            skills: "Mutations",
            number: 2,
            warband_type: "Chaos Cultits",
            is_hero: true,
            cost: 35)                
        when "Possessed" 
            Warrior.create(
            name: "", 
            warrior_type: "Possessed" ,
            exp: 4,
            move: 4,
            strength: 4,
            toughness: 4,
            agility: 4,
            wounds: 18,
            bravery: 5,
            skills: "Fear, Mutations",
            number: 2,
            warband_type: "Chaos Cultits",
            is_hero: true,
            cost: 90)
        when "DemonSoul"
            Warrior.create(
            name: "", 
            warrior_type: "DemonSoul",
            exp: 0,
            move: 4,
            strength: 4,
            toughness: 3,
            agility: 3,
            wounds: 10,
            bravery: 4,
            skills: "No Fear",
            number: 1,
            warband_type: "Chaos Cultits",
            is_hero: false,
            cost: 35)
        when "Cultist"
            Warrior.create(
            name: "", 
            warrior_type: "Cultist",
            exp: 0,
            move: 4,
            strength: 3,
            toughness: 3,
            agility: 3,
            wounds: 8,
            bravery: 3,
            skills: "",
            number: 10,
            warband_type: "Chaos Cultits",
            is_hero: false,
            cost: 25)
        when "Beastmen"
            Warrior.create(
            name: "", 
            warrior_type: "Beastmen",
            exp: 0,
            move: 4,
            strength: 3,
            toughness: 4,
            agility: 4,
            wounds: 15,
            bravery: 5,
            skills: "",
            number: 3,
            warband_type: "Chaos Cultits",
            is_hero: false,
            cost: 45)
        end
    end

    




end

