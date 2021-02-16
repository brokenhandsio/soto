//===----------------------------------------------------------------------===//
//
// This source file is part of the Soto for AWS open source project
//
// Copyright (c) 2017-2021 the Soto project authors
// Licensed under Apache License v2.0
//
// See LICENSE.txt for license information
// See CONTRIBUTORS.txt for the list of Soto project authors
//
// SPDX-License-Identifier: Apache-2.0
//
//===----------------------------------------------------------------------===//

// THIS FILE IS AUTOMATICALLY GENERATED by https://github.com/soto-project/soto/tree/main/CodeGenerator. DO NOT EDIT.

import Foundation
import SotoCore

extension CodeStarNotifications {
    // MARK: Enums

    public enum DetailType: String, CustomStringConvertible, Codable {
        case basic = "BASIC"
        case full = "FULL"
        public var description: String { return self.rawValue }
    }

    public enum ListEventTypesFilterName: String, CustomStringConvertible, Codable {
        case resourceType = "RESOURCE_TYPE"
        case serviceName = "SERVICE_NAME"
        public var description: String { return self.rawValue }
    }

    public enum ListNotificationRulesFilterName: String, CustomStringConvertible, Codable {
        case createdBy = "CREATED_BY"
        case eventTypeId = "EVENT_TYPE_ID"
        case resource = "RESOURCE"
        case targetAddress = "TARGET_ADDRESS"
        public var description: String { return self.rawValue }
    }

    public enum ListTargetsFilterName: String, CustomStringConvertible, Codable {
        case targetAddress = "TARGET_ADDRESS"
        case targetStatus = "TARGET_STATUS"
        case targetType = "TARGET_TYPE"
        public var description: String { return self.rawValue }
    }

    public enum NotificationRuleStatus: String, CustomStringConvertible, Codable {
        case disabled = "DISABLED"
        case enabled = "ENABLED"
        public var description: String { return self.rawValue }
    }

    public enum TargetStatus: String, CustomStringConvertible, Codable {
        case active = "ACTIVE"
        case deactivated = "DEACTIVATED"
        case inactive = "INACTIVE"
        case pending = "PENDING"
        case unreachable = "UNREACHABLE"
        public var description: String { return self.rawValue }
    }

    // MARK: Shapes

    public struct CreateNotificationRuleRequest: AWSEncodableShape {

        /// A unique, client-generated idempotency token that, when provided in a request, ensures the request cannot be repeated with a changed parameter. If a request with the same parameters is received and a token is included, the request returns information about the initial request that used that token.  The AWS SDKs prepopulate client request tokens. If you are using an AWS SDK, an idempotency token is created for you.
        public let clientRequestToken: String?
        /// The level of detail to include in the notifications for this resource. BASIC will include only the contents of the event as it would appear in AWS CloudWatch. FULL will include any supplemental information provided by AWS CodeStar Notifications and/or the service for the resource for which the notification is created.
        public let detailType: DetailType
        /// A list of event types associated with this notification rule. For a list of allowed events, see EventTypeSummary.
        public let eventTypeIds: [String]
        /// The name for the notification rule. Notifictaion rule names must be unique in your AWS account.
        public let name: String
        /// The Amazon Resource Name (ARN) of the resource to associate with the notification rule. Supported resources include pipelines in AWS CodePipeline, repositories in AWS CodeCommit, and build projects in AWS CodeBuild.
        public let resource: String
        /// The status of the notification rule. The default value is ENABLED. If the status is set to DISABLED, notifications aren't sent for the notification rule.
        public let status: NotificationRuleStatus?
        /// A list of tags to apply to this notification rule. Key names cannot start with "aws".
        public let tags: [String: String]?
        /// A list of Amazon Resource Names (ARNs) of SNS topics to associate with the notification rule.
        public let targets: [Target]

        public init(clientRequestToken: String? = CreateNotificationRuleRequest.idempotencyToken(), detailType: DetailType, eventTypeIds: [String], name: String, resource: String, status: NotificationRuleStatus? = nil, tags: [String: String]? = nil, targets: [Target]) {
            self.clientRequestToken = clientRequestToken
            self.detailType = detailType
            self.eventTypeIds = eventTypeIds
            self.name = name
            self.resource = resource
            self.status = status
            self.tags = tags
            self.targets = targets
        }

