class CreateStudies < ActiveRecord::Migration[5.1]
  def change
    create_table :studies do |t|
      t.text :question, null: false
      t.string :question_image
      t.text :answer
      t.text :link_url
      t.timestamps
    end
  end
end
