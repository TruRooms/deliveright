RSpec.describe Deliveright::Request::Order do
  it "has a find method" do
    expect(Deliveright::Request::Order.new(nil,nil,nil)).to respond_to(:find)
  end

  it "has a create method"
  it "has a create_delivery_note method"
  it "has a add_order_note method"
  it "has a update_customer_info method"
  it "has a destroy method"
  it "has a bill_of_lading method"
  it "has a shipping_labels method"
  it "has a create_line_item_method"
  it "has a destroy_line_item_method"
end
