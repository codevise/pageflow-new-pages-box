require 'pageflow-public-i18n'

module Pageflow
  module NewPagesBox
    class Engine < Rails::Engine
      isolate_namespace Pageflow::NewPagesBox

      if Rails.respond_to?(:autoloaders)
        lib = root.join('lib')

        config.autoload_paths << lib
        config.eager_load_paths << lib

        initializer 'pageflow_new_pages_box.autoloading' do
          Rails.autoloaders.main.ignore(
            lib.join('pageflow-new-pages-box.rb'),
            lib.join('pageflow/new_pages_box/version.rb')
          )
        end
      else
        config.autoload_paths << File.join(config.root, 'lib')
      end
    end
  end
end
