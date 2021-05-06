class CreateQuestions < ActiveRecord::Migration[6.1]
  def change
    create_table :questions do |t|
      t.string :title
      t.text :body
      t.boolean :resolved

      t.timestamps
    end
  end
end
