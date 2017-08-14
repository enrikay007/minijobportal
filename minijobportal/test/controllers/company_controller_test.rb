require 'test_helper'

class CompanyControllerTest < ActionController::TestCase
  test "should get disclaimer" do
    get :disclaimer
    assert_response :success
  end

  test "should get news" do
    get :news
    assert_response :success
  end

  test "should get faqs" do
    get :faqs
    assert_response :success
  end

  test "should get privacy" do
    get :privacy
    assert_response :success
  end

  test "should get terms_conditions" do
    get :terms_conditions
    assert_response :success
  end

  test "should get corporate_responsibility" do
    get :corporate_responsibility
    assert_response :success
  end

  test "should get services" do
    get :services
    assert_response :success
  end

end
