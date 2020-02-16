class CreateHabits < ActiveRecord::Migration[5.2]
  def change
    create_table :habits do |t|
      t.string :tobacco
      t.string :alcohol
      t.string :drugs
      t.string :status
      t.references :profile, foreign_key: true

      t.timestamps
    end
  end
end
