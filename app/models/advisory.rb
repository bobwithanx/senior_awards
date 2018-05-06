class Advisory < ApplicationRecord
  has_many :students, inverse_of: :advisory
end
