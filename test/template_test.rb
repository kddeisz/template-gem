# frozen_string_literal: true

require 'test_helper'

class TemplateTest < Minitest::Test
  def test_version
    refute_nil ::Template::VERSION
  end
end
