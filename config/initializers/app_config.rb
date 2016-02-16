AppConfig = Figgy.build do |c|
  c.root = Rails.root.join('etc')
  c.define_overlay :default, nil
  c.define_overlay(:environment) { Rails.env }
end
