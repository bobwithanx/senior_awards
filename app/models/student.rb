class Student < ApplicationRecord
  has_and_belongs_to_many :clubs
  has_and_belongs_to_many :cte_programs
  has_and_belongs_to_many :scholarships
  has_and_belongs_to_many :future_plans
end
