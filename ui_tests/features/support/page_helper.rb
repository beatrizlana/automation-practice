Dir[File.join(File.dirname(__FILE__),
    '../pages/*_page.rb')].each { |file| require file }

# Modulos para chamar as classes instanciadas
module Pages
    def cart
        @cart ||= Cart.new
    end

    def item
        @item ||= Item.new
    end
end
