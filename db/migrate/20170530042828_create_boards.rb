class CreateBoards < ActiveRecord::Migration[5.1]
  def change
    create_table :boards do |t|
      t.text :description
      t.string :year
      t.string :month
      t.string :day

      t.timestamps
    end
  end
end
