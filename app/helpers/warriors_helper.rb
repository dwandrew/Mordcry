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


    def which_stats
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
                Warrior.new(
                    name: "", 
                    warrior_type: "Assassin",
                    exp: 10,
                    move: 5,
                    strength: 4,
                    toughness: 3,
                    agility: 4,
                    wounds: 20,
                    bravery: 5,
                    skills: "",
                    number: 1,
                    warband_type: "Ratmen",
                    is_hero: true,
                    cost: 60) 
        when  "Brute"
                Warrior.new(
                    name: "", 
                    warrior_type: "Brute",
                    exp: "4",
                    move: 5,
                    strength: 4,
                    toughness: 3,
                    agility: 4,
                    wounds: 15,
                    bravery: 4,
                    skills: "",
                    number: 2,
                    warband_type: "Ratmen",
                    is_hero: true,
                    cost: 40 ) 
        when "Sorceror"
                Warrior.new(
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
                Warrior.new(
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
                Warrior.new(
                    name: "", 
                    warrior_type: "Henchrat",
                    exp: 0,
                    move: 5,
                    strength: 3,
                    toughness:3,
                    agility: 4,
                    wounds: 8,
                    bravery: 3,
                    skills: '',
                    number: 20,
                    warband_type: "Ratmen",
                    is_hero: false,
                    cost: 20) 
        when  'Giant Rat'
                Warrior.new(
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
                Warrior.new(
                    name: "", 
                    warrior_type: "Rat Monster",
                    exp: 0,
                    move: 5,
                    strength: 5,
                    toughness:4,
                    agility: 4,
                    wounds: 25,
                    bravery: 4,
                    skills: 'Fear, Animal',
                    number: 1,
                    warband_type: "Ratmen",
                    is_hero: false,
                    cost: 210)
        else   "Nothing" 
        end
    end


    def witchhunter_stats(name)
    when "Witch Hunter Captain" 
    when "Warrior Priest" 
    when "Witch Hunter" 
    when "Zealot" 
    when "Flaggellant" 
    when "War Dog" 
    end

    def mercenary_stats(name)
    end

    def cultist_stats(name)

    end




end

