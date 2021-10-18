# frozen_string_literal: true

class User < ActiveRecord::Base
  extend Devise::Models
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable, authentication_keys: [:matricule]

  include DeviseTokenAuth::Concerns::User
  has_one :vote, dependent: :destroy
  has_one :candidat, dependent: :destroy
  #has_many :date_votes, dependent: :destroy
  #accepts_nested_attributes_for :date_votes

  validates_uniqueness_of :nom, scope: %i[post_nom prenom]
  validates_presence_of :nom, :post_nom, :role, :uid, :matricule
 
  enum role: {admin: 1, cp: 2, candidate: 3}

end 
