class Employee < ApplicationRecord
  belongs_to :department

  has_many :leaves
  has_many :salaries
  has_many :attendances

  validates :phone,:presence => true,
                 :numericality => true,
                 :length => { :minimum => 10, :maximum => 11 }

  validates :email, email_format: { message: 'Invalid email format' }
end
