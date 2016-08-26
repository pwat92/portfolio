class RenameTypeInJobs < ActiveRecord::Migration
  def change
    rename_column :jobs, :type, :type_of_work
  end
end
