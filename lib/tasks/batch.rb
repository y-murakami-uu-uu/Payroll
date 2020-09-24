class Tasks::Batch
  def self.execute
    # 実行したいコードを書く
    @payroll1s = Payroll1.all
    @performances = Performance.where(get_day: Time.now.all_month)
    @expenses = Expense.where(spend_day: Time.now.all_month)
    @payroll1s.each do |payroll1|
        psum = 0
        esum = 0
        @performances.each do |performance|
            if payroll1.id == performance.payroll1_id
                psum += performance.performance_amount
            end
        end
        @expenses.each do |expense|
            if payroll1.id == expense.payroll1_id
                esum += expense.expense_amount
            end
        end
        psum += payroll1.basic_salary
        tax = (psum * 0.15).to_i
        pamo = psum - tax + esum
        payroll1.payment_amount = pamo
        payroll1.tax = tax
        payroll1.save
    end
  end
end