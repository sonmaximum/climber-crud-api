class CreateRoutes < ActiveRecord::Migration[5.1]
  def change
    create_table :routes do |t|
      t.string :name
      t.string :rating
      t.string :location
      t.references :user, foreign_key: true
      t.string :route_type
      t.boolean :outdoors
      t.boolean :attempted
      t.boolean :completed
      t.boolean :sent
      t.boolean :project
      t.integer :hangs
      t.string :comments
      t.string :color

      t.timestamps
    end
  end
end
