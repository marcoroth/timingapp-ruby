# frozen_string_literal: true

module Timingapp
  class SchemaMigration < TimingRecord
    self.table_name = "schema_migrations"
    self.primary_key = "id"
  end
end
