# frozen_string_literal:true

class RouteSerializer < ActiveModel::Serializer
  attributes :id, :name, :rating, :location, :route_type, :outdoors, :attempted,
             :completed, :sent, :project, :hangs, :comments, :color

  belongs_to :user
end
