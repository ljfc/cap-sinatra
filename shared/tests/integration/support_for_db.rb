require 'sequel'

def set_up_test_db
  # Prevent another DB being created if this is called more than once.
  @_test_db ||= Sequel.sqlite.tap do |db|
    db.create_table :parents do
      String :name
    end
    db.create_table :children do
      String :name
    end
  end
end

DB = set_up_test_db
