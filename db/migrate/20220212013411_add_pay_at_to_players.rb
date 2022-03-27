class AddPayAtToPlayers < ActiveRecord::Migration[7.0]
  def change
    add_column :players, :pay_at, :datetime
  end
end
