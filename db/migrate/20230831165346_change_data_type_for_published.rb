class ChangeDataTypeForPublished < ActiveRecord::Migration[7.0]
  def change
    change_column(:books, :published, :date)
  end
end
