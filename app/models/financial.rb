class Financial < ApplicationRecord
  belongs_to :business

  validates :sales_revenue, :service_revenue, :advertising, :cogs, :employee_benefits, :equipment, :insurance, :maintenance, :office_supplies, :rent, :r_and_d, :salaries, :software, :travel, :utilities, :website, :other_expense, :interest, :taxes, :ammoritization, :depreciation, :presence => true, numericality: {greater_than_or_equal_to: 0, less_than_or_equal_to: 10000000, message: "must be a number 0 to 9,999,999"}
end