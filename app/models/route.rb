# frozen_string_literal:true

class Route < ApplicationRecord
  belongs_to :user
  belongs_to :location
end
