require 'rspec'
require 'dictionary'

describe Term do
  before(:each) do
    Term.clear
  end

  it 'initilizes the dictionary with a word and definition' do
    my_dic = Term.new('Carrot', 'delicious orange vegetable')
    my_dic.should be_an_instance_of Term
  end

  it "shows the definition of the word" do
    my_dic = Term.new('Carrot', 'delicious orange vegetable')
    my_dic.show.should eq "Carrot: delicious orange vegetable"
  end

  describe ".all" do
    it "initializes an empty array to store the words and definitions" do
      Term.all.should eq []
    end

    it 'saves all of the words and definitions in the word bank array' do
      my_dic = Term.new('Carrot', 'delicious orange vegetable')
      my_dic.save
      Term.all.should eq [my_dic]
    end
  end

  describe ".clear" do
    it "clears all the information in the array for testing purposes" do
      Term.new('Carrot', 'delicious orange vegetable').save
      Term.clear
      Term.all.clear.should eq []
    end
  end

  describe ".list_words" do
    it "lists the words" do
      my_dic_1 = Term.new('Carrot', 'delicious orange vegetable')
      my_dic_1.save
      my_dic_2 = Term.new('Mango', 'orange tropical fruit')
      my_dic_2.save
      my_dic_3 = Term.new('Apple', 'cold weather fruit, usually green')
      my_dic_3.save
      Term.list_words.should eq ['Carrot','Mango','Apple']
    end
  end

  describe ".remove" do
    it "removes a dictionary term" do
      my_dic_1 = Term.new('Carrot', 'delicious orange vegetable')
      my_dic_1.save
      my_dic_2 = Term.new('Mango', 'orange tropical fruit')
      my_dic_2.save
      my_dic_3 = Term.new('Apple', 'cold weather fruit, usually green')
      my_dic_3.save
      Term.remove('Mango')
      Term.all.should eq [my_dic_1, my_dic_3]
    end
  end

  describe ".edit" do
    it "replaces the selected word with new information" do
    my_dic = Term.new('Mango' , 'orange tropical fruit')
    my_dic.save
    Term.edit('w', 'Mango', 'Orange')
    Term.all.should eq ['Orange' , 'orange tropical fruit']
    # Term.edit('Orange', 'd')
    # Term.all.should eq ['Orange', 'orange cold weather fruit']
    end
  end













end
