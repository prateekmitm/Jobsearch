class JobsearchesController < ApplicationController
  # GET /jobsearches
  # GET /jobsearches.json
  before_filter :authenticate_user!
  def index
   
      @jobsearches = Jobsearch.all
    
    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @jobsearches }
    end
  end

  # GET /jobsearches/1
  # GET /jobsearches/1.json
  def show
    @jobsearch = Jobsearch.find(params[:id])
  
    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @jobsearch }
    end
  end

  # GET /jobsearches/new
  # GET /jobsearches/new.json
  def new
    @jobsearch = Jobsearch.new
    @employees=Employee.all
    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @jobsearch }
    end
  end

  # GET /jobsearches/1/edit
  def edit
    @jobsearch = Jobsearch.find(params[:id])
    @employees=Employee.all
  end

  # POST /jobsearches
  # POST /jobsearches.json
  def create
  
    @jobsearch = Jobsearch.new(params[:jobsearch])
       
        respond_to do |format|
         if @jobsearch.save
              
             emp_types = params[:jobsearch][:emp_type]
             if !emp_types.blank?
                 @jobs=JobsearchEmployee.all
                  if @jobs.blank?
                      emp_types.each do |emp_type|
                        @emp=Employee.find_by_emp_type(emp_type).id
                        JobsearchEmployee.create(:jobsearch_id => @jobsearch.id,:employee_id => @emp)
                      end
                  else
                    JobsearchEmployee.delete_all 
                      emp_types.each do |emp_type|
                        @emp=Employee.find_by_emp_type(emp_type).id
                        JobsearchEmployee.create(:jobsearch_id => @jobsearch.id,:employee_id => @emp)
                      end
                  end 
              end
          #end
        
             # position_levels=params[:jobsearch][:position_level]
             # if !position_levels.blank?
             #    position_levels.each do |position_level|
             #     @pos_level=Position.find_by_position_level(position_level).id
             #    JobsearchPosition.create(:jobsearch_id => @jobsearch.id,:position_id => @pos_level)
             # end                                
        #end
        format.html { redirect_to @jobsearch, notice: 'Jobsearch was successfully created.' }
        format.json { render json: @jobsearch, status: :created, location: @jobsearch }
      else
        format.html { render action: "new" }
        format.json { render json: @jobsearch.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /jobsearches/1
  # PUT /jobsearches/1.json
  def update
    @jobsearch = Jobsearch.find(params[:id])

    respond_to do |format|
      if @jobsearch.update_attributes(params[:jobsearch])
        format.html { redirect_to @jobsearch, notice: 'Jobsearch was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @jobsearch.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /jobsearches/1
  # DELETE /jobsearches/1.json
  def destroy
    @jobsearch = Jobsearch.find(params[:id])
    @jobsearch.destroy

    respond_to do |format|
      format.html { redirect_to jobsearches_url }
      format.json { head :no_content }
    end
  end

  def search
 
  end

  def display
     if !params[:keyword].blank? || !params[:emp_type].blank? || !params[:job_categories].blank? || !params[:industry].blank? || !params[:desired_salary].blank? ||  !params[:language].blank? ||  !params[:japan_lang_level].blank? ||  !params[:eng_lang_level].blank? || !params[:position_level].blank?
      @jobsearches = Jobsearch.find_for_index(params)
    end
  end
 
end
