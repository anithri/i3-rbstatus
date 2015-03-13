require 'rspec'
require 'i3/blocks/clock'

describe I3::Blocks::Clock do
  let(:format){ '%Y-%m-%d %H:%M:%S' }
  subject { described_class.new(format) }
  it { is_expected.to be_a described_class }
  it { expect(subject.format).to eq format }
  it { expect(subject.block).to be_a I3::BarProtocol }

  describe '.tick' do
    subject { described_class.new(format).tick }
    it { is_expected.to be_a String }
    it { is_expected.to match /\d\d\d\d-\d\d-\d\d \d\d:\d\d:\d\d/ }
  end
end
