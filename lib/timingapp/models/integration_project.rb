# frozen_string_literal: true

module Timingapp
  class IntegrationProject < TimingRecord
    self.table_name = "IntegrationProject"
    self.primary_key = "id"

    belongs_to :integration, foreign_key: :integration_id
    belongs_to :origin, foreign_key: :origin_id, class_name: "TODO"
    belongs_to :timing_project, foreign_key: :timing_project_id

    time_column :last_modified_origin
    time_column :last_modified_timing
    time_column :deleted_by_integration_at
    time_column :hidden_at

    json_column :property_bag
  end
end
