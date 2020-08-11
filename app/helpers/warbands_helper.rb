module WarbandsHelper

    def rating_calc(warband)
        total_exp = 0 
        warband.warriors.each {|w| total_exp += w.exp}
        is_large = warband.warriors.select {|w| w.skills.include? ('Large')}
        warband_rating = (warband.warriors.length*5) + total_exp + is_large.length*15
        warband.warband_rating = warband_rating
        warband.save
        warband.warband_rating
    end

    def shards(warband)
        warband.wyrdstone_shards ? warband.wyrdstone_shards : 0
    end

end
