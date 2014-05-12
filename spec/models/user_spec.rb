require 'spec_helper'

describe User do
  it {should have_many(:available_items)}
  it {should have_many(:wants)}
  it {should have_many(:listed_items).through(:available_items).source(:item)}
  it {should have_many(:wanted_items).through(:wants).source(:item)}
end
