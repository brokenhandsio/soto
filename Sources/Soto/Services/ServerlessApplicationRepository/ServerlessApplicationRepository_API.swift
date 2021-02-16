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

@_exported import SotoCore

/// Service object for interacting with AWS ServerlessApplicationRepository service.
///
/// The AWS Serverless Application Repository makes it easy for developers and enterprises to quickly find
///  and deploy serverless applications in the AWS Cloud. For more information about serverless applications,
///  see Serverless Computing and Applications on the AWS website.The AWS Serverless Application Repository is deeply integrated with the AWS Lambda console, so that developers of 
///  all levels can get started with serverless computing without needing to learn anything new. You can use category 
///  keywords to browse for applications such as web and mobile backends, data processing applications, or chatbots. 
///  You can also search for applications by name, publisher, or event source. To use an application, you simply choose it, 
///  configure any required fields, and deploy it with a few clicks. You can also easily publish applications, sharing them publicly with the community at large, or privately
///  within your team or across your organization. To publish a serverless application (or app), you can use the
///  AWS Management Console, AWS Command Line Interface (AWS CLI), or AWS SDKs to upload the code. Along with the
///  code, you upload a simple manifest file, also known as the AWS Serverless Application Model (AWS SAM) template.
///  For more information about AWS SAM, see AWS Serverless Application Model (AWS SAM) on the AWS Labs
///  GitHub repository.The AWS Serverless Application Repository Developer Guide contains more information about the two developer
///  experiences available:
///  
///  Consuming Applications – Browse for applications and view information about them, including
///  source code and readme files. Also install, configure, and deploy applications of your choosing. 
///  Publishing Applications – Configure and upload applications to make them available to other
///  developers, and publish new versions of applications.
public struct ServerlessApplicationRepository: AWSService {
    // MARK: Member variables

    /// Client used for communication with AWS
    public let client: AWSClient
    /// Service configuration
    public let config: AWSServiceConfig

    // MARK: Initialization

    /// Initialize the ServerlessApplicationRepository client
    /// - parameters:
    ///     - client: AWSClient used to process requests
    ///     - region: Region of server you want to communicate with. This will override the partition parameter.
    ///     - partition: AWS partition where service resides, standard (.aws), china (.awscn), government (.awsusgov).
    ///     - endpoint: Custom endpoint URL to use instead of standard AWS servers
    ///     - timeout: Timeout value for HTTP requests
    public init(
        client: AWSClient,
        region: SotoCore.Region? = nil,
        partition: AWSPartition = .aws,
        endpoint: String? = nil,
        timeout: TimeAmount? = nil,
        byteBufferAllocator: ByteBufferAllocator = ByteBufferAllocator(),
        options: AWSServiceConfig.Options = []
    ) {
        self.client = client
        self.config = AWSServiceConfig(
            region: region,
            partition: region?.partition ?? partition,
            service: "serverlessrepo",
            serviceProtocol: .restjson,
            apiVersion: "2017-09-08",
            endpoint: endpoint,
            serviceEndpoints: ["us-gov-east-1": "serverlessrepo.us-gov-east-1.amazonaws.com", "us-gov-west-1": "serverlessrepo.us-gov-west-1.amazonaws.com"],
            errorType: ServerlessApplicationRepositoryErrorType.self,
            timeout: timeout,
            byteBufferAllocator: byteBufferAllocator,
            options: options
        )
    }

    // MARK: API Calls

