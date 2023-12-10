# frozen_string_literal: true

# ActiveAdmin v>=3 dependent on Ransack v>=4,
# which equires explicit allowlisting of attributes and associations
# https://t.ly/Fm_X1
module RansackSearchable
  def ransackable_attributes(_auth_object = nil)
    attribute_names
  end

  def ransackable_associations(_auth_object = nil)
    reflect_on_all_associations.map { |assoc| assoc.name.to_s }
  end
end
