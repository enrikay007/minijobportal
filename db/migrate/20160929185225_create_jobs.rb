class CreateJobs < ActiveRecord::Migration
  def change
    create_table :jobs do |t|
      t.string :industry_type
      t.string :job_type
      t.string :company_name
      t.string :job_position
      t.integer :salary
      t.string :job_status
      t.text :job_description
      t.string :education
      t.text :job_skills
      t.string :address
      t.boolean :active
      t.references :user, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
