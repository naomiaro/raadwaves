class CreateShowRules < ActiveRecord::Migration
  def change
    create_table :show_rules do |t|
      t.belongs_to :show

      t.date :start_date
      t.time :start_time
      t.date :end_date
      t.time :end_time
      t.string :timezone
      t.boolean :repeats
      t.text :rrule

      t.timestamps
    end
  end
end
