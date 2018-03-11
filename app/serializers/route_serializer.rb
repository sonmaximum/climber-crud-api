# frozen_string_literal:true

class RouteSerializer < ActiveModel::Serializer
  attributes :id, :name, :rating, :route_type, :attempted, :completed, :sent,
             :project, :hangs, :comments, :color

  belongs_to :user
  belongs_to :location
end
