# frozen_string_literal: true
require "bundler/postit_trampoline"
require "bundler/shared_helpers"

if Bundler::SharedHelpers.in_bundle?
  require "bundler"

  if STDOUT.tty? || ENV["BUNDLER_FORCE_TTY"]
    begin
      Bundler.setup
    rescue Bundler::BundlerError => e
      puts "\e[31m#{e.message}\e[0m"
      puts e.backtrace.join("\n") if ENV["DEBUG"]
      if e.is_a?(Bundler::GemNotFound)
        puts "\e[33mRun `bundle install` to install missing gems.\e[0m"
      end
      exit e.status_code
    end
  else
    Bundler.setup
  end

  unless ENV["BUNDLE_POSTIT_TRAMPOLINING_VERSION"]
    # Add bundler to the load path after disabling system gems
    # This is guaranteed to be done already if we've trampolined
    bundler_lib = File.expand_path("../..", __FILE__)
    $LOAD_PATH.unshift(bundler_lib) unless $LOAD_PATH.include?(bundler_lib)
  end

  Bundler.ui = nil
end
