require 'player'

RSpec.describe Player do

  subject { described_class.new("Nic") }

  it "should return its name when asked" do
    expect(subject.name).to eq "Nic"
  end

  it "start player with 400 hp" do
     expect(subject.hp).to eq 400
  end

 it "should reduce hp by 100 when attacked" do
   subject.get_attacked
   expect(subject.hp).to eq 300
 end

 it "should be lost when hp is 0" do
   4.times {subject.get_attacked}
  expect(subject.lost?).to eq true
 end

end
