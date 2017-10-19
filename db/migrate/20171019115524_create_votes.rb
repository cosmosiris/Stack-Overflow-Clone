class CreateVotes < ActiveRecord::Migration[5.1]
  def change
    create_table :votes do |t|
      t.integer :up_vote
      t.integer :down_vote
      t.references :user

      t.references :voteable, polymorphic: true

      t.timestamps
    end
  end
end
