class AddMinningTypeToCoins < ActiveRecord::Migration[7.0]
  def change
    add_reference :coins, :minning_type, null: false, foreign_key: true
  end
end
