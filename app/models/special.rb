class Special < ActiveRecord::Base
    def self.average_age_of_comedian
        average(:comedian_age)
    end

end
