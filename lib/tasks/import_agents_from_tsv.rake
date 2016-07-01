require 'net/http'

namespace :import_agents do
  desc "rake task to fetch agent list"
  task :fetch do
    uri = URI('https://s3.amazonaws.com/lre-tmp/agents.tsv')
    imported_agents = Net::HTTP.get(uri)

    File.open(Rails.root.join('lib','assets', 'agents.tsv'), 'w') do |file|
      file.write(imported_agents)
    end
  end

  desc "rake task for populating agents from fetched list"
  task process: :environment do
    agents_tsv = Rails.root.join('lib', 'assets', 'agents.tsv')
    Agent.importTsv(agents_tsv)
  end
end
