class JobsearchEmployee < ActiveRecord::Base
  attr_accessible :jobsearch_id, :employee_id
   belongs_to :jobsearch
   belongs_to :employee
end

 
