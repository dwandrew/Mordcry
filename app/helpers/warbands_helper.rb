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

end
