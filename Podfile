# Uncomment the next line to define a global platform for your project
platform :ios, '10.0'

post_install do |installer|
  installer.pods_project.targets.each do |target|
    if target.respond_to?(:product_type) and target.product_type == "com.apple.product-type.bundle"
      target.build_configurations.each do |config|
        config.build_settings['CODE_SIGNING_ALLOWED'] = 'NO'
      end
    end
  end
end

target 'shubh_lp_objC_2' do
  # Comment the next line if you don't want to use dynamic frameworks
  use_frameworks!

  # Pods for shubh_lp_objC_2

pod 'Leanplum-iOS-SDK', '5.0.0'
#pod 'Leanplum-iOS-Location'

  target 'shubh_lp_objC_2Tests' do
    inherit! :search_paths
    # Pods for testing
  end

  target 'shubh_lp_objC_2UITests' do
    # Pods for testing
  end

end
