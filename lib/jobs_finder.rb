module Cavalcade
  # Locates defined jobs ProcessingJobs.
  class JobsFinder
    def self.defined_jobs
      classes = []
      Module.constants.each do |c|
        the_obj = eval(c.to_s)
        if the_obj.is_a?(Class) && the_obj.ancestors.include?(Job) && the_obj != Job
          classes << the_obj
        end
      end
      classes
    end
  end

end