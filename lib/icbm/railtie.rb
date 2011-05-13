require 'icbm/content_block_helper'
module Icbm
  class Railtie < Rails::Railtie
    initializer 'icbm.content_block_helper' do
      ActionView::Base.send(:include, ContentBlockHelper)
    end
  end
end
