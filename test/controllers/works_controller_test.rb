require 'test_helper'

class WorksControllerTest < ActionController::TestCase
  setup do
    @task = tasks(:one)
    @work = works(:one)
  end

  test "should get index" do
    get :index, params: { task_id: @task }
    assert_response :success
  end

  test "should get new" do
    get :new, params: { task_id: @task }
    assert_response :success
  end

  test "should create work" do
    assert_difference('Work.count') do
      post :create, params: { task_id: @task, work: @work.attributes }
    end

    assert_redirected_to task_work_path(@task, Work.last)
  end

  test "should show work" do
    get :show, params: { task_id: @task, id: @work }
    assert_response :success
  end

  test "should get edit" do
    get :edit, params: { task_id: @task, id: @work }
    assert_response :success
  end

  test "should update work" do
    put :update, params: { task_id: @task, id: @work, work: @work.attributes }
    assert_redirected_to task_work_path(@task, Work.last)
  end

  test "should destroy work" do
    assert_difference('Work.count', -1) do
      delete :destroy, params: { task_id: @task, id: @work }
    end

    assert_redirected_to task_works_path(@task)
  end
end
