class CreateFollowingRelationships < ActiveRecord::Migration
  def change
    create_table :following_relationships do |t|
      t.belongs_to :follower, index: true, foreign_key: true
      t.belongs_to :followed_user, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
