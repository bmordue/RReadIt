require 'test_helper'

class SavedTweetsControllerTest < ActionController::TestCase
  setup do
    @saved_tweet = saved_tweets(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:saved_tweets)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create saved_tweet" do
    assert_difference('SavedTweet.count') do
      post :create, saved_tweet: { tweet_id: @saved_tweet.tweet_id, user_id: @saved_tweet.user_id }
    end

    assert_redirected_to saved_tweet_path(assigns(:saved_tweet))
  end

  test "should show saved_tweet" do
    get :show, id: @saved_tweet
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @saved_tweet
    assert_response :success
  end

  test "should update saved_tweet" do
    patch :update, id: @saved_tweet, saved_tweet: { tweet_id: @saved_tweet.tweet_id, user_id: @saved_tweet.user_id }
    assert_redirected_to saved_tweet_path(assigns(:saved_tweet))
  end

  test "should destroy saved_tweet" do
    assert_difference('SavedTweet.count', -1) do
      delete :destroy, id: @saved_tweet
    end

    assert_redirected_to saved_tweets_path
  end
end
