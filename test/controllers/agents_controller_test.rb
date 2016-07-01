require 'test_helper'

class AgentsControllerTest < ActionController::TestCase
  setup do
    @agent = agents(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:agents)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create agent" do
    assert_difference('Agent.count') do
      post :create, agent: { agent_mls: @agent.agent_mls, country_code: @agent.country_code, description: @agent.description, email: @agent.email, first_name: @agent.first_name, image_url: @agent.image_url, last_name: @agent.last_name, office_mls: @agent.office_mls, phone_number: @agent.phone_number }
    end

    assert_redirected_to agent_path(assigns(:agent))
  end

  test "should show agent" do
    get :show, id: @agent
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @agent
    assert_response :success
  end

  test "should update agent" do
    patch :update, id: @agent, agent: { agent_mls: @agent.agent_mls, country_code: @agent.country_code, description: @agent.description, email: @agent.email, first_name: @agent.first_name, image_url: @agent.image_url, last_name: @agent.last_name, office_mls: @agent.office_mls, phone_number: @agent.phone_number }
    assert_redirected_to agent_path(assigns(:agent))
  end

  test "should destroy agent" do
    assert_difference('Agent.count', -1) do
      delete :destroy, id: @agent
    end

    assert_redirected_to agents_path
  end
end
