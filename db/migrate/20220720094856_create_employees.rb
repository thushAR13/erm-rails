class CreateEmployees < ActiveRecord::Migration[7.0]
  def change
    create_table :employees do |t|
      t.string :name
      t.string :email
      t.string :phone
      t.date :dob
      t.string :address
      t.string :role
      t.date :joining_date
      t.references :department, null: false, foreign_key: true

      t.timestamps
    end
  end
end
