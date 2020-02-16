class CreateHobbyProfiles < ActiveRecord::Migration[5.2]
  def change
    create_table :hobby_profiles do |t|
      t.references :hobby, foreign_key: true
      t.string :status
      t.references :profile, foreign_key: true

      t.timestamps
    end
  end
end
