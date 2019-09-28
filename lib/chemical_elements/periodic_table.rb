require 'yaml'
module ChemicalElements
  # Provide chemical elements data
  class PeriodicTable
    attr_accessor :name, :symbol, :atomic_num, :atomic_amount
    CHMICAL_FILE_PATH = '../../data/chemical_elements.yml'
    def self.data
      filepath = File.join(File.dirname(__FILE__), CHMICAL_FILE_PATH)
      YAML.load_file(filepath)
    end

    def self.build(chemical_element)
      chemical = new

      chemical.name = chemical_element[:name]
      chemical.symbol = chemical_element[:symbol]
      chemical.atomic_num = chemical_element[:atomic_num]
      chemical.atomic_amount = chemical_element[:atomic_amount]

      chemical
    end

    def self.all
      ChemicalElements::PeriodicTable.data.values.map { |value| build(value) }
    end

    def self.find(string)
      return if string.nil?

      chemical_element = find_chemcial_elements(:symbol, string)
      build(chemical_element)
    end

    def self.find_by(args)
      return if args.nil?

      chemical_element = find_chemcial_elements(args.keys[0], args.values[0])
      build(chemical_element)
    end

    def self.find_chemcial_elements(key, value)
      ChemicalElements::PeriodicTable.data.values.each do |val|
        return val if val[key] == value
      end
    end
  end
end
