require 'prob1'

RSpec.describe VendingMachine do
  describe ".purchase" do
    it "allows bottles to be purchased" do
      v1 = VendingMachine.new
      v1.purchase(5)
      expect(v1.get_inventory).to eq(15)
    end
  end

  describe ".restock" do
    it "allows bottles to be restocked" do
      v1 = VendingMachine.new
      v1.restock(5)
      expect(v1.get_inventory).to eq(25)
    end
  end

  describe ".get_inventory" do
    it "allows bottles inventory to be checked" do
      v1 = VendingMachine.new
      v1.restock(5)
      expect(v1.get_inventory).to eq(25)
    end
  end

  describe ".report" do
    it "allows the machine to do a report" do
      v1 = VendingMachine.new
      expect { v1.report }.to output("Inventory: 20 bottles\n").to_stdout
    end
  end
end
