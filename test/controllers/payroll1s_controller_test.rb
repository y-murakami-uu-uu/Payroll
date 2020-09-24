require 'test_helper'

class Payroll1sControllerTest < ActionDispatch::IntegrationTest
  setup do
    @payroll1 = payroll1s(:one)
  end

  test "should get index" do
    get payroll1s_url
    assert_response :success
  end

  test "should get new" do
    get new_payroll1_url
    assert_response :success
  end

  test "should create payroll1" do
    assert_difference('Payroll1.count') do
      post payroll1s_url, params: { payroll1: {  } }
    end

    assert_redirected_to payroll1_url(Payroll1.last)
  end

  test "should show payroll1" do
    get payroll1_url(@payroll1)
    assert_response :success
  end

  test "should get edit" do
    get edit_payroll1_url(@payroll1)
    assert_response :success
  end

  test "should update payroll1" do
    patch payroll1_url(@payroll1), params: { payroll1: {  } }
    assert_redirected_to payroll1_url(@payroll1)
  end

  test "should destroy payroll1" do
    assert_difference('Payroll1.count', -1) do
      delete payroll1_url(@payroll1)
    end

    assert_redirected_to payroll1s_url
  end
end
