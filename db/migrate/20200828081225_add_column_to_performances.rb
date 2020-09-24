class AddColumnToPerformances < ActiveRecord::Migration[6.0]
  def change
    add_reference :performances, :payroll1, null: false, foreign_key: true
  end
end
