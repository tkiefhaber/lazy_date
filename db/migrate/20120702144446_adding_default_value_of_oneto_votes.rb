class AddingDefaultValueOfOnetoVotes < ActiveRecord::Migration
  def up
  	execute "alter table stories alter column votes_count set default 0"
  end

  def down
  end
end
