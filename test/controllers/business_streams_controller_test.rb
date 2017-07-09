require 'test_helper'

class BusinessStreamsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @business_stream = business_streams(:one)
  end

  test "should get index" do
    get business_streams_url
    assert_response :success
  end

  test "should get new" do
    get new_business_stream_url
    assert_response :success
  end

  test "should create business_stream" do
    assert_difference('BusinessStream.count') do
      post business_streams_url, params: { business_stream: { create: @business_stream.create, destroy: @business_stream.destroy, index: @business_stream.index, new: @business_stream.new, show: @business_stream.show, update: @business_stream.update } }
    end

    assert_redirected_to business_stream_url(BusinessStream.last)
  end

  test "should show business_stream" do
    get business_stream_url(@business_stream)
    assert_response :success
  end

  test "should get edit" do
    get edit_business_stream_url(@business_stream)
    assert_response :success
  end

  test "should update business_stream" do
    patch business_stream_url(@business_stream), params: { business_stream: { create: @business_stream.create, destroy: @business_stream.destroy, index: @business_stream.index, new: @business_stream.new, show: @business_stream.show, update: @business_stream.update } }
    assert_redirected_to business_stream_url(@business_stream)
  end

  test "should destroy business_stream" do
    assert_difference('BusinessStream.count', -1) do
      delete business_stream_url(@business_stream)
    end

    assert_redirected_to business_streams_url
  end
end
