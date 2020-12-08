class CreateGroups < ActiveRecord::Migration[6.0]
  def change
    create_table :groups do |t|
      t.string :name
      t.string :password
      t.string :draw_date
      t.string :game_day

      t.timestamps
    end
  end
end
