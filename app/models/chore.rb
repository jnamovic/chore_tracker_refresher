class Chore < ApplicationRecord
    belongs_to(:child)
    belongs_to(:task)

    validates_date :due_date

    scope :alphabetical, -> { order(:name) }
    
    scope :chronological, -> { order(:due_date) }
    
    scope :active, -> { where(active) }

    scope :pending, ->{joins(:task)}
end
