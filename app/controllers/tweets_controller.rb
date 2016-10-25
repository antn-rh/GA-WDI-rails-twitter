class TweetsController < ApplicationController
before_action :set_tweet, only: [:show, :edit, :update, :destroy]

  def index
    @tweets = Tweet.all
  end

  def new
    @tweet = Tweet.new
  end

  def show
  end

  def create
    @tweet = Tweet.new(tweets_params)

    if @tweet.save
      redirect_to tweets_path
    else
      render :new
    end
  end

  def edit
  end

  def update
    if @tweet.update_attributes(tweets_params)
      redirect_to tweet_path
    else
      render :edit
    end
  end

  def destroy
    @tweet.destroy
    redirect_to tweets_path
  end

private
  def tweets_params
    params.require(:tweet).permit(:user, :text, :location)
  end

  def set_tweet
    @tweet = Tweet.find(params[:id])
  end
end
