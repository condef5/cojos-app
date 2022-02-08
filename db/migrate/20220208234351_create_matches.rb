class CreateMatches < ActiveRecord::Migration[7.0]
  def change
    create_table :matches do |t|
      t.datetime :time
      t.string :place

      t.timestamps
    end
  end
end
