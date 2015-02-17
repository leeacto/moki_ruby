require "moki_ruby/version"

module MokiRuby
  def self.ios_profiles
    data = MokiAPI.ios_profiles.value
    data.body.map { |profile| IOSProfile.from_hash(profile) }
  end

  def self.device_profiles(device_id)
    data = MokiAPI.device_profile_list(device_id).value
    data.body.map { |profile| IOSProfile.from_hash(profile) }
  end

  def self.device_managed_apps(device_id)
    data = MokiAPI.device_managed_app_list(device_id).value
    data.body.map { |app| DeviceManagedApp.from_hash(app) }
  end
end
