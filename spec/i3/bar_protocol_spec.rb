require 'rspec'
require 'i3/bar_protocol'

describe I3::BarProtocol do
  let(:params) { {full_text: 'Testing', short_text: 'test', color: '#333333'} }
  let(:empty_params) do
    [:min_width, :align,
     :urgent, :name,
     :instance, :separator,
     :separator_block_width
    ].reduce({}) { |h, v| h[v] = nil; h }
  end
  subject { described_class.new(params) }
  it { is_expected.to have_attributes params }
  it { is_expected.to have_attributes empty_params }

  describe '.to_json' do
    subject { described_class.new(params).to_json }
    it { is_expected.to eq params.to_json }

    context 'with no params' do
      subject { described_class.new.to_json }
      it { is_expected.to eq "{}" }
    end

  end


end
