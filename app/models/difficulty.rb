class Difficulty < ApplicationRecord
    has_many :difficulty_buttons
    has_many :buttons, through: :difficulty_buttons
end
