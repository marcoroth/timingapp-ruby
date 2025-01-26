# frozen_string_literal: true

module Timingapp
  class Project < TimingRecord
    self.table_name = "Project"
    self.primary_key = "id"
  end
end
