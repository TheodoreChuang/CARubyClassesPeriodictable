class Element
    attr_accessor :name, :weight, :number
    def initialize(name, number, weight)
        @name = name
        @number = number
        @weight = weight
        self.class.all << self
    end

    @elements = []
    class << self
        attr_accessor :elements
        def all
            @elements
        end

        def display_all
            # for e in @elements do
            #     puts "Name: #{e.name}\nAtomic number: #{e.number}\nAtomic weight: #{e.weight.round}\n\n"
            # end
            @elements.each { |e| puts "Name: #{e.name}\nAtomic number: #{e.number}\nAtomic weight: #{e.weight.round}\n\n"}
        end

    def round_weight
        puts @weight.round
    end
end