require 'pageflow/new_pages_box/engine'
require 'pageflow/new_pages_box/version'

module Pageflow
  module NewPagesBox
    def self.widget_type
      NewPagesBox::WidgetType.new
    end
  end
end
