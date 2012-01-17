Factory.define :root_section, :class=>Section do |m|
  m.name "Root"
  m.path "/"
  m.root true
end

Factory.define :public_section, :class=>Section do |m|
  m.sequence(:name) {|n| "Public Section #{n}"}
  m.sequence(:path) {|n| "/public-section-#{n}"}
  m.parent :factory=>:root_section
end