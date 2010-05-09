class AddImageToCircle < ActiveRecord::Migration
  def self.up
    add_column :circles, :image, :string, :limit => 255
  end

  def self.down
    remove_column :circles, :image
  end
end
