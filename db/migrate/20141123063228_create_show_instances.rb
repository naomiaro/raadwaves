class CreateShowInstances < ActiveRecord::Migration
  def change
    create_table :show_instances do |t|
      t.belongs_to :show
      t.belongs_to :show_rule

      t.datetime :start
      t.datetime :end

      t.timestamps
    end
  end
end