        public func validate(name: String) throws {
            try self.validate(self.clientRequestToken, name: "clientRequestToken", parent: name, max: 256)
            try self.validate(self.clientRequestToken, name: "clientRequestToken", parent: name, min: 1)
            try self.validate(self.clientRequestToken, name: "clientRequestToken", parent: name, pattern: "^[\\w:/-]+$")
            try self.eventTypeIds.forEach {
                try validate($0, name: "eventTypeIds[]", parent: name, max: 200)
                try validate($0, name: "eventTypeIds[]", parent: name, min: 1)
            }
            try self.validate(self.name, name: "name", parent: name, max: 64)
            try self.validate(self.name, name: "name", parent: name, min: 1)
            try self.validate(self.name, name: "name", parent: name, pattern: "[A-Za-z0-9\\-_ ]+$")
            try self.validate(self.resource, name: "resource", parent: name, pattern: "^arn:aws[^:\\s]*:[^:\\s]*:[^:\\s]*:[0-9]{12}:[^\\s]+$")
            try self.tags?.forEach {
                try validate($0.key, name: "tags.key", parent: name, max: 128)
                try validate($0.key, name: "tags.key", parent: name, min: 1)
                try validate($0.key, name: "tags.key", parent: name, pattern: "^([\\p{L}\\p{Z}\\p{N}_.:/=+\\-@]*)$")
                try validate($0.value, name: "tags[\"\($0.key)\"]", parent: name, max: 256)
                try validate($0.value, name: "tags[\"\($0.key)\"]", parent: name, pattern: "^([\\p{L}\\p{Z}\\p{N}_.:/=+\\-@]*)$")
            }
            try self.targets.forEach {
                try $0.validate(name: "\(name).targets[]")
            }
            try self.validate(self.targets, name: "targets", parent: name, max: 10)
        }

        private enum CodingKeys: String, CodingKey {
            case clientRequestToken = "ClientRequestToken"
            case detailType = "DetailType"
            case eventTypeIds = "EventTypeIds"
            case name = "Name"
            case resource = "Resource"
            case status = "Status"
            case tags = "Tags"
            case targets = "Targets"
        }
    }

    public struct CreateNotificationRuleResult: AWSDecodableShape {

        /// The Amazon Resource Name (ARN) of the notification rule.
        public let arn: String?

        public init(arn: String? = nil) {
            self.arn = arn
        }

        private enum CodingKeys: String, CodingKey {
            case arn = "Arn"
        }
    }

    public struct DeleteNotificationRuleRequest: AWSEncodableShape {

        /// The Amazon Resource Name (ARN) of the notification rule you want to delete.
        public let arn: String

        public init(arn: String) {
            self.arn = arn
        }

        public func validate(name: String) throws {
            try self.validate(self.arn, name: "arn", parent: name, pattern: "^arn:aws[^:\\s]*:codestar-notifications:[^:\\s]+:\\d{12}:notificationrule\\/(.*\\S)?$")
        }

        private enum CodingKeys: String, CodingKey {
            case arn = "Arn"
        }
    }

    public struct DeleteNotificationRuleResult: AWSDecodableShape {

        /// The Amazon Resource Name (ARN) of the deleted notification rule.
        public let arn: String?

        public init(arn: String? = nil) {
            self.arn = arn
        }

        private enum CodingKeys: String, CodingKey {
            case arn = "Arn"
        }
    }

    public struct DeleteTargetRequest: AWSEncodableShape {

        /// A Boolean value that can be used to delete all associations with this SNS topic. The default value is FALSE. If set to TRUE, all associations between that target and every notification rule in your AWS account are deleted.
        public let forceUnsubscribeAll: Bool?
        /// The Amazon Resource Name (ARN) of the SNS topic to delete.
        public let targetAddress: String

        public init(forceUnsubscribeAll: Bool? = nil, targetAddress: String) {
            self.forceUnsubscribeAll = forceUnsubscribeAll
            self.targetAddress = targetAddress
        }

        public func validate(name: String) throws {
            try self.validate(self.targetAddress, name: "targetAddress", parent: name, max: 320)
            try self.validate(self.targetAddress, name: "targetAddress", parent: name, min: 1)
        }

        private enum CodingKeys: String, CodingKey {
            case forceUnsubscribeAll = "ForceUnsubscribeAll"
            case targetAddress = "TargetAddress"
        }
    }

    public struct DeleteTargetResult: AWSDecodableShape {


        public init() {
        }

    }

