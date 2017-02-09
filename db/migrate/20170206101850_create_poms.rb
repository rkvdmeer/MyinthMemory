class CreatePoms < ActiveRecord::Migration
  def change
    create_table :poms do |t|
      t.string :name
      t.string :description
      t.string :location

      t.timestamps null: false
    end
  end
end
