require "glueby/version"
require 'tapyrus'

module Glueby
  autoload :Contract, 'glueby/contract'
  autoload :Wallet, 'glueby/wallet'
  autoload :Internal, 'glueby/internal'

  begin
    class Railtie < ::Rails::Railtie
      rake_tasks do
        load "tasks/glueby/contract.rake"
        load "tasks/glueby/contract/timestamp.rake"
      end
    end
  rescue
    # Rake task is unavailable
    puts "Rake task is unavailable"
  end
end
