class Candidat < ApplicationRecord
  belongs_to :user
  has_one_attached :image
  has_many :votes
  validates_presence_of :image, :description
end
