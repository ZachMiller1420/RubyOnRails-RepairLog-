require "test_helper"

class FlateratesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @flaterate = flaterates(:one)
  end

  test "should get index" do
    get flaterates_url
    assert_response :success
  end

  test "should get new" do
    get new_flaterate_url
    assert_response :success
  end

  test "should create flaterate" do
    assert_difference('Flaterate.count') do
      post flaterates_url, params: { flaterate: { date: @flaterate.date, hrs: @flaterate.hrs, ro_num: @flaterate.ro_num, work: @flaterate.work, year_make_model: @flaterate.year_make_model } }
    end

    assert_redirected_to flaterate_url(Flaterate.last)
  end

  test "should show flaterate" do
    get flaterate_url(@flaterate)
    assert_response :success
  end

  test "should get edit" do
    get edit_flaterate_url(@flaterate)
    assert_response :success
  end

  test "should update flaterate" do
    patch flaterate_url(@flaterate), params: { flaterate: { date: @flaterate.date, hrs: @flaterate.hrs, ro_num: @flaterate.ro_num, work: @flaterate.work, year_make_model: @flaterate.year_make_model } }
    assert_redirected_to flaterate_url(@flaterate)
  end

  test "should destroy flaterate" do
    assert_difference('Flaterate.count', -1) do
      delete flaterate_url(@flaterate)
    end

    assert_redirected_to flaterates_url
  end
end
