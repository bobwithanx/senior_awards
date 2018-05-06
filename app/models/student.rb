class Student < ApplicationRecord
  belongs_to :advisory, inverse_of: :students
  belongs_to :counselor
  has_and_belongs_to_many :clubs
  has_and_belongs_to_many :cte_programs
  has_and_belongs_to_many :scholarships
  has_and_belongs_to_many :future_plans
end
