# filename: dynamic_loading_spec.rb

require_relative '../lib/dynamic_loading'
require_relative 'spec_helper'

describe 'Dynamic Loading' do

  before(:each) do
    @dynamic_loading = DynamicLoading.new(@driver)
  end

  it 'Example 1: Hidden Element' do
    @dynamic_loading.example 1
    @dynamic_loading.start

    expect(@dynamic_loading.finish_text_present?).to eql true
  end

  it 'Example 2: Rendered after the fact' do
    @dynamic_loading.example 2
    @dynamic_loading.start
    expect(@dynamic_loading.finish_text_present?).to eql true
  end

end
