# frozen_string_literal: true

module Timingapp
  class AppActivity < TimingRecord
    self.table_name = "AppActivity"
    self.primary_key = "id"

    belongs_to :device, foreign_key: :localDeviceID
    belongs_to :application, foreign_key: :applicationID
    belongs_to :title, foreign_key: :titleID
    belongs_to :path, foreign_key: :pathID
    belongs_to :project, foreign_key: :projectID

    scope :deleted, -> { where(isDeleted: true) }

    time_column :startDate
    time_column :endDate
  end
end
