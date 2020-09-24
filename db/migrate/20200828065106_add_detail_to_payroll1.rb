class AddDetailToPayroll1 < ActiveRecord::Migration[6.0]
  def change
    add_column :payroll1s, :name, :string
    add_column :payroll1s, :basic_salary, :integer
    add_column :payroll1s, :payment_amount, :integer
    add_column :payroll1s, :tax, :integer
  end
end
