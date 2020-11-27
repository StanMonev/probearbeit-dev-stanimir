ShopifyApp.configure do |config|
  config.application_name = "My Shopify App"
  config.api_key = ENV['SHOPIFY_API_KEY']
  config.secret = ENV['SHOPIFY_API_SECRET']
  config.old_secret = "<old_secret>"
  config.scope = "read_products, read_customers" # Consult this page for more scope options:
                                 # https://help.shopify.com/en/api/getting-started/authentication/oauth/scopes
  config.embedded_app = true
  config.after_authenticate_job = false
  config.api_version = "2020-10"
  config.session_repository = Shop
                                 #config.root_url = '/nested'
  config.webhooks = [
    {topic: 'customer/create', address: 'https://c06e0942abafc6a57d133ac8d500776a.m.pipedream.net', format: 'json'},
  ]
end
