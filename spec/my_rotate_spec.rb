describe "#my_rotate" do
  let(:cars) { ["CR-V", "Camry", "Escape", "Forester", "Highlander"] }
  let(:alphabet) { ["a", "b", "c", "d", "e", "f", "g", "h", "i", "j"] }
  let(:fishes) { ["clown fish", "blue tang"] }
  let(:animals) { ["aardvark", "hedgehog", "wallaby"] }
  let(:butterflies) { ["monarch", "viceroy", "tiger swallowtail", "goliath birdwing"] }

  it "doesn't change the original array" do
    result = cars.my_rotate
    expect(cars).to eq(cars)
    expect(result).to_not eq(cars)
  end

  it "doesn't use #rotate" do
    [:rotate, :rotate!].each do |method|
      expect_any_instance_of(Array).to_not receive(method)
    end
    result = cars.my_rotate
  end

  context "no argument" do
    it "defaults to shifting every element one left" do
      expect(["bear", "tiger"].my_rotate).to eq(["tiger", "bear"])
      expect([1, 3, 5, 7].my_rotate).to eq([3, 5, 7, 1])
      expect(alphabet.my_rotate).to eq(["b", "c", "d", "e", "f", "g", "h", "i", "j", "a"])
    end
  end

  context "with postive argument" do
    it "moves elements arg number of times to the left" do
      expect(fishes.my_rotate(1)).to eq(["blue tang", "clown fish"])
      expect(fishes.my_rotate(2)).to eq(fishes)
      expect(fishes.my_rotate(3)).to eq(["blue tang", "clown fish"])
      expect(fishes.my_rotate(4)).to eq(fishes)

      expect(animals.my_rotate(1)).to eq(["hedgehog", "wallaby", "aardvark"])
      expect(animals.my_rotate(2)).to eq(["wallaby", "aardvark", "hedgehog"])
      expect(animals.my_rotate(3)).to eq(animals)
      expect(animals.my_rotate(6)).to eq(animals)

      expect(butterflies.my_rotate(1)).to eq(["viceroy", "tiger swallowtail", "goliath birdwing", "monarch"])
      expect(butterflies.my_rotate(2)).to eq(["tiger swallowtail", "goliath birdwing", "monarch", "viceroy"])
      expect(butterflies.my_rotate(3)).to eq(["goliath birdwing", "monarch", "viceroy", "tiger swallowtail"]) 
      expect(butterflies.my_rotate(4)).to eq(butterflies) 
      expect(butterflies.my_rotate(8)).to eq(butterflies)      
    end
  end

  context "with negative argument" do
    it "moves elements arg number of times to the rigth" do
      expect(fishes.my_rotate(-1)).to eq(["blue tang", "clown fish"])
      expect(fishes.my_rotate(-2)).to eq(fishes)
      expect(fishes.my_rotate(-3)).to eq(["blue tang", "clown fish"])
      expect(fishes.my_rotate(-4)).to eq(fishes)

      expect(animals.my_rotate(-1)).to eq(["wallaby", "aardvark", "hedgehog"])
      expect(animals.my_rotate(-2)).to eq(["hedgehog", "wallaby", "aardvark"])
      expect(animals.my_rotate(-3)).to eq(animals)
      expect(animals.my_rotate(-6)).to eq(animals)

      expect(butterflies.my_rotate(-1)).to eq(["goliath birdwing", "monarch", "viceroy", "tiger swallowtail"])
      expect(butterflies.my_rotate(-2)).to eq(["tiger swallowtail", "goliath birdwing", "monarch", "viceroy"])
      expect(butterflies.my_rotate(-3)).to eq(["viceroy", "tiger swallowtail", "goliath birdwing", "monarch"]) 
      expect(butterflies.my_rotate(-4)).to eq(butterflies)      
      expect(butterflies.my_rotate(-8)).to eq(butterflies) 
    end
  end

  context "edge cases" do
    it "doesn't rotate when passed an argument of 0" do
      expect([1,2,3,4].my_rotate(0)).to eq([1,2,3,4])
      expect(alphabet.my_rotate(0)).to eq(alphabet)
    end

    it "doesn't error out when given an array of one element" do
      expect([].my_rotate).to eq([])
      expect([].my_rotate(-9)).to eq([])
    end

    it "doesn't error out when given an empty array" do
      expect([1].my_rotate).to eq([1])
      expect([1].my_rotate(-9)).to eq([1])
      expect([1].my_rotate(100)).to eq([1])
    end
  end
end
