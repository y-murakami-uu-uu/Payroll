class CreatePerformances < ActiveRecord::Migration[6.0]
  def change
    create_table :performances do |t|
      t.integer :performance_amount
      t.date :get_day
      
      t.timestamps
    end
  end
end
