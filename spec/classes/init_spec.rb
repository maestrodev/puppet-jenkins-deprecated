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

  context "No jenkins_java_options" do
    it "should have default options" do
      should contain_file('/etc/sysconfig/jenkins').with_content(
        %r[JENKINS_JAVA_OPTIONS="-Djava.awt.headless=true"])
    end
  end

  context "With jenkins_java_options" do
    let(:params) { {
      :jenkins_java_options => '-Dhudson.model.UpdateCenter.never=true -Dhudson.model.DownloadService.never=true'
    } }
    it "should have default and custom options" do
      should contain_file('/etc/sysconfig/jenkins').with_content(
        %r[JENKINS_JAVA_OPTIONS="-Djava.awt.headless=true -Dhudson.model.UpdateCenter.never=true -Dhudson.model.DownloadService.never=true"]
      )
    end
  end
end
