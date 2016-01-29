require 'test_helper'

class CameraPropertiesControllerTest < ActionController::TestCase
  setup do
    @camera_property = camera_properties(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:camera_properties)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create camera_property" do
    assert_difference('CameraProperty.count') do
      post :create, camera_property: { name: @camera_property.name, prop_hash: @camera_property.prop_hash, properties: @camera_property.properties }
    end

    assert_redirected_to camera_property_path(assigns(:camera_property))
  end

  test "should show camera_property" do
    get :show, id: @camera_property
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @camera_property
    assert_response :success
  end

  test "should update camera_property" do
    patch :update, id: @camera_property, camera_property: { name: @camera_property.name, prop_hash: @camera_property.prop_hash, properties: @camera_property.properties }
    assert_redirected_to camera_property_path(assigns(:camera_property))
  end

  test "should destroy camera_property" do
    assert_difference('CameraProperty.count', -1) do
      delete :destroy, id: @camera_property
    end

    assert_redirected_to camera_properties_path
  end
end
