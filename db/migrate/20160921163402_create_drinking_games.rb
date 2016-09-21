class CreateDrinkingGames < ActiveRecord::Migration
  def change
    create_table :drinking_games do |t|
      t.string :name
      t.string :number_of_people
      t.string :supplies

      t.timestamps null: false
    end
  end
end
