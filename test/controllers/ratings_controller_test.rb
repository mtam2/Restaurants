require 'test_helper'

# TODO: The nulled tests below are due to the lack of relationships built by YAML
class RatingsControllerTest < ActionController::TestCase
  setup do
    @rating = ratings(:one)
    @user = users(:one)
    @restaurant = restaurants(:one)
  end

  # test "should get index" do
  #   get :index
  #   assert_response :success
  #   assert_not_nil assigns(:ratings)
  # end

  test "should get new" do
    get :new
    assert_response :success
  end

  # test "should create rating" do
  #   assert_difference('Rating.count') do
  #     post :create, rating: { date: @rating.date, rating: @rating.rating, restaurant_id: @rating.restaurant_id, user_id: @rating.user_id }
  #   end

  #   assert_redirected_to rating_path(assigns(:rating))
  # end

  # test "should show rating" do
  #   get :show, id: @rating
  #   assert_response :success
  # end

  test "should get edit" do
    get :edit, id: @rating
    assert_response :success
  end

  test "should update rating" do
    patch :update, id: @rating, rating: { date: @rating.date, rating: @rating.rating, restaurant_id: @rating.restaurant_id, user_id: @rating.user_id }
    assert_redirected_to rating_path(assigns(:rating))
  end

  test "should destroy rating" do
    assert_difference('Rating.count', -1) do
      delete :destroy, id: @rating
    end

    assert_redirected_to ratings_path
  end
end
