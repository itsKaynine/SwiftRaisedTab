Pod::Spec.new do |s|
  s.name             = "SwiftRaisedTab"
  s.version          = "0.1.1"
  s.summary          = "SwiftRaisedTab recreates raised center tab item seen in many social networking apps."
  s.description      = <<-DESC
                       SwiftRaisedTab is a simple library written in Swift that recreates raised center tab item seen in many social networking apps.
                       DESC
  s.homepage         = "https://github.com/itsKaynine/SwiftRaisedTab"
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { "Punnawut Khowkittipaiboon" => "me@itskaynine.com" }
  s.source           = { :git => "https://github.com/itsKaynine/SwiftRaisedTab.git", :tag => s.version.to_s }
  s.social_media_url = 'https://twitter.com/itsKaynine'

  s.ios.deployment_target = '8.0'

  s.source_files = 'SwiftRaisedTab/*.{m,h,swift}'

  s.requires_arc = true
end