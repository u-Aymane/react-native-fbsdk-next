import ExpoModulesCore
import FBSDKCoreKit

public class FacebookAppDelegate: ExpoAppDelegateSubscriber {

  public func application(
    _ application: UIApplication,
    didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]? = nil
  ) -> Bool {
    ApplicationDelegate.shared.application(
      application,
      didFinishLaunchingWithOptions: launchOptions
    )
    return true
  }

  public func application(
    _ app: UIApplication,
    open url: URL,
    options: [UIApplication.OpenExternalURLOptionsKey : Any] = [:]
  ) -> Bool {
    return ApplicationDelegate.shared.application(
      app,
      open: url
    )
  }
}
