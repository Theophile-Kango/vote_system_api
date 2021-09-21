class Vote < ApplicationRecord
  belongs_to :date_vote
  belongs_to :user
end
