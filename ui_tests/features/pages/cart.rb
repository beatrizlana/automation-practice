class Cart < SitePrism::Page
    set_url ''

    element :go_to_cart, 'a[@href="http://automationpractice.com/index.php?controller=order"]'
    element :continue_shopping_btn, '.clearfix .continue .btn .btn-default .button .exclusive-medium'

    def continue_shopping
        continue_shopping_btn.click
    end
end