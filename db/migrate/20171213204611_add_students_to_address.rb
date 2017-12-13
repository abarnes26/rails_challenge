class AddStudentsToAddress < ActiveRecord::Migration[5.1]
  def change
    add_reference :addresses, :students, foreign_key: true
  end
end
