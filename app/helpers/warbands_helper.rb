module WarbandsHelper

    def rating_calc(warband)
        total_exp = 0 
        warband.warriors.each {|w| total_exp += w.exp}
        is_large =0 
        warband.warriors.each do |w|
            w.skill.each {|s| is_large +=1 if s.name == 'Large'}
        end
        warband_rating = (warband.warriors.length*5) + total_exp + is_large*15
        warband.warband_rating = warband_rating
        warband.save
        warband.warband_rating
    end

    def shards(warband)
        warband.wyrdstone_shards ? warband.wyrdstone_shards : 0
    end

    def check_natural_weapons(warrior)
        if warrior.warrior_type == 'Giant Rat' || warrior.warrior_type == "War Dog" || warrior.warrior_type == "Dire Wolf" || warrior.warrior_type == "Zombie" || warrior_type.warrior_type == "Ghoul"
            warrior.equipment << Equipment.find_by_name('Teeth/Claws')
        elsif warrior.warrior_type == 'Rat Monster' || warrior.warrior_type == "Possessed"
            warrior.equipment << Equipment.find_by_name('Natural Weapons')
        end
        warrior
    end

end
