class AddFieldsToJob < ActiveRecord::Migration
  def change
    add_column :jobs, :client, :string
    add_column :jobs, :description, :text
    add_column :jobs, :url, :string
    add_column :jobs, :repository, :string
  end
end
