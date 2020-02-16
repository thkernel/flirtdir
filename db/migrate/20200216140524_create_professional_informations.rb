class CreateProfessionalInformations < ActiveRecord::Migration[5.2]
  def change
    create_table :professional_informations do |t|
      t.string :profession
      t.string :activity_area
      t.string :education
      t.string :status
      t.references :profile, foreign_key: true

      t.timestamps
    end
  end
end
