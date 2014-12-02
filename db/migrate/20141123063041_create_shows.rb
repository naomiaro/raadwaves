class CreateShows < ActiveRecord::Migration
  def change
    create_table :shows do |t|
      t.string :name
      t.string :description
      t.string :color
      t.string :background_color

      t.timestamps
    end
  end
end
