require 'spec_helper'

describe AvailableItem do
  it {should belong_to(:item)}
  it {should belong_to(:user)}
end
