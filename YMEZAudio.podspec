#
#  Be sure to run `pod spec lint YMEZAudio.podspec' to ensure this is a
#  valid spec and to remove all comments including this before submitting the spec.
#
#  To learn more about Podspec attributes see https://guides.cocoapods.org/syntax/podspec.html
#  To see working Podspecs in the CocoaPods repo see https://github.com/CocoaPods/Specs/
#

Pod::Spec.new do |spec|

  # ―――  Spec Metadata  ―――――――――――――――――――――――――――――――――――――――――――――――――――――――――― #
  #
  #  These will help people to find your library, and whilst it
  #  can feel like a chore to fill in it's definitely to your advantage. The
  #  summary should be tweet-length, and the description more in depth.
  #

  spec.name         = "YMEZAudio"
  spec.version      = "0.0.2"
  spec.summary      = "the EZAudio's fork"

  spec.description  = "add ipod library URL for EZAudioFile"

  spec.homepage     = "https://github.com/foreverleely/YMEZAudio"
  
  spec.license      = { :type => "MIT", :file => "LICENSE" }

  spec.author             = { "liyang_a" => "foreverleely@hotmail.com" }
  
  spec.ios.deployment_target = "8.0"
  spec.osx.deployment_target = "10.8"

  spec.source       = { :git => "https://github.com/foreverleely/YMEZAudio.git", :tag => "#{spec.version}" }

  spec.source_files  = "EZAudio/*.{h,m,c}"
  spec.exclude_files = [ 'EZAudio/TPCircularBuffer.{h,c}', 'EZAudio/EZAudioiOS.h', 'EZAudio/EZAudioOSX.h' ]

  spec.ios.frameworks = 'AudioToolbox','AVFoundation','GLKit', 'Accelerate'
  spec.osx.frameworks = 'AudioToolbox','AudioUnit','CoreAudio','QuartzCore','OpenGL','GLKit', 'Accelerate'

  spec.requires_arc = true

  spec.default_subspec = 'Full'
  spec.subspec 'Core' do |core|
      core.source_files  = 'EZAudio/*.{h,m,c}'
  end

  spec.subspec 'Full' do |full|
      full.dependency 'TPCircularBuffer'
      full.dependency 'EZAudio/Core'
  end

end
