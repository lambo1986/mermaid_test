class Mermaid
    attr_reader = :age, :name
    def initialize(name = "Sereia", age = 22)
        @name = name
        @age = age
    end

    def get_older
        @age = @age + 1
    end
end

mermaid = Mermaid.new("Sereia", 22)
mermaid.get_older
