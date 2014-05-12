require 'spec_helper'

describe Item do
  it { should belong_to(:category)}
  it { should have_many(:available_items)}
  it { should have_many(:wants)}
  it { should have_many(:owners).through(:available_items).source(:user)}
  it { should have_many(:wanters).through(:wants).source(:user)}

end
