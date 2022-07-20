class CreateAttendances < ActiveRecord::Migration[7.0]
  def change
    create_table :attendances do |t|
      t.datetime :login
      t.datetime :logout
      t.time :hours_logged
      t.string :reason
      t.string :status
      t.references :employee, null: false, foreign_key: true

      t.timestamps
    end
  end
end
