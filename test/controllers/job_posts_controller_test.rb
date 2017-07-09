require 'test_helper'

class JobPostsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get job_posts_index_url
    assert_response :success
  end

  test "should get show" do
    get job_posts_show_url
    assert_response :success
  end

  test "should get new" do
    get job_posts_new_url
    assert_response :success
  end

  test "should get edit" do
    get job_posts_edit_url
    assert_response :success
  end

  test "should get create" do
    get job_posts_create_url
    assert_response :success
  end

  test "should get update" do
    get job_posts_update_url
    assert_response :success
  end

  test "should get destroy" do
    get job_posts_destroy_url
    assert_response :success
  end

end
