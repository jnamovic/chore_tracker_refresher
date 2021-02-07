class Task < ApplicationRecord
    has_many(:chores)
    has_many :children, through: :chores

    validates_numericality_of :points, only_integer: :true 
    validates_presence_of(name)

    scope :alphabetical, -> { order(name) }
    scope :active, -> { where(active) }
end