    public struct DescribeNotificationRuleRequest: AWSEncodableShape {

        /// The Amazon Resource Name (ARN) of the notification rule.
        public let arn: String

        public init(arn: String) {
            self.arn = arn
        }

        public func validate(name: String) throws {
            try self.validate(self.arn, name: "arn", parent: name, pattern: "^arn:aws[^:\\s]*:codestar-notifications:[^:\\s]+:\\d{12}:notificationrule\\/(.*\\S)?$")
        }

        private enum CodingKeys: String, CodingKey {
            case arn = "Arn"
        }
    }

    public struct DescribeNotificationRuleResult: AWSDecodableShape {

        /// The Amazon Resource Name (ARN) of the notification rule.
        public let arn: String
        /// The name or email alias of the person who created the notification rule.
        public let createdBy: String?
        /// The date and time the notification rule was created, in timestamp format.
        public let createdTimestamp: Date?
        /// The level of detail included in the notifications for this resource. BASIC will include only the contents of the event as it would appear in AWS CloudWatch. FULL will include any supplemental information provided by AWS CodeStar Notifications and/or the service for the resource for which the notification is created.
        public let detailType: DetailType?
        /// A list of the event types associated with the notification rule.
        public let eventTypes: [EventTypeSummary]?
        /// The date and time the notification rule was most recently updated, in timestamp format.
        public let lastModifiedTimestamp: Date?
        /// The name of the notification rule.
        public let name: String?
        /// The Amazon Resource Name (ARN) of the resource associated with the notification rule.
        public let resource: String?
        /// The status of the notification rule. Valid statuses are on (sending notifications) or off (not sending notifications).
        public let status: NotificationRuleStatus?
        /// The tags associated with the notification rule.
        public let tags: [String: String]?
        /// A list of the SNS topics associated with the notification rule.
        public let targets: [TargetSummary]?

        public init(arn: String, createdBy: String? = nil, createdTimestamp: Date? = nil, detailType: DetailType? = nil, eventTypes: [EventTypeSummary]? = nil, lastModifiedTimestamp: Date? = nil, name: String? = nil, resource: String? = nil, status: NotificationRuleStatus? = nil, tags: [String: String]? = nil, targets: [TargetSummary]? = nil) {
            self.arn = arn
            self.createdBy = createdBy
            self.createdTimestamp = createdTimestamp
            self.detailType = detailType
            self.eventTypes = eventTypes
            self.lastModifiedTimestamp = lastModifiedTimestamp
            self.name = name
            self.resource = resource
            self.status = status
            self.tags = tags
            self.targets = targets
        }

        private enum CodingKeys: String, CodingKey {
            case arn = "Arn"
            case createdBy = "CreatedBy"
            case createdTimestamp = "CreatedTimestamp"
            case detailType = "DetailType"
            case eventTypes = "EventTypes"
            case lastModifiedTimestamp = "LastModifiedTimestamp"
            case name = "Name"
            case resource = "Resource"
            case status = "Status"
            case tags = "Tags"
            case targets = "Targets"
        }
    }

    public struct EventTypeSummary: AWSDecodableShape {

        /// The system-generated ID of the event.
        public let eventTypeId: String?
        /// The name of the event.
        public let eventTypeName: String?
        /// The resource type of the event.
        public let resourceType: String?
        /// The name of the service for which the event applies.
        public let serviceName: String?

        public init(eventTypeId: String? = nil, eventTypeName: String? = nil, resourceType: String? = nil, serviceName: String? = nil) {
            self.eventTypeId = eventTypeId
            self.eventTypeName = eventTypeName
            self.resourceType = resourceType
            self.serviceName = serviceName
        }

        private enum CodingKeys: String, CodingKey {
            case eventTypeId = "EventTypeId"
            case eventTypeName = "EventTypeName"
            case resourceType = "ResourceType"
            case serviceName = "ServiceName"
        }
    }

    public struct ListEventTypesFilter: AWSEncodableShape {

        /// The system-generated name of the filter type you want to filter by.
        public let name: ListEventTypesFilterName
        /// The name of the resource type (for example, pipeline) or service name (for example, CodePipeline) that you want to filter by.
        public let value: String

        public init(name: ListEventTypesFilterName, value: String) {
            self.name = name
            self.value = value
        }

        private enum CodingKeys: String, CodingKey {
            case name = "Name"
            case value = "Value"
        }
    }

