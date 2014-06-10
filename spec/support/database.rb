module SpecHelpers
  module Database
    def config_cleaner
      DatabaseCleaner.strategy = :truncation
      DatabaseCleaner.start

      yield

      Capybara.reset_sessions! if defined?(Capybara)

      # https://github.com/jonleighton/poltergeist/issues/375
      page.driver.reset! if defined?(page)

      DatabaseCleaner.clean
    end
  end
end
