class UserCombination < ApplicationRecord
  belongs_to :combination
  belongs_to :user
end
