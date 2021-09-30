class Candidat < ApplicationRecord
  belongs_to :user
  has_one_attached :image
  has_many :votes

  validates_presence_of :nom, :post_nom, :promotion
  validates_uniqueness_of :nom, scope: %i[post_nom prenom]
end
