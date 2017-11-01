class CreatePosts < ActiveRecord::Migration[5.1]
  def change
    create_table :posts do |t|
      t.text :question, null: false
      t.string :question_image
      t.text :answer
      t.text :link_url
      t.timestamps

      t.timestamps
    end
  end
end
