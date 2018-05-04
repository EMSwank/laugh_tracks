class Comedian < ActiveRecord::Base
  validates :name, presence: :true
  validates :age, presence: :true

  def self.average_age_of_comedian
    average(:comedian_age)
  end

end
