require 'chefspec'

RSpec.configure do |config|
  config.cookbook_path = '../'
end

describe 'fail::default' do
  let(:chef_run) { ChefSpec::SoloRunner.converge(described_recipe) }

  it 'raise an error' do
    expect { chef_run }.to raise_error(RuntimeError)
  end
end
