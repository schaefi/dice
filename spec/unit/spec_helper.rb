require File.expand_path('../../../lib/dice', __FILE__)

bin_path = File.expand_path( "../../../bin/", __FILE__ )

if ENV['PATH'] !~ /#{bin_path}/
  ENV['PATH'] = bin_path + File::PATH_SEPARATOR + ENV['PATH']
end

RSpec.configure do |config|
  config.before(:each) do
    allow(Dice.logger).to receive(:info)
    Dice.setup_options(Hash.new)
  end
end

