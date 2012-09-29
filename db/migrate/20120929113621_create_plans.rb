class CreatePlans < ActiveRecord::Migration
  def change
    create_table :plans do |t|
      t.string :leader
      t.date :from_date
      t.date :to_date
      t.string :destination
      t.text :detail

      t.timestamps
    end
  end
end
