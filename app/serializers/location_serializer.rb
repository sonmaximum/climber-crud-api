# frozen_string_literal: true

class LocationSerializer < ActiveModel::Serializer
  attributes :id, :name, :address, :outdoors, :comments
end
