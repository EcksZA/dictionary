require 'rspec'
require 'dictionary'

describe Term do

  it 'initilizes the dictionary with a word and definition' do
    my_dic = Term.new('Carrot', 'delicious orange vegetable')
    my_dic.should be_an_instance_of Term
  end

  it "shows the word an definition" do
    my_dic = Term.new('Carrot', 'delicious orange vegetable')
    my_dic.show.should eq "Carrot: delicious orange vegetable"
  end

end
