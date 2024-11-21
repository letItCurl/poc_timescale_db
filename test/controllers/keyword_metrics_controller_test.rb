require "test_helper"

class KeywordMetricsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @keyword_metric = keyword_metrics(:one)
  end

  test "should get index" do
    get keyword_metrics_url
    assert_response :success
  end

  test "should get new" do
    get new_keyword_metric_url
    assert_response :success
  end

  test "should create keyword_metric" do
    assert_difference("KeywordMetric.count") do
      post keyword_metrics_url, params: { keyword_metric: { keyword: @keyword_metric.keyword, volume: @keyword_metric.volume } }
    end

    assert_redirected_to keyword_metric_url(KeywordMetric.last)
  end

  test "should show keyword_metric" do
    get keyword_metric_url(@keyword_metric)
    assert_response :success
  end

  test "should get edit" do
    get edit_keyword_metric_url(@keyword_metric)
    assert_response :success
  end

  test "should update keyword_metric" do
    patch keyword_metric_url(@keyword_metric), params: { keyword_metric: { keyword: @keyword_metric.keyword, volume: @keyword_metric.volume } }
    assert_redirected_to keyword_metric_url(@keyword_metric)
  end

  test "should destroy keyword_metric" do
    assert_difference("KeywordMetric.count", -1) do
      delete keyword_metric_url(@keyword_metric)
    end

    assert_redirected_to keyword_metrics_url
  end
end
