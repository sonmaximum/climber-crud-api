# frozen_string_literal: true

class User < ApplicationRecord
  include Authentication
  has_many :examples
  has_many :routes
  has_many :locations, -> { distinct }, through: :routes
  has_many :maintained_locations,
           class_name: 'Location',
           inverse_of: 'maintainer'

  validates :email, presence: true
end
