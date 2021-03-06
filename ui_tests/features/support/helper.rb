# encoding: utf-8
# !/usr/bin/env ruby
require 'fileutils'
module Helper
  def take_screenshot(file_name, result)
    file_path = "results/screenshots/test_#{result}"
    screenshot = "#{file_path}/#{file_name}.png"
    page.save_screenshot(screenshot)
    attach(screenshot, 'image/png')
  end

  def wait_for_ajax
    Timeout.timeout(Capybara.default_max_wait_time) do
      loop until finished_all_ajax_requests?
    end
  end

  def finished_all_ajax_requests?
    page.evaluate_script('jQuery.active').zero?
  end
end
