class CreateVotes < ActiveRecord::Migration[5.1]
  def change
    create_table votes do |t|
      t.string :up_vote
      t.string :down_vote
      t.references :user

      t.references :voteable, polymorphic: true

      t.timestamps
    end
  end
end
