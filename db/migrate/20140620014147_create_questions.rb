class CreateQuestions < ActiveRecord::Migration
  def change
    create_table :questions do |t|
      t.string :title, null: false
      t.text :descritpion, null: false

      t.timestamps
    end
  end
end
