
Pod::Spec.new do |s|
  s.name             = 'WonderfulColor'
  s.version          = '0.1.0'
  s.summary          = 'Easily get material color'
  
  s.description      = <<-DESC
  'Easily get material color'
                        DESC
  
  s.homepage         = 'https://github.com/Avocado34/WonderfulColor'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'SeunggiLee' => 'avocado34.131@gmail.com' }
  s.source           = { :git => 'https://github.com/Avocado34/WonderfulColor.git', :tag => s.version.to_s }
  
  s.ios.deployment_target = '13.0'
  
  s.source_files = 'WonderfulColor/Classes/**/*'
  s.swift_version    = '5.0'
end
