class CreateQuestions < ActiveRecord::Migration[5.0]
  def change
    create_table :questions do |t|
      t.references :user, foreign_key: true
      t.string :body
      t.text :description
      t.string :tags

      t.timestamps
    end
  end
end
