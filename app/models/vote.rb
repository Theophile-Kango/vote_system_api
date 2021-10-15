class Vote < ApplicationRecord
  belongs_to :user
  
  validates_presence_of  :user_id, :candidat_id
end
