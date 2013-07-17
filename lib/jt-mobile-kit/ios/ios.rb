class IOS < Thor
  include Thor::Actions
  source_root File.expand_path("../", __FILE__)
  def initialize(args=[], options={}, config={})
    super
    self.destination_root= ""
  end

  desc "init", "create cordova based ios project"
  def init
    directory :templates, "app/ios"
  end
end