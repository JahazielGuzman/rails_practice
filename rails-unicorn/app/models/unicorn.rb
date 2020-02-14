class Unicorn < ApplicationRecord
    has_many :quests
    has_many :leprechauns, through: :quests

    validates :name, presence: true, uniqueness: true, length: {maximum: 10}
    validates :shoe, presence: true
    validates :horn, presence: true
    validate :name_cannot_begin_with_x 

    def name_cannot_begin_with_x
        if self.name[0].downcase == "x"
            self.errors.add(:name, "cannot begin with X")
        end
    end
end
