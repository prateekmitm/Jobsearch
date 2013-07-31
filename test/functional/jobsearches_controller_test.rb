require 'test_helper'

class JobsearchesControllerTest < ActionController::TestCase
  setup do
    @jobsearch = jobsearches(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:jobsearches)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create jobsearch" do
    assert_difference('Jobsearch.count') do
      post :create, jobsearch: { desired_salary: @jobsearch.desired_salary, emp_type: @jobsearch.emp_type, eng_lang_level: @jobsearch.eng_lang_level, industry: @jobsearch.industry, japan_lang_level: @jobsearch.japan_lang_level, job_categories: @jobsearch.job_categories, keyword: @jobsearch.keyword, languages: @jobsearch.languages, position_level: @jobsearch.position_level }
    end

    assert_redirected_to jobsearch_path(assigns(:jobsearch))
  end

  test "should show jobsearch" do
    get :show, id: @jobsearch
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @jobsearch
    assert_response :success
  end

  test "should update jobsearch" do
    put :update, id: @jobsearch, jobsearch: { desired_salary: @jobsearch.desired_salary, emp_type: @jobsearch.emp_type, eng_lang_level: @jobsearch.eng_lang_level, industry: @jobsearch.industry, japan_lang_level: @jobsearch.japan_lang_level, job_categories: @jobsearch.job_categories, keyword: @jobsearch.keyword, languages: @jobsearch.languages, position_level: @jobsearch.position_level }
    assert_redirected_to jobsearch_path(assigns(:jobsearch))
  end

  test "should destroy jobsearch" do
    assert_difference('Jobsearch.count', -1) do
      delete :destroy, id: @jobsearch
    end

    assert_redirected_to jobsearches_path
  end
end
