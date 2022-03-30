class CreateTeams < ActiveRecord::Migration[5.2]
  def change
    create_table :teams do |t|
      t.string :country
      t.boolean :qualified
      t.integer :rank

      t.timestamps
    end
  end
end
