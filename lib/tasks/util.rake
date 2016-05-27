namespace :util do
  task :retrieve_managers => :environment do
  	service = XigniteRetrievalService.new

    Manager.all.each do |manager|
    	service.retrieve_holdings(manager.cik)
    end
  end
end