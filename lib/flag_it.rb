require "flag_it/version"
require "flag_it/hello"

module FlagIt
  def foo
    "bar"
  end

  def flag_it
    Include FlagIt
  end
end

ActiveRecord::Base.extend FlagIt