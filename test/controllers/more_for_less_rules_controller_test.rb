require 'test_helper'

class MoreForLessRulesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @more_for_less_rule = more_for_less_rules(:one)
  end

  test "should get index" do
    get more_for_less_rules_url
    assert_response :success
  end

  test "should get new" do
    get new_more_for_less_rule_url
    assert_response :success
  end

  test "should create more_for_less_rule" do
    assert_difference('MoreForLessRule.count') do
      post more_for_less_rules_url, params: { more_for_less_rule: {  } }
    end

    assert_redirected_to more_for_less_rule_url(MoreForLessRule.last)
  end

  test "should show more_for_less_rule" do
    get more_for_less_rule_url(@more_for_less_rule)
    assert_response :success
  end

  test "should get edit" do
    get edit_more_for_less_rule_url(@more_for_less_rule)
    assert_response :success
  end

  test "should update more_for_less_rule" do
    patch more_for_less_rule_url(@more_for_less_rule), params: { more_for_less_rule: {  } }
    assert_redirected_to more_for_less_rule_url(@more_for_less_rule)
  end

  test "should destroy more_for_less_rule" do
    assert_difference('MoreForLessRule.count', -1) do
      delete more_for_less_rule_url(@more_for_less_rule)
    end

    assert_redirected_to more_for_less_rules_url
  end
end
