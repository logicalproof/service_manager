class CreateServices < ActiveRecord::Migration
  def change
    create_table :services do |t|
      t.string :classification
      t.string :frequency
      t.string :due_date

      t.timestamps
    end
  end
end
