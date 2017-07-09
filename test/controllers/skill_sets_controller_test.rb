require 'test_helper'

class SkillSetsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @skill_set = skill_sets(:one)
  end

  test "should get index" do
    get skill_sets_url
    assert_response :success
  end

  test "should get new" do
    get new_skill_set_url
    assert_response :success
  end

  test "should create skill_set" do
    assert_difference('SkillSet.count') do
      post skill_sets_url, params: { skill_set: { skill_set_name: @skill_set.skill_set_name } }
    end

    assert_redirected_to skill_set_url(SkillSet.last)
  end

  test "should show skill_set" do
    get skill_set_url(@skill_set)
    assert_response :success
  end

  test "should get edit" do
    get edit_skill_set_url(@skill_set)
    assert_response :success
  end

  test "should update skill_set" do
    patch skill_set_url(@skill_set), params: { skill_set: { skill_set_name: @skill_set.skill_set_name } }
    assert_redirected_to skill_set_url(@skill_set)
  end

  test "should destroy skill_set" do
    assert_difference('SkillSet.count', -1) do
      delete skill_set_url(@skill_set)
    end

    assert_redirected_to skill_sets_url
  end
end
