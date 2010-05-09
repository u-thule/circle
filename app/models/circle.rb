class Circle < ActiveRecord::Base
  file_column :image, :magick => {
    :versions => {
      :favicon => "32x32",
      :middle => "120x120",
      :large => "300x300",
    }
  }
end
