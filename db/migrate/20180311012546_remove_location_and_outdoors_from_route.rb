class RemoveLocationAndOutdoorsFromRoute < ActiveRecord::Migration[5.1]
  def change
    remove_column :routes, :outdoors, :boolean
    remove_column :routes, :location, :string
  end
end
