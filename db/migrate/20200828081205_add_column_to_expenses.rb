class AddColumnToExpenses < ActiveRecord::Migration[6.0]
  def change
    add_reference :expenses, :payroll1, null: false, foreign_key: true
  end
end
