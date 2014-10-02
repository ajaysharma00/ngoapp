class CreateImages < ActiveRecord::Migration
  def change
    create_table :images do |t|

      t.references :imageable, polymorphic: true
      #t.references :gallery, index: true
      t.timestamps
    end
  end
end
