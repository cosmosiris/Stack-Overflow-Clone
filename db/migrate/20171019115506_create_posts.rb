titleclass CreatePosts < ActiveRecord::Migration[5.1]
  def change
    create_table :posts do |t|
      t.string :title, null: false
      t.string :content, null: false
      t.references :user

      t.references :commentable, polymorphic: true
      t.references :voteable, polymorphic: true

      t.timestamps
    end
  end
end
