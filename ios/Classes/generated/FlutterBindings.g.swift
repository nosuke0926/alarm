// Autogenerated from Pigeon (v25.5.0), do not edit directly.
// See also: https://pub.dev/packages/pigeon

import Foundation

#if os(iOS)
  import Flutter
#elseif os(macOS)
  import FlutterMacOS
#else
  #error("Unsupported platform.")
#endif

/// Error class for passing custom error details to Dart side.
final class PigeonError: Error {
  let code: String
  let message: String?
  let details: Sendable?

  init(code: String, message: String?, details: Sendable?) {
    self.code = code
    self.message = message
    self.details = details
  }

  var localizedDescription: String {
    return
      "PigeonError(code: \(code), message: \(message ?? "<nil>"), details: \(details ?? "<nil>")"
  }
}

private func wrapResult(_ result: Any?) -> [Any?] {
  return [result]
}

private func wrapError(_ error: Any) -> [Any?] {
  if let pigeonError = error as? PigeonError {
    return [
      pigeonError.code,
      pigeonError.message,
      pigeonError.details,
    ]
  }
  if let flutterError = error as? FlutterError {
    return [
      flutterError.code,
      flutterError.message,
      flutterError.details,
    ]
  }
  return [
    "\(error)",
    "\(type(of: error))",
    "Stacktrace: \(Thread.callStackSymbols)",
  ]
}

private func createConnectionError(withChannelName channelName: String) -> PigeonError {
  return PigeonError(code: "channel-error", message: "Unable to establish connection on channel: '\(channelName)'.", details: "")
}

private func isNullish(_ value: Any?) -> Bool {
  return value is NSNull || value == nil
}

private func nilOrValue<T>(_ value: Any?) -> T? {
  if value is NSNull { return nil }
  return value as! T?
}

func deepEqualsFlutterBindings(_ lhs: Any?, _ rhs: Any?) -> Bool {
  let cleanLhs = nilOrValue(lhs) as Any?
  let cleanRhs = nilOrValue(rhs) as Any?
  switch (cleanLhs, cleanRhs) {
  case (nil, nil):
    return true

  case (nil, _), (_, nil):
    return false

  case is (Void, Void):
    return true

  case let (cleanLhsHashable, cleanRhsHashable) as (AnyHashable, AnyHashable):
    return cleanLhsHashable == cleanRhsHashable

  case let (cleanLhsArray, cleanRhsArray) as ([Any?], [Any?]):
    guard cleanLhsArray.count == cleanRhsArray.count else { return false }
    for (index, element) in cleanLhsArray.enumerated() {
      if !deepEqualsFlutterBindings(element, cleanRhsArray[index]) {
        return false
      }
    }
    return true

  case let (cleanLhsDictionary, cleanRhsDictionary) as ([AnyHashable: Any?], [AnyHashable: Any?]):
    guard cleanLhsDictionary.count == cleanRhsDictionary.count else { return false }
    for (key, cleanLhsValue) in cleanLhsDictionary {
      guard cleanRhsDictionary.index(forKey: key) != nil else { return false }
      if !deepEqualsFlutterBindings(cleanLhsValue, cleanRhsDictionary[key]!) {
        return false
      }
    }
    return true

  default:
    // Any other type shouldn't be able to be used with pigeon. File an issue if you find this to be untrue.
    return false
  }
}

func deepHashFlutterBindings(value: Any?, hasher: inout Hasher) {
  if let valueList = value as? [AnyHashable] {
     for item in valueList { deepHashFlutterBindings(value: item, hasher: &hasher) }
     return
  }

  if let valueDict = value as? [AnyHashable: AnyHashable] {
    for key in valueDict.keys { 
      hasher.combine(key)
      deepHashFlutterBindings(value: valueDict[key]!, hasher: &hasher)
    }
    return
  }

  if let hashableValue = value as? AnyHashable {
    hasher.combine(hashableValue.hashValue)
  }

  return hasher.combine(String(describing: value))
}

    

/// Errors that can occur when interacting with the Alarm API.
enum AlarmErrorCode: Int {
  case unknown = 0
  /// A plugin internal error. Please report these as bugs on GitHub.
  case pluginInternal = 1
  /// The arguments passed to the method are invalid.
  case invalidArguments = 2
  /// An error occurred while communicating with the native platform.
  case channelError = 3
  /// The required notification permission was not granted.
  ///
  /// Please use an external permission manager such as "permission_handler" to
  /// request the permission from the user.
  case missingNotificationPermission = 4
}

