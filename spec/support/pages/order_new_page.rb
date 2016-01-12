class OrderNewPage
  include PageObject

  page_url 'http://lvh.me:3000/orders/new'

  text_field(:product, id: 'order_product')
  text_field(:price, id: 'order_price')
  button(:submit, name: 'commit')
  button(:cancel, link: 'Cancel')

  def create_order(product, price)
    self.product = product
    self.price = price
    submit
  end
end