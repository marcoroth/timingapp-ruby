# frozen_string_literal: true

module Timingapp
  class Device < TimingRecord
    self.table_name = "Device"
    self.primary_key = "id"
  end
end
