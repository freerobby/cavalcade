require "resque/tasks"
require "active_support/inflector" # #underscore used to convert ClassName to class_name

require "./lib/cavalcade"

namespace :cavalcade do
  namespace :jobs do
    Cavalcade::JobsFinder.defined_jobs.each do |klass|
      classname = klass.to_s
      namespace classname.underscore do
        desc "Create new #{classname} job; set params with RUBY_PARAMS_STR= (default is nil)."
        task :enqueue do
          PARAMS = ENV["RUBY_PARAMS_STR"] || nil
          eval("Resque.enqueue(#{classname}, #{PARAMS})")
        end
      end
    end
  end
end
