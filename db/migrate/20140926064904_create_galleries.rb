class CreateGalleries < ActiveRecord::Migration
  def change
    create_table :galleries do |t|
      t.string :name
      t.string :des
      t.references :user, index: true

      t.timestamps
    end
  end
end
