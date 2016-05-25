class AddUserIdToReview < ActiveRecord::Migration
  def change
    add_reference :reviews, :user_id, index: true, foreign_key: true
  end
end