/// Generated class from Pigeon that represents data sent in messages.
struct AlarmSettingsWire: Hashable {
  var id: Int64
  var millisecondsSinceEpoch: Int64
  var assetAudioPath: String
  var volumeSettings: VolumeSettingsWire
  var notificationSettings: NotificationSettingsWire
  var loopAudio: Bool
  var vibrate: Bool
  var warningNotificationOnKill: Bool
  var androidFullScreenIntent: Bool
  var allowAlarmOverlap: Bool
  var iOSBackgroundAudio: Bool
  var androidStopAlarmOnTermination: Bool


  // swift-format-ignore: AlwaysUseLowerCamelCase
  static func fromList(_ pigeonVar_list: [Any?]) -> AlarmSettingsWire? {
    let id = pigeonVar_list[0] as! Int64
    let millisecondsSinceEpoch = pigeonVar_list[1] as! Int64
    let assetAudioPath = pigeonVar_list[2] as! String
    let volumeSettings = pigeonVar_list[3] as! VolumeSettingsWire
    let notificationSettings = pigeonVar_list[4] as! NotificationSettingsWire
    let loopAudio = pigeonVar_list[5] as! Bool
    let vibrate = pigeonVar_list[6] as! Bool
    let warningNotificationOnKill = pigeonVar_list[7] as! Bool
    let androidFullScreenIntent = pigeonVar_list[8] as! Bool
    let allowAlarmOverlap = pigeonVar_list[9] as! Bool
    let iOSBackgroundAudio = pigeonVar_list[10] as! Bool
    let androidStopAlarmOnTermination = pigeonVar_list[11] as! Bool

    return AlarmSettingsWire(
      id: id,
      millisecondsSinceEpoch: millisecondsSinceEpoch,
      assetAudioPath: assetAudioPath,
      volumeSettings: volumeSettings,
      notificationSettings: notificationSettings,
      loopAudio: loopAudio,
      vibrate: vibrate,
      warningNotificationOnKill: warningNotificationOnKill,
      androidFullScreenIntent: androidFullScreenIntent,
      allowAlarmOverlap: allowAlarmOverlap,
      iOSBackgroundAudio: iOSBackgroundAudio,
      androidStopAlarmOnTermination: androidStopAlarmOnTermination
    )
  }
  func toList() -> [Any?] {
    return [
      id,
      millisecondsSinceEpoch,
      assetAudioPath,
      volumeSettings,
      notificationSettings,
      loopAudio,
      vibrate,
      warningNotificationOnKill,
      androidFullScreenIntent,
      allowAlarmOverlap,
      iOSBackgroundAudio,
      androidStopAlarmOnTermination,
    ]
  }
  static func == (lhs: AlarmSettingsWire, rhs: AlarmSettingsWire) -> Bool {
    return deepEqualsFlutterBindings(lhs.toList(), rhs.toList())  }
  func hash(into hasher: inout Hasher) {
    deepHashFlutterBindings(value: toList(), hasher: &hasher)
  }
}

/// Generated class from Pigeon that represents data sent in messages.
struct VolumeSettingsWire: Hashable {
  var volume: Double? = nil
  var fadeDurationMillis: Int64? = nil
  var fadeSteps: [VolumeFadeStepWire]
  var volumeEnforced: Bool


  // swift-format-ignore: AlwaysUseLowerCamelCase
  static func fromList(_ pigeonVar_list: [Any?]) -> VolumeSettingsWire? {
    let volume: Double? = nilOrValue(pigeonVar_list[0])
    let fadeDurationMillis: Int64? = nilOrValue(pigeonVar_list[1])
    let fadeSteps = pigeonVar_list[2] as! [VolumeFadeStepWire]
    let volumeEnforced = pigeonVar_list[3] as! Bool

    return VolumeSettingsWire(
      volume: volume,
      fadeDurationMillis: fadeDurationMillis,
      fadeSteps: fadeSteps,
      volumeEnforced: volumeEnforced
    )
  }
  func toList() -> [Any?] {
    return [
      volume,
      fadeDurationMillis,
      fadeSteps,
      volumeEnforced,
    ]
  }
  static func == (lhs: VolumeSettingsWire, rhs: VolumeSettingsWire) -> Bool {
    return deepEqualsFlutterBindings(lhs.toList(), rhs.toList())  }
  func hash(into hasher: inout Hasher) {
    deepHashFlutterBindings(value: toList(), hasher: &hasher)
  }
}

