class CreateHobbies < ActiveRecord::Migration[5.2]
  def change
    create_table :hobbies do |t|
      t.string :name
      t.string :status
      t.references :profile, foreign_key: true

      t.timestamps
    end
  end
end
