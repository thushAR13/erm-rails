class Department < ApplicationRecord
    has_many :employees, dependent: :delete_all

  def to_s
    department_name
  end
end
