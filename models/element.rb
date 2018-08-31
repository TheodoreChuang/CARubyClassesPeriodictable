class Element
  attr_accessor :name, :appearance, :atomic_mass, :boil, :category, :color, :density, :discovered_by, :melt, :molar_heat, :named_by, :number, :period, :phase, :source, :spectral_img, :summary, :symbol, :xpos, :ypos, :shells

  def initialize(hash)
    @name = hash["name"]
    @appearance = hash["appearance"]
    @atomic_mass = hash["atomic_mass"]
    @boil = hash["boil"]
    @category = hash["category"]
    @color = hash["color"]
    @density = hash["density"]
    @discovered_by = hash["discovered_by"]
    @melt = hash["melt"]
    @molar_heat = hash["molar_heat"]
    @named_by = hash["named_by"]
    @number = hash["number"]
    @period = hash["period"]
    @phase = hash["phase"]
    @source = hash["source"]
    @spectral_img = hash["spectral_img"]
    @summary = hash["summary"]
    @symbol = hash["symbol"]
    @xpos = hash["xpos"]
    @ypos = hash["ypos"]
    @shells = hash["shells"]
    self.class.elements << self
  end

  @elements = []
  class << self
    attr_accessor :elements

    def display_all
      for e in @elements
        e.display_element
      end
      nil
    end
  end

  def display_element
    puts "Name: #{@name} | Atomic number: #{@number} | Atomic Mass: #{round_atomic_mass}"
  end

  def round_atomic_mass
    print @atomic_mass.round unless @atomic_mass == nil
  end
end

# TODO: Dynamically generate @instance_variables and :accessor from imported data
