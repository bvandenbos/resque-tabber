
module Resque

  module Tabber

    Version = '0.0.1'

    def add_tab(tab_name, tab_url)
      sinatra_url = url(tab_name)

      # Add a tab
      ::Resque::Server.class_eval %{
        get "#{sinatra_url}" do
          redirect "#{tab_url}"
        end
      }

      # Create the action to redirect
      Resque::Server.tabs << tab_name
    end

    private

    def url(name)
      '/' + name.to_s.downcase
    end

  end

end