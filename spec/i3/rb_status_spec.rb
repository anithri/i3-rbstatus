require 'spec_helper'
require 'i3/rb_status'

describe I3::RbStatus do
  it 'has a version number' do
    expect(I3::RbStatus::VERSION).not_to be nil
  end

  describe "::system_bus" do
    subject { described_class.system_bus }
    it { is_expected.to be_a DBus::SystemBus }
  end

  describe "::session_bus" do
    subject { described_class.session_bus }
    it { is_expected.to be_a DBus::SessionBus }
  end

end
