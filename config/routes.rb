Rails.application.routes.draw do
# orderlistコントローラ
    get 'order/top' => 'orderlist#top_page'

    get 'order/set_menu' => 'orderlist#set_menu'
    get 'order/alacarte_menu' => 'orderlist#alacarte'
    get 'order/noodle_menu' => 'orderlist#noodle'
    get 'order/rice_menu' => 'orderlist#rice'
    get 'order/drink_menu' => 'orderlist#drink'
    get 'order/dessert_menu' => 'orderlist#dessert'
    get 'order/recommend_menu' => 'orderlist#recommend'
    get 'order/search' => 'orderlist#search'
    
    get 'order/pre_order/:id' => 'orderlist#pre_order'
    post 'order/pre_order/:id' => 'orderlist#post_order'
    get 'order/ordered/:id' => 'orderlist#ordered'

    get 'order/modal_test/:id' => 'orderlist#modal', as: 'order_indiv'
    post 'order/modal_order' => 'orderlist#order_create'
    
end
