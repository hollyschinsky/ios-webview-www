Pod::Spec.new do |s|

  s.name               = "ios-webview-www"
  s.version            = "0.1.0"
  s.summary            = "PhoneGap sample template project for iOS."

  s.description        = <<-DESC "A PhoneGap sample project to get started quickly with an embedded webview in a native iOS project."
                         DESC

  s.homepage           = "https://github.com/hollyschinsky/ios-webview-www"
  s.author             = { "Holly Schinsky" => "hollyschinsky@gmail.com" }
  s.social_media_url   = "http://twitter.com/devgirlfl"
  s.source             = { :git => "https://github.com/hollyschinsky/ios-webview-www.git", :tag => "0.1.0" }
  s.resources          = "resources/*"

end
