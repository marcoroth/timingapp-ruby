# frozen_string_literal: true

module Timingapp
  class TaskActivity < TimingRecord
    self.table_name = "TaskActivity"
    self.primary_key = "id"

    belongs_to :project, foreign_key: :projectID

    scope :running, -> { where(isRunning: true) }
    scope :deleted, -> { where(isDeleted: true) }

    json_column :property_bag

    time_column :startDate
    time_column :endDate
  end
end
