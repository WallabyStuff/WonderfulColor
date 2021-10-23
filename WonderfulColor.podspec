
Pod::Spec.new do |s|
  s.name             = 'WonderfulColor'
  s.version          = '0.1.0'
  s.summary          = 'Easily get material color'
  s.description      = 'Easily get material color'
  s.homepage         = 'https://github.com/Avocado34/WonderfulColor'
  # s.screenshots      = '[IMAGE URL 1]', '[IMAGE URL 2]'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'SeunggiLee' => 'avocado34.131@gmail.com' }
  s.source           = { :git => 'https://github.com/Avocado34/WonderfulColor.git', :tag => s.version.to_s }
  s.ios.deployment_target = '8.0'
  s.source_files = 'WonderfulColor/Classes/**/*'
end
