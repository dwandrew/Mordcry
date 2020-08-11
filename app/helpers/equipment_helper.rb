module EquipmentHelper

    def close_one_handed(equipment)
         equipment.select {|e| e.category == "One handed close"}
    end

    def close_two_handed(equipment)
        equipment.select {|e| e.category == "Two handed close"}
    end

    def ranged(equipment)
        equipment.select {|e| e.category == "Ranged"}
    end


end
