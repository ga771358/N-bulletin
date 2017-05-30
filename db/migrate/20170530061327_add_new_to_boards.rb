class AddNewToBoards < ActiveRecord::Migration[5.1]
  def change
    add_column :boards, :new, :integer
  end
end
