class AddScreenshotToJobs < ActiveRecord::Migration
  def change
    add_column :jobs, :screenshot, :string
  end
end
