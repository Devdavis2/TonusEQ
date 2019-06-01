class CreateTonusEqs < ActiveRecord::Migration[5.2]
  def change
    create_table :tonus_eqs do |t|
      t.string :genre
      t.string :artist
      t.string :song

      t.timestamps
    end
  end
end
