# frozen_string_literal: true

module Timingapp
  class Project < TimingRecord
    self.table_name = "Project"
    self.primary_key = "id"

    has_parent

    belongs_to :membership, foreign_key: :membershipID, class_name: "TODO"

    scope :archived, -> { where(isArchived: true) }

    json_column :property_bag
  end
end