    public struct ListEventTypesRequest: AWSEncodableShape {

        /// The filters to use to return information by service or resource type.
        public let filters: [ListEventTypesFilter]?
        /// A non-negative integer used to limit the number of returned results. The default number is 50. The maximum number of results that can be returned is 100.
        public let maxResults: Int?
        /// An enumeration token that, when provided in a request, returns the next batch of the results.
        public let nextToken: String?

        public init(filters: [ListEventTypesFilter]? = nil, maxResults: Int? = nil, nextToken: String? = nil) {
            self.filters = filters
            self.maxResults = maxResults
            self.nextToken = nextToken
        }

        public func validate(name: String) throws {
            try self.validate(self.maxResults, name: "maxResults", parent: name, max: 100)
            try self.validate(self.maxResults, name: "maxResults", parent: name, min: 1)
            try self.validate(self.nextToken, name: "nextToken", parent: name, pattern: "^[\\w/+=]+$")
        }

        private enum CodingKeys: String, CodingKey {
            case filters = "Filters"
            case maxResults = "MaxResults"
            case nextToken = "NextToken"
        }
    }

    public struct ListEventTypesResult: AWSDecodableShape {

        /// Information about each event, including service name, resource type, event ID, and event name.
        public let eventTypes: [EventTypeSummary]?
        /// An enumeration token that can be used in a request to return the next batch of the results.
        public let nextToken: String?

        public init(eventTypes: [EventTypeSummary]? = nil, nextToken: String? = nil) {
            self.eventTypes = eventTypes
            self.nextToken = nextToken
        }

        private enum CodingKeys: String, CodingKey {
            case eventTypes = "EventTypes"
            case nextToken = "NextToken"
        }
    }

    public struct ListNotificationRulesFilter: AWSEncodableShape {

        /// The name of the attribute you want to use to filter the returned notification rules.
        public let name: ListNotificationRulesFilterName
        /// The value of the attribute you want to use to filter the returned notification rules. For example, if you specify filtering by RESOURCE in Name, you might specify the ARN of a pipeline in AWS CodePipeline for the value.
        public let value: String

        public init(name: ListNotificationRulesFilterName, value: String) {
            self.name = name
            self.value = value
        }

        private enum CodingKeys: String, CodingKey {
            case name = "Name"
            case value = "Value"
        }
    }

    public struct ListNotificationRulesRequest: AWSEncodableShape {

        /// The filters to use to return information by service or resource type. For valid values, see ListNotificationRulesFilter.  A filter with the same name can appear more than once when used with OR statements. Filters with different names should be applied with AND statements.
        public let filters: [ListNotificationRulesFilter]?
        /// A non-negative integer used to limit the number of returned results. The maximum number of results that can be returned is 100.
        public let maxResults: Int?
        /// An enumeration token that, when provided in a request, returns the next batch of the results.
        public let nextToken: String?

        public init(filters: [ListNotificationRulesFilter]? = nil, maxResults: Int? = nil, nextToken: String? = nil) {
            self.filters = filters
            self.maxResults = maxResults
            self.nextToken = nextToken
        }

        public func validate(name: String) throws {
            try self.validate(self.maxResults, name: "maxResults", parent: name, max: 100)
            try self.validate(self.maxResults, name: "maxResults", parent: name, min: 1)
            try self.validate(self.nextToken, name: "nextToken", parent: name, pattern: "^[\\w/+=]+$")
        }

        private enum CodingKeys: String, CodingKey {
            case filters = "Filters"
            case maxResults = "MaxResults"
            case nextToken = "NextToken"
        }
    }

    public struct ListNotificationRulesResult: AWSDecodableShape {

        /// An enumeration token that can be used in a request to return the next batch of the results.
        public let nextToken: String?
        /// The list of notification rules for the AWS account, by Amazon Resource Name (ARN) and ID.
        public let notificationRules: [NotificationRuleSummary]?

        public init(nextToken: String? = nil, notificationRules: [NotificationRuleSummary]? = nil) {
            self.nextToken = nextToken
            self.notificationRules = notificationRules
        }

        private enum CodingKeys: String, CodingKey {
            case nextToken = "NextToken"
            case notificationRules = "NotificationRules"
        }
    }

    public struct ListTagsForResourceRequest: AWSEncodableShape {

        /// The Amazon Resource Name (ARN) for the notification rule.
        public let arn: String

