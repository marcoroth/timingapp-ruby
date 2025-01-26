# frozen_string_literal: true

module Timingapp
  class TaskActivity < TimingRecord
    self.table_name = "TaskActivity"
    self.primary_key = "id"
  end
end
