Pod::Spec.new do |s|
  s.name         = "AnnictAPIClient"
  s.version      = "0.0.1"
  s.summary      = "A Swift API Client for Annict"
  s.description  = <<-DESC
                    This is very simple HTTP client for Annict
                   DESC
  s.homepage     = "https://github.com/alitaso345/swift-annict-client"
  s.license      = { :type => "MIT", :file => "LICENSE" }
  s.author             = { "alitaso345" => "a.maruyama@uec.ac.jp" }
  s.social_media_url   = "https://twitter.com/alitaso345"
  s.platform     = :ios, "9.0"
  s.ios.deployment_target = "8.0"
  s.osx.deployment_target = "10.11"
  s.source       = { :git => "https://github.com/alitaso345/swift-annict-client.git", :tag => "#{s.version}" }
  s.source_files  = "AnnictAPIClient/*.swift"
  s.exclude_files = "Classes/Exclude"
  s.requires_arc = true
end
