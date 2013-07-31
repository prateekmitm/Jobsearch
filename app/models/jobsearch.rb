class Jobsearch < ActiveRecord::Base
  attr_accessible :desired_salary, :emp_type, :eng_lang_level, :industry, :japan_lang_level, :job_categories, :keyword, :languages, :position_level
 
  has_many :jobsearch_employees
  has_many :employees, through: :jobsearch_employees
 
  has_many :jobsearch_positions
  has_many :positions, through: :jobsearch_positions

  validates :desired_salary, :presence => true 
  validates :keyword, :presence => true 
def self.find_for_index(params)

           collection_a = Jobsearch.all
          @jobsearches = []
          
      if !params[:keyword].blank? || !params[:emp_type].blank? ||!params[:job_categories].blank? || !params[:industry].blank? || !params[:desired_salary].blank? ||  !params[:languages].blank? ||  !params[:japan_lang_level].blank? ||  !params[:eng_lang_level].blank? 
          if !collection_a.blank?
              collection_a.each do |coll|
                 @emp_type = coll.emp_type.delete("-").gsub(/\s+/, " ").split
                  @position_level = coll[:position_level].delete("-").gsub(/\s+/, " ").split
                if coll.keyword == params[:keyword] || coll.job_categories == params[:job_categories] || coll.industry == params[:industry]  || coll.languages == params[:languages] || coll.japan_lang_level == params[:japan_lang_level] || coll.eng_lang_level == params[:eng_lang_level] || @emp_type==params[:emp_type] || @position_level == params[:position_level]
                   
                  @jobsearches << coll

                end
                  
            end
          end
        end
      return @jobsearches
end

end
