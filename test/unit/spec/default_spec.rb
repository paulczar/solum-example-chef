# Encoding: utf-8

require_relative 'spec_helper'

describe 'chef-example::default' do
  before { stub_resources }
  describe 'ubuntu' do
    let(:chef_run) { ChefSpec::Runner.new.converge(described_recipe) }

    it 'installs nginx' do
      expect(chef_run).to include_recipe('nginx::default')
    end

  end
end
