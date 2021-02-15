class User < ApplicationRecord
    has_many :user_combinations
    has_many :combinations, through: :user_combinations
end
