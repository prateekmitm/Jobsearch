class Position < ActiveRecord::Base
  attr_accessible :jobsearch_id, :position_level
   has_many :jobsearch_positions
   has_many :jobsearches, through: :jobsearch_positions
end
