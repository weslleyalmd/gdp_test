require 'test_helper'

class PriceDiscountRulesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @price_discount_rule = price_discount_rules(:one)
  end

  test "should get index" do
    get price_discount_rules_url
    assert_response :success
  end

  test "should get new" do
    get new_price_discount_rule_url
    assert_response :success
  end

  test "should create price_discount_rule" do
    assert_difference('PriceDiscountRule.count') do
      post price_discount_rules_url, params: { price_discount_rule: {  } }
    end

    assert_redirected_to price_discount_rule_url(PriceDiscountRule.last)
  end

  test "should show price_discount_rule" do
    get price_discount_rule_url(@price_discount_rule)
    assert_response :success
  end

  test "should get edit" do
    get edit_price_discount_rule_url(@price_discount_rule)
    assert_response :success
  end

  test "should update price_discount_rule" do
    patch price_discount_rule_url(@price_discount_rule), params: { price_discount_rule: {  } }
    assert_redirected_to price_discount_rule_url(@price_discount_rule)
  end

  test "should destroy price_discount_rule" do
    assert_difference('PriceDiscountRule.count', -1) do
      delete price_discount_rule_url(@price_discount_rule)
    end

    assert_redirected_to price_discount_rules_url
  end
end
