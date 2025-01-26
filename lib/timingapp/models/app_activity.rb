# frozen_string_literal: true

module Timingapp
  class AppActivity < TimingRecord
    self.table_name = "AppActivity"
    self.primary_key = "id"

    belongs_to :application, foreign_key: "applicationID"
    belongs_to :localDevice, foreign_key: "localDeviceID", primary_key: "localID", class_name: "Timingapp::Device"
    belongs_to :project, foreign_key: "projectID"
    belongs_to :title, foreign_key: "titleID"
    belongs_to :path, foreign_key: "pathID"

    def startDate
      Time.at(super)
    end

    def endDate
      Time.at(super)
    end
  end
end
