class CreateSalaries < ActiveRecord::Migration[7.0]
  def change
    create_table :salaries do |t|
      t.integer :base
      t.integer :bonus
      t.date :issue_date
      t.references :employee, null: false, foreign_key: true

      t.timestamps
    end
  end
end
