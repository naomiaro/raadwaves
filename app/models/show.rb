class Show < ActiveRecord::Base
  has_many :show_rules, dependent: :destroy
  has_many :show_instances, dependent: :destroy

  validates :name, :description, presence: true

  accepts_nested_attributes_for :show_rules,
    allow_destroy: true,
    reject_if: proc {|attr|
    }

end
