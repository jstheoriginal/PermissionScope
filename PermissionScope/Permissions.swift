//
//  Permissions.swift
//  PermissionScope
//
//  Created by Nick O'Neill on 8/25/15.
//  Copyright © 2015 That Thing in Swift. All rights reserved.
//

import Foundation
import UserNotifications

/**
*  Protocol for permission configurations.
*/
@objc public protocol Permission {
    /// Permission type
    var type: PermissionType { get }
}

@objc public class NotificationsPermission: NSObject, Permission {
    public let type: PermissionType = .notifications

//    public let notificationCategories2: Set<User>?
    public let notificationCategories: Set<UNNotificationCategory>?
    
    public init(notificationCategories: Set<UNNotificationCategory>? = nil) {
        self.notificationCategories = notificationCategories
    }
}

public typealias requestPermissionUnknownResult = () -> Void
public typealias requestPermissionShowAlert     = (PermissionType) -> Void
