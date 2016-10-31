class CreateProfiles < ActiveRecord::Migration[5.0]
  def change
    create_table :profiles do |t|
      t.references :user, foreign_key: true
      t.string :name
      t.string :bio
      t.string :school
      t.string :college
      t.string :work
      t.date :dob

      t.timestamps
    end
  end
end
