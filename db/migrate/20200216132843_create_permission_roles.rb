class CreatePermissionRoles < ActiveRecord::Migration[5.2]
  def change
    create_table :permission_roles do |t|
      t.string :uid
      t.references :role, foreign_key: true
      t.references :permission, foreign_key: true
      t.string :status

      t.timestamps
    end
  end
end
