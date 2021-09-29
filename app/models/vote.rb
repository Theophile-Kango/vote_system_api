class Vote < ApplicationRecord
  belongs_to :date_vote
  belongs_to :user

  validates_presence_of :date_vote_id, :user_id
end
