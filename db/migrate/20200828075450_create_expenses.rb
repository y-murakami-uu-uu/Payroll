class CreateExpenses < ActiveRecord::Migration[6.0]
  def change
    create_table :expenses do |t|
      t.integer :expense_amount
      t.date :spend_day

      t.timestamps
    end
  end
end
