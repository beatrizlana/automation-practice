class Cart < SitePrism::Page
    set_url ''

    element :go_to_cart, :xpath, 'a[@href="http://automationpractice.com/index.php?controller=order"]'
    element :continue_shopping_btn, '.continue .btn .btn-default .button .exclusive-medium'

    def continue_shopping
        if continue_shopping_btn.is_visible?
            continue_shopping_btn.click
        end
    end
end