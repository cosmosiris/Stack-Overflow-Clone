class CreateAnswers < ActiveRecord::Migration[5.1]
  def change
    create_table answers do |t|
      t.string :content
      t.references :user
      t.references :post

      t.references :commentable, polymorphic: true
      t.references :voteable, polymorphic: true

      t.timestamps
    end
  end
end
