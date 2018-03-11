# frozen_string_literal:true

class Location < ApplicationRecord
  belongs_to :maintainer,
             class_name: 'User',
             foreign_key: 'user_id',
             inverse_of: 'maintained_locations'

  has_many :routes
  has_many :users, -> { distinct }, through: :routes

  validates :name, presence: true
  validates :address, presence: true
  validates :maintainer, presence: true
end
