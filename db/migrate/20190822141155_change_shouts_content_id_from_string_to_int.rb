class ChangeShoutsContentIdFromStringToInt < ActiveRecord::Migration[5.2]
  def up
    change_column :shouts, :content_id, 'integer USING CAST(content_id AS integer)'
  end

  def down
    change_column :shouts, :content_id, :string
  end
end
