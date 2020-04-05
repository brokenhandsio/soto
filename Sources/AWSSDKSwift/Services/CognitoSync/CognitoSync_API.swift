//===----------------------------------------------------------------------===//
//
// This source file is part of the AWSSDKSwift open source project
//
// Copyright (c) 2017-2020 the AWSSDKSwift project authors
// Licensed under Apache License v2.0
//
// See LICENSE.txt for license information
// See CONTRIBUTORS.txt for the list of AWSSDKSwift project authors
//
// SPDX-License-Identifier: Apache-2.0
//
//===----------------------------------------------------------------------===//

// THIS FILE IS AUTOMATICALLY GENERATED by https://github.com/swift-aws/aws-sdk-swift/blob/master/CodeGenerator/Sources/CodeGenerator/main.swift. DO NOT EDIT.

@_exported import AWSSDKSwiftCore
import Foundation
import NIO

/**
Client object for interacting with AWS CognitoSync service.

Amazon Cognito Sync Amazon Cognito Sync provides an AWS service and client library that enable cross-device syncing of application-related user data. High-level client libraries are available for both iOS and Android. You can use these libraries to persist data locally so that it's available even if the device is offline. Developer credentials don't need to be stored on the mobile device to access the service. You can use Amazon Cognito to obtain a normalized user ID and credentials. User data is persisted in a dataset that can store up to 1 MB of key-value pairs, and you can have up to 20 datasets per user identity. With Amazon Cognito Sync, the data stored for each identity is accessible only to credentials assigned to that identity. In order to use the Cognito Sync service, you need to make API calls using credentials retrieved with Amazon Cognito Identity service. If you want to use Cognito Sync in an Android or iOS application, you will probably want to make API calls via the AWS Mobile SDK. To learn more, see the Developer Guide for Android and the Developer Guide for iOS.
*/
public struct CognitoSync {

    //MARK: Member variables

    public let client: AWSClient

    //MARK: Initialization

    /// Initialize the CognitoSync client
    /// - parameters:
    ///     - accessKeyId: Public access key provided by AWS
    ///     - secretAccessKey: Private access key provided by AWS
    ///     - sessionToken: Token provided by STS.AssumeRole() which allows access to another AWS account
    ///     - region: Region of server you want to communicate with
    ///     - endpoint: Custom endpoint URL to use instead of standard AWS servers
    ///     - middlewares: Array of middlewares to apply to requests and responses
    ///     - eventLoopGroupProvider: EventLoopGroup to use. Use `useAWSClientShared` if the client shall manage its own EventLoopGroup.
    public init(accessKeyId: String? = nil, secretAccessKey: String? = nil, sessionToken: String? = nil, region: AWSSDKSwiftCore.Region? = nil, endpoint: String? = nil, middlewares: [AWSServiceMiddleware] = [], eventLoopGroupProvider: AWSClient.EventLoopGroupProvider = .useAWSClientShared) {
        self.client = AWSClient(
            accessKeyId: accessKeyId,
            secretAccessKey: secretAccessKey,
            sessionToken: sessionToken,
            region: region,
            service: "cognito-sync",
            serviceProtocol: ServiceProtocol(type: .restjson, version: ServiceProtocol.Version(major: 1, minor: 1)),
            apiVersion: "2014-06-30",
            endpoint: endpoint,
            middlewares: middlewares,
            possibleErrorTypes: [CognitoSyncErrorType.self],
            eventLoopGroupProvider: eventLoopGroupProvider
        )
    }
    
    //MARK: API Calls

    ///  Initiates a bulk publish of all existing datasets for an Identity Pool to the configured stream. Customers are limited to one successful bulk publish per 24 hours. Bulk publish is an asynchronous request, customers can see the status of the request via the GetBulkPublishDetails operation. This API can only be called with developer credentials. You cannot call this API with the temporary user credentials provided by Cognito Identity.
    public func bulkPublish(_ input: BulkPublishRequest) -> EventLoopFuture<BulkPublishResponse> {
        return client.send(operation: "BulkPublish", path: "/identitypools/{IdentityPoolId}/bulkpublish", httpMethod: "POST", input: input)
    }

