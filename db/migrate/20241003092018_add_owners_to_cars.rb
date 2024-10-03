class AddOwnersToCars < ActiveRecord::Migration[7.2]
  def change
    add_reference :cars, :owner, null: false, foreign_key: true
  end
end
