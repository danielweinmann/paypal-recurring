module PayPal
  module Recurring
    module Response
      class Checkout < Base
        def checkout_url
          "#{PayPal::Recurring.site_endpoint(self.environment)}?cmd=_express-checkout&token=#{token}&useraction=commit"
        end
      end
    end
  end
end
