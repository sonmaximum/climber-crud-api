# frozen_string_literal: true

class AddUserToLocation < ActiveRecord::Migration[5.1]
  def change
    add_reference :locations, :user, foreign_key: true, index: true
  end
end
