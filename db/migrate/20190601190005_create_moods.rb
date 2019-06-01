class CreateMoods < ActiveRecord::Migration[5.2]
  def change
    create_table :moods do |t|
      t.string :mood_state
      t.integer :mood_duration
      t.decimal :mood_duration_percentage

      t.timestamps
    end
  end
end
