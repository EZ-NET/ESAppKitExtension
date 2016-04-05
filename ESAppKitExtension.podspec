Pod::Spec.new do |s|

  s.name         = "ESAppKitExtension"
  s.version      = "0.1.2"
  s.summary      = "EZ-NET Extension Swift Module for AppKit."

  s.description  = <<-DESC
                   It is a swift module that implements basic features.
                   DESC

  s.homepage     = "https://github.com/EZ-NET/ESAppKitExtension"

  s.license      = { :type => "MIT", :file => "LICENSE" }

  s.author             = { "Tomohiro Kumagai" => "http://ez-net.jp/profile/" }
  s.social_media_url   = "http://twitter.com/es_kumagai"

  s.osx.deployment_target = "10.9"

  s.source       = { :git => "https://github.com/EZ-NET/ESAppKitExtension.git", :tag => s.version }
  s.source_files  = "ESAppKitExtension/**/*.swift"

end

