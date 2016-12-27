class CreateTesta < ActiveRecord::Migration[5.0]
  def change
    create_table :testa do |t|

      t.timestamps
    end
  end
end
