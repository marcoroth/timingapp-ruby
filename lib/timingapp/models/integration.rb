# frozen_string_literal: true

module Timingapp
  class Integration < TimingRecord
    self.table_name = "Integration"
    self.primary_key = "id"
    self.inheritance_column = nil

    time_column :enabled_at
    time_column :paused_at
    time_column :deleted_at
    time_column :last_modified_origin
    time_column :last_modified_timing

    json_column :property_bag
  end
end
