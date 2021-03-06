module Rcov
  class FailureReport < TextSummary # :nodoc:
    def execute
      puts summary
      coverage = code_coverage * 100
      if coverage < @failure_threshold
        puts "You failed to satisfy the coverage threshold of #{@failure_threshold}%."
        exit(1)
      end
      if (coverage - @failure_threshold) > 3
        puts "Your coverage is close to your threshold of #{@failure_threshold}. Please increase it."
      end
    end
  end
end
