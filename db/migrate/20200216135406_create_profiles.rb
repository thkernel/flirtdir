class CreateProfiles < ActiveRecord::Migration[5.2]
  def change
    create_table :profiles do |t|
      t.string :first_name
      t.string :last_name
      t.string :gender
      t.date :birth_date
      t.string :religion
      t.string :sexual_orientation
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
