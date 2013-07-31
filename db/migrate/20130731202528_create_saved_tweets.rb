class CreateSavedTweets < ActiveRecord::Migration
  def change
    create_table :saved_tweets do |t|
      t.integer :user_id
      t.integer :tweet_id

      t.timestamps
    end
  end
end
