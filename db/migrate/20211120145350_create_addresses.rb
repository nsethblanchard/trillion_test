class CreateAddresses < ActiveRecord::Migration[6.1]
  def change
    create_table :addresses do |t|
      t.string :address
      t.boolean :acquired?, default: false, null: false
      t.references :block, null: false, foreign_key: true

      t.timestamps
    end
  end
end
