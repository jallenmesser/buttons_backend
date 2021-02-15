class Button < ApplicationRecord
    has_many :difficulty_buttons
    has_many :difficulties, through: :difficulty_buttons
    has_many :combination_buttons
    has_many :combinations, through: :combination_buttons
end
