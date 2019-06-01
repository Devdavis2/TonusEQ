class AddTonusEqsIdToMoods < ActiveRecord::Migration[5.2]
  def change
    add_column :moods, :tonus_eq_id, :integer
  end
end
