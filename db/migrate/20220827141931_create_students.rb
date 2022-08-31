class CreateStudents < ActiveRecord::Migration[5.2]
  def change
    create_table :students do |t|
      t.text :first_name
      t.text :last_name
      t.date :dob
      t.integer :contact
      t.string :course
      t.integer :student_id

      t.timestamps
    end
  end
end
