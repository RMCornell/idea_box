require 'rails_helper'

RSpec.describe Idea, type: :model do
  let(:idea) do
    Idea.new(name: "Ninja Nano Bots", description: "What it sounds like man!")
  end

  it 'is valid' do
    expect(idea).to be_valid
  end

  it 'is invalid without a name' do
    idea.name = nil
    expect(idea).not_to be_valid
  end

  it 'is invalid without a description' do
    idea.description = nil
    expect(idea).not_to be_valid
  end
end
