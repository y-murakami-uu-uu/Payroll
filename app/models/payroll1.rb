class Payroll1 < ApplicationRecord
    has_many :expenses
    has_many :performances
end