        public init(arn: String) {
            self.arn = arn
        }

        public func validate(name: String) throws {
            try self.validate(self.arn, name: "arn", parent: name, pattern: "^arn:aws[^:\\s]*:codestar-notifications:[^:\\s]+:\\d{12}:notificationrule\\/(.*\\S)?$")
        }

        private enum CodingKeys: String, CodingKey {
            case arn = "Arn"
        }
    }

    public struct ListTagsForResourceResult: AWSDecodableShape {

        /// The tags associated with the notification rule.
        public let tags: [String: String]?

        public init(tags: [String: String]? = nil) {
            self.tags = tags
        }

        private enum CodingKeys: String, CodingKey {
            case tags = "Tags"
        }
    }

    public struct ListTargetsFilter: AWSEncodableShape {

        /// The name of the attribute you want to use to filter the returned targets.
        public let name: ListTargetsFilterName
        /// The value of the attribute you want to use to filter the returned targets. For example, if you specify SNS for the Target type, you could specify an Amazon Resource Name (ARN) for a topic as the value.
        public let value: String

        public init(name: ListTargetsFilterName, value: String) {
            self.name = name
            self.value = value
        }

        private enum CodingKeys: String, CodingKey {
            case name = "Name"
            case value = "Value"
        }
    }

    public struct ListTargetsRequest: AWSEncodableShape {

        /// The filters to use to return information by service or resource type. Valid filters include target type, target address, and target status.  A filter with the same name can appear more than once when used with OR statements. Filters with different names should be applied with AND statements.
        public let filters: [ListTargetsFilter]?
        /// A non-negative integer used to limit the number of returned results. The maximum number of results that can be returned is 100.
        public let maxResults: Int?
        /// An enumeration token that, when provided in a request, returns the next batch of the results.
        public let nextToken: String?

        public init(filters: [ListTargetsFilter]? = nil, maxResults: Int? = nil, nextToken: String? = nil) {
            self.filters = filters
            self.maxResults = maxResults
            self.nextToken = nextToken
        }

        public func validate(name: String) throws {
            try self.validate(self.maxResults, name: "maxResults", parent: name, max: 100)
            try self.validate(self.maxResults, name: "maxResults", parent: name, min: 1)
            try self.validate(self.nextToken, name: "nextToken", parent: name, pattern: "^[\\w/+=]+$")
        }

        private enum CodingKeys: String, CodingKey {
            case filters = "Filters"
            case maxResults = "MaxResults"
            case nextToken = "NextToken"
        }
    }

    public struct ListTargetsResult: AWSDecodableShape {

        /// An enumeration token that can be used in a request to return the next batch of results.
        public let nextToken: String?
        /// The list of notification rule targets.
        public let targets: [TargetSummary]?

        public init(nextToken: String? = nil, targets: [TargetSummary]? = nil) {
            self.nextToken = nextToken
            self.targets = targets
        }

        private enum CodingKeys: String, CodingKey {
            case nextToken = "NextToken"
            case targets = "Targets"
        }
    }

    public struct NotificationRuleSummary: AWSDecodableShape {

        /// The Amazon Resource Name (ARN) of the notification rule.
        public let arn: String?
        /// The unique ID of the notification rule.
        public let id: String?

        public init(arn: String? = nil, id: String? = nil) {
            self.arn = arn
            self.id = id
        }

        private enum CodingKeys: String, CodingKey {
            case arn = "Arn"
            case id = "Id"
        }
    }

    public struct SubscribeRequest: AWSEncodableShape {

        /// The Amazon Resource Name (ARN) of the notification rule for which you want to create the association.
        public let arn: String
        /// An enumeration token that, when provided in a request, returns the next batch of the results.
        public let clientRequestToken: String?
        public let target: Target

        public init(arn: String, clientRequestToken: String? = nil, target: Target) {
            self.arn = arn
            self.clientRequestToken = clientRequestToken
            self.target = target
        }

        public func validate(name: String) throws {
            try self.validate(self.arn, name: "arn", parent: name, pattern: "^arn:aws[^:\\s]*:codestar-notifications:[^:\\s]+:\\d{12}:notificationrule\\/(.*\\S)?$")
            try self.validate(self.clientRequestToken, name: "clientRequestToken", parent: name, max: 256)
            try self.validate(self.clientRequestToken, name: "clientRequestToken", parent: name, min: 1)
            try self.validate(self.clientRequestToken, name: "clientRequestToken", parent: name, pattern: "^[\\w:/-]+$")
            try self.target.validate(name: "\(name).target")
        }