    /// Creates an application, optionally including an AWS SAM file to create the first application version in the same call.
    public func createApplication(_ input: CreateApplicationRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateApplicationResponse> {
        return self.client.execute(operation: "CreateApplication", path: "/applications", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Creates an application version.
    public func createApplicationVersion(_ input: CreateApplicationVersionRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateApplicationVersionResponse> {
        return self.client.execute(operation: "CreateApplicationVersion", path: "/applications/{applicationId}/versions/{semanticVersion}", httpMethod: .PUT, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Creates an AWS CloudFormation change set for the given application.
    public func createCloudFormationChangeSet(_ input: CreateCloudFormationChangeSetRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateCloudFormationChangeSetResponse> {
        return self.client.execute(operation: "CreateCloudFormationChangeSet", path: "/applications/{applicationId}/changesets", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Creates an AWS CloudFormation template.
    public func createCloudFormationTemplate(_ input: CreateCloudFormationTemplateRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateCloudFormationTemplateResponse> {
        return self.client.execute(operation: "CreateCloudFormationTemplate", path: "/applications/{applicationId}/templates", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Deletes the specified application.
    @discardableResult public func deleteApplication(_ input: DeleteApplicationRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<Void> {
        return self.client.execute(operation: "DeleteApplication", path: "/applications/{applicationId}", httpMethod: .DELETE, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Gets the specified application.
    public func getApplication(_ input: GetApplicationRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<GetApplicationResponse> {
        return self.client.execute(operation: "GetApplication", path: "/applications/{applicationId}", httpMethod: .GET, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Retrieves the policy for the application.
    public func getApplicationPolicy(_ input: GetApplicationPolicyRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<GetApplicationPolicyResponse> {
        return self.client.execute(operation: "GetApplicationPolicy", path: "/applications/{applicationId}/policy", httpMethod: .GET, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Gets the specified AWS CloudFormation template.
    public func getCloudFormationTemplate(_ input: GetCloudFormationTemplateRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<GetCloudFormationTemplateResponse> {
        return self.client.execute(operation: "GetCloudFormationTemplate", path: "/applications/{applicationId}/templates/{templateId}", httpMethod: .GET, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Retrieves the list of applications nested in the containing application.
    public func listApplicationDependencies(_ input: ListApplicationDependenciesRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ListApplicationDependenciesResponse> {
        return self.client.execute(operation: "ListApplicationDependencies", path: "/applications/{applicationId}/dependencies", httpMethod: .GET, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Lists versions for the specified application.
    public func listApplicationVersions(_ input: ListApplicationVersionsRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ListApplicationVersionsResponse> {
        return self.client.execute(operation: "ListApplicationVersions", path: "/applications/{applicationId}/versions", httpMethod: .GET, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Lists applications owned by the requester.
    public func listApplications(_ input: ListApplicationsRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ListApplicationsResponse> {
        return self.client.execute(operation: "ListApplications", path: "/applications", httpMethod: .GET, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Sets the permission policy for an application. For the list of actions supported for this operation, see
    ///  Application 
    ///  Permissions
    ///  .
    public func putApplicationPolicy(_ input: PutApplicationPolicyRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<PutApplicationPolicyResponse> {
        return self.client.execute(operation: "PutApplicationPolicy", path: "/applications/{applicationId}/policy", httpMethod: .PUT, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Unshares an application from an AWS Organization.This operation can be called only from the organization's master account.
    @discardableResult public func unshareApplication(_ input: UnshareApplicationRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<Void> {
        return self.client.execute(operation: "UnshareApplication", path: "/applications/{applicationId}/unshare", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Updates the specified application.
    public func updateApplication(_ input: UpdateApplicationRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<UpdateApplicationResponse> {
        return self.client.execute(operation: "UpdateApplication", path: "/applications/{applicationId}", httpMethod: .PATCH, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
}

extension ServerlessApplicationRepository {
    /// Initializer required by `AWSService.with(middlewares:timeout:byteBufferAllocator:options)`. You are not able to use this initializer directly as there are no public
    /// initializers for `AWSServiceConfig.Patch`. Please use `AWSService.with(middlewares:timeout:byteBufferAllocator:options)` instead.
    public init(from: ServerlessApplicationRepository, patch: AWSServiceConfig.Patch) {
        self.client = from.client
        self.config = from.config.with(patch: patch)
    }
}