    ///  Deletes the specific dataset. The dataset will be deleted permanently, and the action can't be undone. Datasets that this dataset was merged with will no longer report the merge. Any subsequent operation on this dataset will result in a ResourceNotFoundException. This API can be called with temporary user credentials provided by Cognito Identity or with developer credentials.
    public func deleteDataset(_ input: DeleteDatasetRequest) -> EventLoopFuture<DeleteDatasetResponse> {
        return client.send(operation: "DeleteDataset", path: "/identitypools/{IdentityPoolId}/identities/{IdentityId}/datasets/{DatasetName}", httpMethod: "DELETE", input: input)
    }

    ///  Gets meta data about a dataset by identity and dataset name. With Amazon Cognito Sync, each identity has access only to its own data. Thus, the credentials used to make this API call need to have access to the identity data. This API can be called with temporary user credentials provided by Cognito Identity or with developer credentials. You should use Cognito Identity credentials to make this API call.
    public func describeDataset(_ input: DescribeDatasetRequest) -> EventLoopFuture<DescribeDatasetResponse> {
        return client.send(operation: "DescribeDataset", path: "/identitypools/{IdentityPoolId}/identities/{IdentityId}/datasets/{DatasetName}", httpMethod: "GET", input: input)
    }

    ///  Gets usage details (for example, data storage) about a particular identity pool. This API can only be called with developer credentials. You cannot call this API with the temporary user credentials provided by Cognito Identity.
    public func describeIdentityPoolUsage(_ input: DescribeIdentityPoolUsageRequest) -> EventLoopFuture<DescribeIdentityPoolUsageResponse> {
        return client.send(operation: "DescribeIdentityPoolUsage", path: "/identitypools/{IdentityPoolId}", httpMethod: "GET", input: input)
    }

    ///  Gets usage information for an identity, including number of datasets and data usage. This API can be called with temporary user credentials provided by Cognito Identity or with developer credentials.
    public func describeIdentityUsage(_ input: DescribeIdentityUsageRequest) -> EventLoopFuture<DescribeIdentityUsageResponse> {
        return client.send(operation: "DescribeIdentityUsage", path: "/identitypools/{IdentityPoolId}/identities/{IdentityId}", httpMethod: "GET", input: input)
    }

    ///  Get the status of the last BulkPublish operation for an identity pool. This API can only be called with developer credentials. You cannot call this API with the temporary user credentials provided by Cognito Identity.
    public func getBulkPublishDetails(_ input: GetBulkPublishDetailsRequest) -> EventLoopFuture<GetBulkPublishDetailsResponse> {
        return client.send(operation: "GetBulkPublishDetails", path: "/identitypools/{IdentityPoolId}/getBulkPublishDetails", httpMethod: "POST", input: input)
    }

    ///  Gets the events and the corresponding Lambda functions associated with an identity pool. This API can only be called with developer credentials. You cannot call this API with the temporary user credentials provided by Cognito Identity.
    public func getCognitoEvents(_ input: GetCognitoEventsRequest) -> EventLoopFuture<GetCognitoEventsResponse> {
        return client.send(operation: "GetCognitoEvents", path: "/identitypools/{IdentityPoolId}/events", httpMethod: "GET", input: input)
    }

    ///  Gets the configuration settings of an identity pool. This API can only be called with developer credentials. You cannot call this API with the temporary user credentials provided by Cognito Identity.
    public func getIdentityPoolConfiguration(_ input: GetIdentityPoolConfigurationRequest) -> EventLoopFuture<GetIdentityPoolConfigurationResponse> {
        return client.send(operation: "GetIdentityPoolConfiguration", path: "/identitypools/{IdentityPoolId}/configuration", httpMethod: "GET", input: input)
    }

    ///  Lists datasets for an identity. With Amazon Cognito Sync, each identity has access only to its own data. Thus, the credentials used to make this API call need to have access to the identity data. ListDatasets can be called with temporary user credentials provided by Cognito Identity or with developer credentials. You should use the Cognito Identity credentials to make this API call.
    public func listDatasets(_ input: ListDatasetsRequest) -> EventLoopFuture<ListDatasetsResponse> {
        return client.send(operation: "ListDatasets", path: "/identitypools/{IdentityPoolId}/identities/{IdentityId}/datasets", httpMethod: "GET", input: input)
    }

    ///  Gets a list of identity pools registered with Cognito. ListIdentityPoolUsage can only be called with developer credentials. You cannot make this API call with the temporary user credentials provided by Cognito Identity.
    public func listIdentityPoolUsage(_ input: ListIdentityPoolUsageRequest) -> EventLoopFuture<ListIdentityPoolUsageResponse> {
        return client.send(operation: "ListIdentityPoolUsage", path: "/identitypools", httpMethod: "GET", input: input)
    }

