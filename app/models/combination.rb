class Combination < ApplicationRecord
    has_many :cominations_buttons
    has_many :buttons, through: :cominations_buttons
    has_many :user_cominations
    has_many :users, through: :user_cominations
end
