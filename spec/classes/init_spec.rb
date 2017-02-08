require 'spec_helper'
describe 'chrctcp' do
  context 'with default values for all parameters' do
    it { should contain_class('chrctcp') }
  end
end
