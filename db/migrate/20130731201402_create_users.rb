class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :name
      t.string :email
      t.string :twitter_oauth_token
      t.string :twitter_oauth_token_secret

      t.timestamps
    end
  end
end
