# frozen_string_literal: true

# ActiveAdmin v>=3 dependent on Ransack v>=4,
# which equires explicit allowlisting of attributes and associations
# https://t.ly/Fm_X1
module RansackPatch
  def ransackable_attributes(_auth_object = nil)
    authorizable_ransackable_attributes
  end

  def ransackable_associations(_auth_object = nil)
    authorizable_ransackable_associations
  end
end

ActiveSupport.on_load(:active_record) do
  extend RansackPatch
end