/// Generated class from Pigeon that represents data sent in messages.
struct VolumeFadeStepWire: Hashable {
  var timeMillis: Int64
  var volume: Double


  // swift-format-ignore: AlwaysUseLowerCamelCase
  static func fromList(_ pigeonVar_list: [Any?]) -> VolumeFadeStepWire? {
    let timeMillis = pigeonVar_list[0] as! Int64
    let volume = pigeonVar_list[1] as! Double

    return VolumeFadeStepWire(
      timeMillis: timeMillis,
      volume: volume
    )
  }
  func toList() -> [Any?] {
    return [
      timeMillis,
      volume,
    ]
  }
  static func == (lhs: VolumeFadeStepWire, rhs: VolumeFadeStepWire) -> Bool {
    return deepEqualsFlutterBindings(lhs.toList(), rhs.toList())  }
  func hash(into hasher: inout Hasher) {
    deepHashFlutterBindings(value: toList(), hasher: &hasher)
  }
}

/// Generated class from Pigeon that represents data sent in messages.
struct NotificationSettingsWire: Hashable {
  var title: String
  var body: String
  var stopButton: String? = nil
  var icon: String? = nil
  var iconColorAlpha: Double? = nil
  var iconColorRed: Double? = nil
  var iconColorGreen: Double? = nil
  var iconColorBlue: Double? = nil
  var keepNotificationAfterAlarmEnds: Bool


  // swift-format-ignore: AlwaysUseLowerCamelCase
  static func fromList(_ pigeonVar_list: [Any?]) -> NotificationSettingsWire? {
    let title = pigeonVar_list[0] as! String
    let body = pigeonVar_list[1] as! String
    let stopButton: String? = nilOrValue(pigeonVar_list[2])
    let icon: String? = nilOrValue(pigeonVar_list[3])
    let iconColorAlpha: Double? = nilOrValue(pigeonVar_list[4])
    let iconColorRed: Double? = nilOrValue(pigeonVar_list[5])
    let iconColorGreen: Double? = nilOrValue(pigeonVar_list[6])
    let iconColorBlue: Double? = nilOrValue(pigeonVar_list[7])
    let keepNotificationAfterAlarmEnds = pigeonVar_list[8] as! Bool

    return NotificationSettingsWire(
      title: title,
      body: body,
      stopButton: stopButton,
      icon: icon,
      iconColorAlpha: iconColorAlpha,
      iconColorRed: iconColorRed,
      iconColorGreen: iconColorGreen,
      iconColorBlue: iconColorBlue,
      keepNotificationAfterAlarmEnds: keepNotificationAfterAlarmEnds
    )
  }
  func toList() -> [Any?] {
    return [
      title,
      body,
      stopButton,
      icon,
      iconColorAlpha,
      iconColorRed,
      iconColorGreen,
      iconColorBlue,
      keepNotificationAfterAlarmEnds,
    ]
  }
  static func == (lhs: NotificationSettingsWire, rhs: NotificationSettingsWire) -> Bool {
    return deepEqualsFlutterBindings(lhs.toList(), rhs.toList())  }
  func hash(into hasher: inout Hasher) {
    deepHashFlutterBindings(value: toList(), hasher: &hasher)
  }
}

private class FlutterBindingsPigeonCodecReader: FlutterStandardReader {
  override func readValue(ofType type: UInt8) -> Any? {
    switch type {
    case 129:
      let enumResultAsInt: Int? = nilOrValue(self.readValue() as! Int?)
      if let enumResultAsInt = enumResultAsInt {
        return AlarmErrorCode(rawValue: enumResultAsInt)
      }
      return nil
    case 130:
      return AlarmSettingsWire.fromList(self.readValue() as! [Any?])
    case 131:
      return VolumeSettingsWire.fromList(self.readValue() as! [Any?])
    case 132:
      return VolumeFadeStepWire.fromList(self.readValue() as! [Any?])
    case 133:
      return NotificationSettingsWire.fromList(self.readValue() as! [Any?])
    default:
      return super.readValue(ofType: type)
    }
  }
}

