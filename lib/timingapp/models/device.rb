# frozen_string_literal: true

module Timingapp
  class Device < TimingRecord
    self.table_name = "Device"
    self.primary_key = "localID"

    json_column :property_bag
  end
end
