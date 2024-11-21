require "application_system_test_case"

class KeywordMetricsTest < ApplicationSystemTestCase
  setup do
    @keyword_metric = keyword_metrics(:one)
  end

  test "visiting the index" do
    visit keyword_metrics_url
    assert_selector "h1", text: "Keyword metrics"
  end

  test "should create keyword metric" do
    visit keyword_metrics_url
    click_on "New keyword metric"

    fill_in "Keyword", with: @keyword_metric.keyword
    fill_in "Volume", with: @keyword_metric.volume
    click_on "Create Keyword metric"

    assert_text "Keyword metric was successfully created"
    click_on "Back"
  end

  test "should update Keyword metric" do
    visit keyword_metric_url(@keyword_metric)
    click_on "Edit this keyword metric", match: :first

    fill_in "Keyword", with: @keyword_metric.keyword
    fill_in "Volume", with: @keyword_metric.volume
    click_on "Update Keyword metric"

    assert_text "Keyword metric was successfully updated"
    click_on "Back"
  end

  test "should destroy Keyword metric" do
    visit keyword_metric_url(@keyword_metric)
    click_on "Destroy this keyword metric", match: :first

    assert_text "Keyword metric was successfully destroyed"
  end
end
