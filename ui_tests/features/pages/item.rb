class Item < SitePrism::Page
set_url '?id_product=1&controller=product'

    element :add_item_to_cart, '#add_to_cart'

    def add_to_cart
        add_item_to_cart.click
    end
end