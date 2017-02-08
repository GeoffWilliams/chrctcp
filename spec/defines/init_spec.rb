require 'spec_helper'
describe 'chrctcp', :type => :define do

  context 'compiles when invoked correctly' do
    let :title do
      "hostmibd"
    end
    let :params do
      {
        :ensure => "disabled",
      }
    end
    it { should compile }
  end

end