    ///  Gets paginated records, optionally changed after a particular sync count for a dataset and identity. With Amazon Cognito Sync, each identity has access only to its own data. Thus, the credentials used to make this API call need to have access to the identity data. ListRecords can be called with temporary user credentials provided by Cognito Identity or with developer credentials. You should use Cognito Identity credentials to make this API call.
    public func listRecords(_ input: ListRecordsRequest) -> EventLoopFuture<ListRecordsResponse> {
        return client.send(operation: "ListRecords", path: "/identitypools/{IdentityPoolId}/identities/{IdentityId}/datasets/{DatasetName}/records", httpMethod: "GET", input: input)
    }

    ///  Registers a device to receive push sync notifications. This API can only be called with temporary credentials provided by Cognito Identity. You cannot call this API with developer credentials.
    public func registerDevice(_ input: RegisterDeviceRequest) -> EventLoopFuture<RegisterDeviceResponse> {
        return client.send(operation: "RegisterDevice", path: "/identitypools/{IdentityPoolId}/identity/{IdentityId}/device", httpMethod: "POST", input: input)
    }

    ///  Sets the AWS Lambda function for a given event type for an identity pool. This request only updates the key/value pair specified. Other key/values pairs are not updated. To remove a key value pair, pass a empty value for the particular key. This API can only be called with developer credentials. You cannot call this API with the temporary user credentials provided by Cognito Identity.
    @discardableResult public func setCognitoEvents(_ input: SetCognitoEventsRequest) -> EventLoopFuture<Void> {
        return client.send(operation: "SetCognitoEvents", path: "/identitypools/{IdentityPoolId}/events", httpMethod: "POST", input: input)
    }

    ///  Sets the necessary configuration for push sync. This API can only be called with developer credentials. You cannot call this API with the temporary user credentials provided by Cognito Identity.
    public func setIdentityPoolConfiguration(_ input: SetIdentityPoolConfigurationRequest) -> EventLoopFuture<SetIdentityPoolConfigurationResponse> {
        return client.send(operation: "SetIdentityPoolConfiguration", path: "/identitypools/{IdentityPoolId}/configuration", httpMethod: "POST", input: input)
    }

    ///  Subscribes to receive notifications when a dataset is modified by another device. This API can only be called with temporary credentials provided by Cognito Identity. You cannot call this API with developer credentials.
    public func subscribeToDataset(_ input: SubscribeToDatasetRequest) -> EventLoopFuture<SubscribeToDatasetResponse> {
        return client.send(operation: "SubscribeToDataset", path: "/identitypools/{IdentityPoolId}/identities/{IdentityId}/datasets/{DatasetName}/subscriptions/{DeviceId}", httpMethod: "POST", input: input)
    }

    ///  Unsubscribes from receiving notifications when a dataset is modified by another device. This API can only be called with temporary credentials provided by Cognito Identity. You cannot call this API with developer credentials.
    public func unsubscribeFromDataset(_ input: UnsubscribeFromDatasetRequest) -> EventLoopFuture<UnsubscribeFromDatasetResponse> {
        return client.send(operation: "UnsubscribeFromDataset", path: "/identitypools/{IdentityPoolId}/identities/{IdentityId}/datasets/{DatasetName}/subscriptions/{DeviceId}", httpMethod: "DELETE", input: input)
    }

    ///  Posts updates to records and adds and deletes records for a dataset and user. The sync count in the record patch is your last known sync count for that record. The server will reject an UpdateRecords request with a ResourceConflictException if you try to patch a record with a new value but a stale sync count. For example, if the sync count on the server is 5 for a key called highScore and you try and submit a new highScore with sync count of 4, the request will be rejected. To obtain the current sync count for a record, call ListRecords. On a successful update of the record, the response returns the new sync count for that record. You should present that sync count the next time you try to update that same record. When the record does not exist, specify the sync count as 0. This API can be called with temporary user credentials provided by Cognito Identity or with developer credentials.
    public func updateRecords(_ input: UpdateRecordsRequest) -> EventLoopFuture<UpdateRecordsResponse> {
        return client.send(operation: "UpdateRecords", path: "/identitypools/{IdentityPoolId}/identities/{IdentityId}/datasets/{DatasetName}", httpMethod: "POST", input: input)
    }
}
