class CreateAlcohols < ActiveRecord::Migration[6.0]
  def change
    create_table :alcohols do |t|
      t.string :name
      t.string :type
      t.integer :alcohol_percentage
    end
  end
end
