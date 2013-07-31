class Employee < ActiveRecord::Base
  has_many :jobsearch_employees
  has_many :jobsearches, through: :jobsearch_employees
  attr_accessible :emp_type ,:jobsearch_id
end
