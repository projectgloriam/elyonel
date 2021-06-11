require 'test_helper'

class ExpendituresControllerTest < ActionDispatch::IntegrationTest
  setup do
    @expenditure = expenditures(:one)
  end

  test "should get index" do
    get expenditures_url
    assert_response :success
  end

  test "should get new" do
    get new_expenditure_url
    assert_response :success
  end

  test "should create expenditure" do
    assert_difference('Expenditure.count') do
      post expenditures_url, params: { expenditure: { item: @expenditure.item, price: @expenditure.price } }
    end

    assert_redirected_to expenditure_url(Expenditure.last)
  end

  test "should show expenditure" do
    get expenditure_url(@expenditure)
    assert_response :success
  end

  test "should get edit" do
    get edit_expenditure_url(@expenditure)
    assert_response :success
  end

  test "should update expenditure" do
    patch expenditure_url(@expenditure), params: { expenditure: { item: @expenditure.item, price: @expenditure.price } }
    assert_redirected_to expenditure_url(@expenditure)
  end

  test "should destroy expenditure" do
    assert_difference('Expenditure.count', -1) do
      delete expenditure_url(@expenditure)
    end

    assert_redirected_to expenditures_url
  end
end
