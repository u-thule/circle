class AlterMailToString < ActiveRecord::Migration
  def self.up
    change_column :circles, :mail, :string
  end

  def self.down
    change_column :circles, :mail, :text
  end
end
