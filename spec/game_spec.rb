require 'game'

RSpec.describe Game do

  let(:jack)      {double :david}
  let(:jill)      {double :goliath}
subject { described_class.new(jack, jill) }

  it "should attack player 2" do
  allow(jill).to receive(:get_attacked).and_return(true)
  expect(subject.player_1_attack).to eq true
  end

  it "should attack player 1" do
  allow(jack).to receive(:get_attacked).and_return(true)
  expect(subject.player_2_attack).to eq true
  end

  it "be game over when player 1 loses" do
  allow(jack).to receive(:lost?).and_return(true)
  expect(subject.game_over).to eq [jack, jill]
 end


 it "be game over when player 2 loses" do
allow(jack).to receive(:lost?).and_return(false)
 allow(jill).to receive(:lost?).and_return(true)
 expect(subject.game_over).to eq [jill, jack]
 end

end
