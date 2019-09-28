require 'chemical_elements/periodic_table'

# Extend PeriodicTable Class
module ChemicalElements
  def self.included(model_class)
    model_class.extend PeriodicTable
  end
end
