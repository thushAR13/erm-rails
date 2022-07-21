class Department < ApplicationRecord
    has_many :employees

  def to_s
    department_name
  end
end