private class FlutterBindingsPigeonCodecWriter: FlutterStandardWriter {
  override func writeValue(_ value: Any) {
    if let value = value as? AlarmErrorCode {
      super.writeByte(129)
      super.writeValue(value.rawValue)
    } else if let value = value as? AlarmSettingsWire {
      super.writeByte(130)
      super.writeValue(value.toList())
    } else if let value = value as? VolumeSettingsWire {
      super.writeByte(131)
      super.writeValue(value.toList())
    } else if let value = value as? VolumeFadeStepWire {
      super.writeByte(132)
      super.writeValue(value.toList())
    } else if let value = value as? NotificationSettingsWire {
      super.writeByte(133)
      super.writeValue(value.toList())
    } else {
      super.writeValue(value)
    }
  }
}

private class FlutterBindingsPigeonCodecReaderWriter: FlutterStandardReaderWriter {
  override func reader(with data: Data) -> FlutterStandardReader {
    return FlutterBindingsPigeonCodecReader(data: data)
  }

  override func writer(with data: NSMutableData) -> FlutterStandardWriter {
    return FlutterBindingsPigeonCodecWriter(data: data)
  }
}

class FlutterBindingsPigeonCodec: FlutterStandardMessageCodec, @unchecked Sendable {
  static let shared = FlutterBindingsPigeonCodec(readerWriter: FlutterBindingsPigeonCodecReaderWriter())
}


/// Generated protocol from Pigeon that represents a handler of messages from Flutter.
protocol AlarmApi {
  func setAlarm(alarmSettings: AlarmSettingsWire, completion: @escaping (Result<Void, Error>) -> Void)
  func stopAlarm(alarmId: Int64, completion: @escaping (Result<Void, Error>) -> Void)
  func stopAll(completion: @escaping (Result<Void, Error>) -> Void)
  func isRinging(alarmId: Int64?) throws -> Bool
  func setWarningNotificationOnKill(title: String, body: String) throws
  func disableWarningNotificationOnKill() throws
}

