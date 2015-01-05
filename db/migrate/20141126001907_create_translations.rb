class CreateTranslations < ActiveRecord::Migration
  def change
    create_table :translations do |t|
      t.string :eng_title
      t.string :rus_title
      t.text :eng_body
      t.text :rus_body

      t.timestamps
    end
  end
end
