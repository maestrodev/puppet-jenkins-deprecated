require "#{File.join(File.dirname(__FILE__),'..','spec_helper')}"

describe 'jenkins' do
  context "CentOS 5.6" do
    let(:facts) { {
      :operatingsystem => 'CentOS',
      :operatingsystemrelease => '5.6',
    } }
    it { should_not contain_package('dejavu-sans-fonts') }
  end

  context "CentOS 6.3" do
    let(:facts) { {
      :operatingsystem => 'CentOS',
      :operatingsystemrelease => '6.3',
    } }
    it { should contain_package('dejavu-sans-fonts') }
  end
end
