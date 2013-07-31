class SavedTweetsController < ApplicationController
  before_action :set_saved_tweet, only: [:show, :edit, :update, :destroy]

  # GET /saved_tweets
  # GET /saved_tweets.json
  def index
    @saved_tweets = SavedTweet.all
  end

  # GET /saved_tweets/1
  # GET /saved_tweets/1.json
  def show
  end

  # GET /saved_tweets/new
  def new
    @saved_tweet = SavedTweet.new
  end

  # GET /saved_tweets/1/edit
  def edit
  end

  # POST /saved_tweets
  # POST /saved_tweets.json
  def create
    @saved_tweet = SavedTweet.new(saved_tweet_params)

    respond_to do |format|
      if @saved_tweet.save
        format.html { redirect_to @saved_tweet, notice: 'Saved tweet was successfully created.' }
        format.json { render action: 'show', status: :created, location: @saved_tweet }
      else
        format.html { render action: 'new' }
        format.json { render json: @saved_tweet.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /saved_tweets/1
  # PATCH/PUT /saved_tweets/1.json
  def update
    respond_to do |format|
      if @saved_tweet.update(saved_tweet_params)
        format.html { redirect_to @saved_tweet, notice: 'Saved tweet was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @saved_tweet.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /saved_tweets/1
  # DELETE /saved_tweets/1.json
  def destroy
    @saved_tweet.destroy
    respond_to do |format|
      format.html { redirect_to saved_tweets_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_saved_tweet
      @saved_tweet = SavedTweet.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def saved_tweet_params
      params.require(:saved_tweet).permit(:user_id, :tweet_id)
    end
end
