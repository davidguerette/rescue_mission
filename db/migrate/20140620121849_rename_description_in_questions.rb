class RenameDescriptionInQuestions < ActiveRecord::Migration
  def change
    rename_column :questions, :descritpion, :description
  end
end
