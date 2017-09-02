class CreateCvs < ActiveRecord::Migration
  def change
    create_table :cvs do |t|
      t.string :name
      t.string :profession
      t.string :image
      t.string :email
      t.text :education
      t.text :experiences

      t.timestamps null: false
    end
  end
end
