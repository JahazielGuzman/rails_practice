require "spec_helper"
require "zombie"

describe Zombie do
    # your examples go here
    let(:zombie) { Zombie.new }

    def is_ash?(zombo)
        return zombo.name == 'Ash'
    end

    it "is named Ash" do
        expect(is_ash?(zombie)).to be true
    end

    it "turned more than one day ago" do
        expect(zombie.hours_infected).to be < 1
    end
end