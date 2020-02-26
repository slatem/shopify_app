module ShopifyApp
  class Engine < Rails::Engine
    engine_name 'shopify_app'
    isolate_namespace ShopifyApp

    initializer "shopify_app.middleware" do |app|
      app.config.middleware.insert_before(ActionDispatch::Cookies, ShopifyApp::SameSiteCookieMiddleware)
    end

  end
end
