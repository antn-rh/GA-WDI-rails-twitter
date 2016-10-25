class AddUserToTweets < ActiveRecord::Migration[5.0]
  def change
    add_column :tweets, :user, :string
  end
end