        private enum CodingKeys: String, CodingKey {
            case arn = "Arn"
            case clientRequestToken = "ClientRequestToken"
            case target = "Target"
        }
    }

    public struct SubscribeResult: AWSDecodableShape {

        /// The Amazon Resource Name (ARN) of the notification rule for which you have created assocations.
        public let arn: String?

        public init(arn: String? = nil) {
            self.arn = arn
        }

        private enum CodingKeys: String, CodingKey {
            case arn = "Arn"
        }
    }

    public struct TagResourceRequest: AWSEncodableShape {

        /// The Amazon Resource Name (ARN) of the notification rule to tag.
        public let arn: String
        /// The list of tags to associate with the resource. Tag key names cannot start with "aws".
        public let tags: [String: String]

        public init(arn: String, tags: [String: String]) {
            self.arn = arn
            self.tags = tags
        }

        public func validate(name: String) throws {
            try self.validate(self.arn, name: "arn", parent: name, pattern: "^arn:aws[^:\\s]*:codestar-notifications:[^:\\s]+:\\d{12}:notificationrule\\/(.*\\S)?$")
            try self.tags.forEach {
                try validate($0.key, name: "tags.key", parent: name, max: 128)
                try validate($0.key, name: "tags.key", parent: name, min: 1)
                try validate($0.key, name: "tags.key", parent: name, pattern: "^([\\p{L}\\p{Z}\\p{N}_.:/=+\\-@]*)$")
                try validate($0.value, name: "tags[\"\($0.key)\"]", parent: name, max: 256)
                try validate($0.value, name: "tags[\"\($0.key)\"]", parent: name, pattern: "^([\\p{L}\\p{Z}\\p{N}_.:/=+\\-@]*)$")
            }
        }

        private enum CodingKeys: String, CodingKey {
            case arn = "Arn"
            case tags = "Tags"
        }
    }

    public struct TagResourceResult: AWSDecodableShape {

        /// The list of tags associated with the resource.
        public let tags: [String: String]?

        public init(tags: [String: String]? = nil) {
            self.tags = tags
        }

        private enum CodingKeys: String, CodingKey {
            case tags = "Tags"
        }
    }

    public struct Target: AWSEncodableShape {

        /// The Amazon Resource Name (ARN) of the SNS topic.
        public let targetAddress: String?
        /// The target type. Can be an Amazon SNS topic.
        public let targetType: String?

        public init(targetAddress: String? = nil, targetType: String? = nil) {
            self.targetAddress = targetAddress
            self.targetType = targetType
        }

        public func validate(name: String) throws {
            try self.validate(self.targetAddress, name: "targetAddress", parent: name, max: 320)
            try self.validate(self.targetAddress, name: "targetAddress", parent: name, min: 1)
            try self.validate(self.targetType, name: "targetType", parent: name, pattern: "^[A-Za-z]+$")
        }

        private enum CodingKeys: String, CodingKey {
            case targetAddress = "TargetAddress"
            case targetType = "TargetType"
        }
    }

    public struct TargetSummary: AWSDecodableShape {

        /// The Amazon Resource Name (ARN) of the SNS topic.
        public let targetAddress: String?
        /// The status of the target.
        public let targetStatus: TargetStatus?
        /// The type of the target (for example, SNS).
        public let targetType: String?

        public init(targetAddress: String? = nil, targetStatus: TargetStatus? = nil, targetType: String? = nil) {
            self.targetAddress = targetAddress
            self.targetStatus = targetStatus
            self.targetType = targetType
        }

        private enum CodingKeys: String, CodingKey {
            case targetAddress = "TargetAddress"
            case targetStatus = "TargetStatus"
            case targetType = "TargetType"
        }
    }

    public struct UnsubscribeRequest: AWSEncodableShape {

        /// The Amazon Resource Name (ARN) of the notification rule.
        public let arn: String
        /// The ARN of the SNS topic to unsubscribe from the notification rule.
        public let targetAddress: String

        public init(arn: String, targetAddress: String) {
            self.arn = arn
            self.targetAddress = targetAddress
        }

