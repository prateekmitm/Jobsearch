class JobsearchPosition < ActiveRecord::Base
  attr_accessible :jobsearch_id, :position_id
   belongs_to :jobsearch
   belongs_to :position
end
