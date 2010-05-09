class CreateCircles < ActiveRecord::Migration
  def self.up
    create_table :circles do |t|
      t.string :name
      t.string :alias
      t.text :mail
      t.text :description

      t.timestamps
    end
  end

  def self.down
    drop_table :circles
  end
end
