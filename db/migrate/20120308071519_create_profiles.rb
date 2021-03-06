class CreateProfiles < ActiveRecord::Migration
  def change
    create_table :profiles do |t|
      t.references :user, :null => false
      t.references :university, :null => false
      t.string :name, :null => false
      t.date :birth
      t.string :mobile
      t.string :email
      t.string :qq
      t.string :stu_no
      t.string :gender
      t.string :hometown
      t.text :bio

      t.timestamps
    end
    add_index :profiles, :user_id, :unique => true
  end
end
