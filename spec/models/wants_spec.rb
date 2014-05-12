require 'spec_helper'

describe Want do
  it {should belong_to(:item)}
  it {should belong_to(:user)}
end
