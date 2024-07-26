class CreatePhrases < ActiveRecord::Migration[7.1]
  def change
    create_table :phrases do |t|
      t.string :text
      t.string :author

      t.timestamps
    end
  end
end
