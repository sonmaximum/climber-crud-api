class AddLocationToRoute < ActiveRecord::Migration[5.1]
  def change
    add_reference :routes, :location, foreign_key: true, index: true
  end
end
