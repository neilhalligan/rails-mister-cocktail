class RemoveDosesColumnFromDoses < ActiveRecord::Migration[5.0]
  def change
    remove_column :doses, :dose_id
  end
end