        public func validate(name: String) throws {
            try self.validate(self.arn, name: "arn", parent: name, pattern: "^arn:aws[^:\\s]*:codestar-notifications:[^:\\s]+:\\d{12}:notificationrule\\/(.*\\S)?$")
            try self.validate(self.targetAddress, name: "targetAddress", parent: name, max: 320)
            try self.validate(self.targetAddress, name: "targetAddress", parent: name, min: 1)
        }

        private enum CodingKeys: String, CodingKey {
            case arn = "Arn"
            case targetAddress = "TargetAddress"
        }
    }

    public struct UnsubscribeResult: AWSDecodableShape {

        /// The Amazon Resource Name (ARN) of the the notification rule from which you have removed a subscription.
        public let arn: String

        public init(arn: String) {
            self.arn = arn
        }

        private enum CodingKeys: String, CodingKey {
            case arn = "Arn"
        }
    }

    public struct UntagResourceRequest: AWSEncodableShape {

        /// The Amazon Resource Name (ARN) of the notification rule from which to remove the tags.
        public let arn: String
        /// The key names of the tags to remove.
        public let tagKeys: [String]

        public init(arn: String, tagKeys: [String]) {
            self.arn = arn
            self.tagKeys = tagKeys
        }

        public func validate(name: String) throws {
            try self.validate(self.arn, name: "arn", parent: name, pattern: "^arn:aws[^:\\s]*:codestar-notifications:[^:\\s]+:\\d{12}:notificationrule\\/(.*\\S)?$")
            try self.tagKeys.forEach {
                try validate($0, name: "tagKeys[]", parent: name, max: 128)
                try validate($0, name: "tagKeys[]", parent: name, min: 1)
                try validate($0, name: "tagKeys[]", parent: name, pattern: "^([\\p{L}\\p{Z}\\p{N}_.:/=+\\-@]*)$")
            }
        }

        private enum CodingKeys: String, CodingKey {
            case arn = "Arn"
            case tagKeys = "TagKeys"
        }
    }

    public struct UntagResourceResult: AWSDecodableShape {


        public init() {
        }

    }

    public struct UpdateNotificationRuleRequest: AWSEncodableShape {

        /// The Amazon Resource Name (ARN) of the notification rule.
        public let arn: String
        /// The level of detail to include in the notifications for this resource. BASIC will include only the contents of the event as it would appear in AWS CloudWatch. FULL will include any supplemental information provided by AWS CodeStar Notifications and/or the service for the resource for which the notification is created.
        public let detailType: DetailType?
        /// A list of event types associated with this notification rule.
        public let eventTypeIds: [String]?
        /// The name of the notification rule.
        public let name: String?
        /// The status of the notification rule. Valid statuses include enabled (sending notifications) or disabled (not sending notifications).
        public let status: NotificationRuleStatus?
        /// The address and type of the targets to receive notifications from this notification rule.
        public let targets: [Target]?

        public init(arn: String, detailType: DetailType? = nil, eventTypeIds: [String]? = nil, name: String? = nil, status: NotificationRuleStatus? = nil, targets: [Target]? = nil) {
            self.arn = arn
            self.detailType = detailType
            self.eventTypeIds = eventTypeIds
            self.name = name
            self.status = status
            self.targets = targets
        }

        public func validate(name: String) throws {
            try self.validate(self.arn, name: "arn", parent: name, pattern: "^arn:aws[^:\\s]*:codestar-notifications:[^:\\s]+:\\d{12}:notificationrule\\/(.*\\S)?$")
            try self.eventTypeIds?.forEach {
                try validate($0, name: "eventTypeIds[]", parent: name, max: 200)
                try validate($0, name: "eventTypeIds[]", parent: name, min: 1)
            }
            try self.validate(self.name, name: "name", parent: name, max: 64)
            try self.validate(self.name, name: "name", parent: name, min: 1)
            try self.validate(self.name, name: "name", parent: name, pattern: "[A-Za-z0-9\\-_ ]+$")
            try self.targets?.forEach {
                try $0.validate(name: "\(name).targets[]")
            }
            try self.validate(self.targets, name: "targets", parent: name, max: 10)
        }

        private enum CodingKeys: String, CodingKey {
            case arn = "Arn"
            case detailType = "DetailType"
            case eventTypeIds = "EventTypeIds"
            case name = "Name"
            case status = "Status"
            case targets = "Targets"
        }
    }

    public struct UpdateNotificationRuleResult: AWSDecodableShape {


        public init() {
        }

    }
}
