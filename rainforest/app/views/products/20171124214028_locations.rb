class Locations < ActiveRecord::Migration[5.0]
  def change
    create_table :locations do |t|
      t.string  :category
      t.string  :placename
      t.string  :address

    end
  end  
end