/// Generated setup class from Pigeon to handle messages through the `binaryMessenger`.
class AlarmApiSetup {
  static var codec: FlutterStandardMessageCodec { FlutterBindingsPigeonCodec.shared }
  /// Sets up an instance of `AlarmApi` to handle messages through the `binaryMessenger`.
  static func setUp(binaryMessenger: FlutterBinaryMessenger, api: AlarmApi?, messageChannelSuffix: String = "") {
    let channelSuffix = messageChannelSuffix.count > 0 ? ".\(messageChannelSuffix)" : ""
    let setAlarmChannel = FlutterBasicMessageChannel(name: "dev.flutter.pigeon.alarm.AlarmApi.setAlarm\(channelSuffix)", binaryMessenger: binaryMessenger, codec: codec)
    if let api = api {
      setAlarmChannel.setMessageHandler { message, reply in
        let args = message as! [Any?]
        let alarmSettingsArg = args[0] as! AlarmSettingsWire
        api.setAlarm(alarmSettings: alarmSettingsArg) { result in
          switch result {
          case .success:
            reply(wrapResult(nil))
          case .failure(let error):
            reply(wrapError(error))
          }
        }
      }
    } else {
      setAlarmChannel.setMessageHandler(nil)
    }
    let stopAlarmChannel = FlutterBasicMessageChannel(name: "dev.flutter.pigeon.alarm.AlarmApi.stopAlarm\(channelSuffix)", binaryMessenger: binaryMessenger, codec: codec)
    if let api = api {
      stopAlarmChannel.setMessageHandler { message, reply in
        let args = message as! [Any?]
        let alarmIdArg = args[0] as! Int64
        api.stopAlarm(alarmId: alarmIdArg) { result in
          switch result {
          case .success:
            reply(wrapResult(nil))
          case .failure(let error):
            reply(wrapError(error))
          }
        }
      }
    } else {
      stopAlarmChannel.setMessageHandler(nil)
    }
    let stopAllChannel = FlutterBasicMessageChannel(name: "dev.flutter.pigeon.alarm.AlarmApi.stopAll\(channelSuffix)", binaryMessenger: binaryMessenger, codec: codec)
    if let api = api {
      stopAllChannel.setMessageHandler { _, reply in
        api.stopAll { result in
          switch result {
          case .success:
            reply(wrapResult(nil))
          case .failure(let error):
            reply(wrapError(error))
          }
        }
      }
    } else {
      stopAllChannel.setMessageHandler(nil)
    }
    let isRingingChannel = FlutterBasicMessageChannel(name: "dev.flutter.pigeon.alarm.AlarmApi.isRinging\(channelSuffix)", binaryMessenger: binaryMessenger, codec: codec)
    if let api = api {
      isRingingChannel.setMessageHandler { message, reply in
        let args = message as! [Any?]
        let alarmIdArg: Int64? = nilOrValue(args[0])
        do {
          let result = try api.isRinging(alarmId: alarmIdArg)
          reply(wrapResult(result))
        } catch {
          reply(wrapError(error))
        }
      }
    } else {
      isRingingChannel.setMessageHandler(nil)
    }
    let setWarningNotificationOnKillChannel = FlutterBasicMessageChannel(name: "dev.flutter.pigeon.alarm.AlarmApi.setWarningNotificationOnKill\(channelSuffix)", binaryMessenger: binaryMessenger, codec: codec)
    if let api = api {
      setWarningNotificationOnKillChannel.setMessageHandler { message, reply in
        let args = message as! [Any?]
        let titleArg = args[0] as! String
        let bodyArg = args[1] as! String
        do {
          try api.setWarningNotificationOnKill(title: titleArg, body: bodyArg)
          reply(wrapResult(nil))
        } catch {
          reply(wrapError(error))
        }
      }
    } else {
      setWarningNotificationOnKillChannel.setMessageHandler(nil)
    }
    let disableWarningNotificationOnKillChannel = FlutterBasicMessageChannel(name: "dev.flutter.pigeon.alarm.AlarmApi.disableWarningNotificationOnKill\(channelSuffix)", binaryMessenger: binaryMessenger, codec: codec)
    if let api = api {
      disableWarningNotificationOnKillChannel.setMessageHandler { _, reply in
        do {
          try api.disableWarningNotificationOnKill()
          reply(wrapResult(nil))
        } catch {
          reply(wrapError(error))
        }
      }
    } else {
      disableWarningNotificationOnKillChannel.setMessageHandler(nil)
    }
  }
}
/// Generated protocol from Pigeon that represents Flutter messages that can be called from Swift.
protocol AlarmTriggerApiProtocol {
  func alarmRang(alarmId alarmIdArg: Int64, completion: @escaping (Result<Void, PigeonError>) -> Void)
  func alarmStopped(alarmId alarmIdArg: Int64, completion: @escaping (Result<Void, PigeonError>) -> Void)
}
class AlarmTriggerApi: AlarmTriggerApiProtocol {
  private let binaryMessenger: FlutterBinaryMessenger
  private let messageChannelSuffix: String
  init(binaryMessenger: FlutterBinaryMessenger, messageChannelSuffix: String = "") {
    self.binaryMessenger = binaryMessenger
    self.messageChannelSuffix = messageChannelSuffix.count > 0 ? ".\(messageChannelSuffix)" : ""
  }
  var codec: FlutterBindingsPigeonCodec {
    return FlutterBindingsPigeonCodec.shared
  }
  func alarmRang(alarmId alarmIdArg: Int64, completion: @escaping (Result<Void, PigeonError>) -> Void) {
    let channelName: String = "dev.flutter.pigeon.alarm.AlarmTriggerApi.alarmRang\(messageChannelSuffix)"
    let channel = FlutterBasicMessageChannel(name: channelName, binaryMessenger: binaryMessenger, codec: codec)
    channel.sendMessage([alarmIdArg] as [Any?]) { response in
      guard let listResponse = response as? [Any?] else {
        completion(.failure(createConnectionError(withChannelName: channelName)))
        return
      }
      if listResponse.count > 1 {
        let code: String = listResponse[0] as! String
        let message: String? = nilOrValue(listResponse[1])
        let details: String? = nilOrValue(listResponse[2])
        completion(.failure(PigeonError(code: code, message: message, details: details)))
      } else {
        completion(.success(()))
      }
    }
  }
  func alarmStopped(alarmId alarmIdArg: Int64, completion: @escaping (Result<Void, PigeonError>) -> Void) {
    let channelName: String = "dev.flutter.pigeon.alarm.AlarmTriggerApi.alarmStopped\(messageChannelSuffix)"
    let channel = FlutterBasicMessageChannel(name: channelName, binaryMessenger: binaryMessenger, codec: codec)
    channel.sendMessage([alarmIdArg] as [Any?]) { response in
      guard let listResponse = response as? [Any?] else {
        completion(.failure(createConnectionError(withChannelName: channelName)))
        return
      }
      if listResponse.count > 1 {
        let code: String = listResponse[0] as! String
        let message: String? = nilOrValue(listResponse[1])
        let details: String? = nilOrValue(listResponse[2])
        completion(.failure(PigeonError(code: code, message: message, details: details)))
      } else {
        completion(.success(()))
      }
    }
  }
}
