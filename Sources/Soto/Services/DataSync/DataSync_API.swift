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

/// Service object for interacting with AWS DataSync service.
///
/// AWS DataSync AWS DataSync is a managed data transfer service that makes it simpler for you to automate moving data between on-premises storage and Amazon Simple Storage Service (Amazon S3) or Amazon Elastic File System (Amazon EFS).  This API interface reference for AWS DataSync contains documentation for a programming interface that you can use to manage AWS DataSync.
public struct DataSync: AWSService {
    // MARK: Member variables

    /// Client used for communication with AWS
    public let client: AWSClient
    /// Service configuration
    public let config: AWSServiceConfig

    // MARK: Initialization

    /// Initialize the DataSync client
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
            amzTarget: "FmrsService",
            service: "datasync",
            serviceProtocol: .json(version: "1.1"),
            apiVersion: "2018-11-09",
            endpoint: endpoint,
            errorType: DataSyncErrorType.self,
            timeout: timeout,
            byteBufferAllocator: byteBufferAllocator,
            options: options
        )
    }

    // MARK: API Calls

    /// Cancels execution of a task.  When you cancel a task execution, the transfer of some files is abruptly interrupted. The contents of files that are transferred to the destination might be incomplete or inconsistent with the source files. However, if you start a new task execution on the same task and you allow the task execution to complete, file content on the destination is complete and consistent. This applies to other unexpected failures that interrupt a task execution. In all of these cases, AWS DataSync successfully complete the transfer when you start the next task execution.
    public func cancelTaskExecution(_ input: CancelTaskExecutionRequest, context: LoggingContext, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CancelTaskExecutionResponse> {
        return self.client.execute(operation: "CancelTaskExecution", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, context: context, on: eventLoop)
    }

    /// Activates an AWS DataSync agent that you have deployed on your host. The activation process associates your agent with your account. In the activation process, you specify information such as the AWS Region that you want to activate the agent in. You activate the agent in the AWS Region where your target locations (in Amazon S3 or Amazon EFS) reside. Your tasks are created in this AWS Region. You can activate the agent in a VPC (virtual private cloud) or provide the agent access to a VPC endpoint so you can run tasks without going over the public internet. You can use an agent for more than one location. If a task uses multiple agents, all of them need to have status AVAILABLE for the task to run. If you use multiple agents for a source location, the status of all the agents must be AVAILABLE for the task to run.  Agents are automatically updated by AWS on a regular basis, using a mechanism that ensures minimal interruption to your tasks.
    public func createAgent(_ input: CreateAgentRequest, context: LoggingContext, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateAgentResponse> {
        return self.client.execute(operation: "CreateAgent", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, context: context, on: eventLoop)
    }

    /// Creates an endpoint for an Amazon EFS file system.
    public func createLocationEfs(_ input: CreateLocationEfsRequest, context: LoggingContext, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateLocationEfsResponse> {
        return self.client.execute(operation: "CreateLocationEfs", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, context: context, on: eventLoop)
    }

    /// Creates an endpoint for an Amazon FSx for Windows File Server file system.
    public func createLocationFsxWindows(_ input: CreateLocationFsxWindowsRequest, context: LoggingContext, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateLocationFsxWindowsResponse> {
        return self.client.execute(operation: "CreateLocationFsxWindows", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, context: context, on: eventLoop)
    }

    /// Defines a file system on a Network File System (NFS) server that can be read from or written to.
    public func createLocationNfs(_ input: CreateLocationNfsRequest, context: LoggingContext, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateLocationNfsResponse> {
        return self.client.execute(operation: "CreateLocationNfs", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, context: context, on: eventLoop)
    }

    /// Creates an endpoint for a self-managed object storage bucket. For more information about self-managed object storage locations, see Creating a location for object storage.
    public func createLocationObjectStorage(_ input: CreateLocationObjectStorageRequest, context: LoggingContext, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateLocationObjectStorageResponse> {
        return self.client.execute(operation: "CreateLocationObjectStorage", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, context: context, on: eventLoop)
    }

    /// Creates an endpoint for an Amazon S3 bucket. For more information, see https://docs.aws.amazon.com/datasync/latest/userguide/create-locations-cli.html#create-location-s3-cli in the AWS DataSync User Guide.
    public func createLocationS3(_ input: CreateLocationS3Request, context: LoggingContext, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateLocationS3Response> {
        return self.client.execute(operation: "CreateLocationS3", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, context: context, on: eventLoop)
    }

    /// Defines a file system on a Server Message Block (SMB) server that can be read from or written to.
    public func createLocationSmb(_ input: CreateLocationSmbRequest, context: LoggingContext, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateLocationSmbResponse> {
        return self.client.execute(operation: "CreateLocationSmb", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, context: context, on: eventLoop)
    }

    /// Creates a task. A task includes a source location and a destination location, and a configuration that specifies how data is transferred. A task always transfers data from the source location to the destination location. The configuration specifies options such as task scheduling, bandwidth limits, etc. A task is the complete definition of a data transfer. When you create a task that transfers data between AWS services in different AWS Regions, one of the two locations that you specify must reside in the Region where DataSync is being used. The other location must be specified in a different Region. You can transfer data between commercial AWS Regions except for China, or between AWS GovCloud (US-East and US-West) Regions.  When you use DataSync to copy files or objects between AWS Regions, you pay for data transfer between Regions. This is billed as data transfer OUT from your source Region to your destination Region. For more information, see Data Transfer pricing.
    public func createTask(_ input: CreateTaskRequest, context: LoggingContext, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateTaskResponse> {
        return self.client.execute(operation: "CreateTask", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, context: context, on: eventLoop)
    }

    /// Deletes an agent. To specify which agent to delete, use the Amazon Resource Name (ARN) of the agent in your request. The operation disassociates the agent from your AWS account. However, it doesn't delete the agent virtual machine (VM) from your on-premises environment.
    public func deleteAgent(_ input: DeleteAgentRequest, context: LoggingContext, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DeleteAgentResponse> {
        return self.client.execute(operation: "DeleteAgent", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, context: context, on: eventLoop)
    }

    /// Deletes the configuration of a location used by AWS DataSync.
    public func deleteLocation(_ input: DeleteLocationRequest, context: LoggingContext, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DeleteLocationResponse> {
        return self.client.execute(operation: "DeleteLocation", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, context: context, on: eventLoop)
    }

    /// Deletes a task.
    public func deleteTask(_ input: DeleteTaskRequest, context: LoggingContext, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DeleteTaskResponse> {
        return self.client.execute(operation: "DeleteTask", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, context: context, on: eventLoop)
    }

    /// Returns metadata such as the name, the network interfaces, and the status (that is, whether the agent is running or not) for an agent. To specify which agent to describe, use the Amazon Resource Name (ARN) of the agent in your request.
    public func describeAgent(_ input: DescribeAgentRequest, context: LoggingContext, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeAgentResponse> {
        return self.client.execute(operation: "DescribeAgent", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, context: context, on: eventLoop)
    }

    /// Returns metadata, such as the path information about an Amazon EFS location.
    public func describeLocationEfs(_ input: DescribeLocationEfsRequest, context: LoggingContext, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeLocationEfsResponse> {
        return self.client.execute(operation: "DescribeLocationEfs", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, context: context, on: eventLoop)
    }

    /// Returns metadata, such as the path information about an Amazon FSx for Windows File Server location.
    public func describeLocationFsxWindows(_ input: DescribeLocationFsxWindowsRequest, context: LoggingContext, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeLocationFsxWindowsResponse> {
        return self.client.execute(operation: "DescribeLocationFsxWindows", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, context: context, on: eventLoop)
    }

    /// Returns metadata, such as the path information, about an NFS location.
    public func describeLocationNfs(_ input: DescribeLocationNfsRequest, context: LoggingContext, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeLocationNfsResponse> {
        return self.client.execute(operation: "DescribeLocationNfs", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, context: context, on: eventLoop)
    }

    /// Returns metadata about a self-managed object storage server location. For more information about self-managed object storage locations, see Creating a location for object storage.
    public func describeLocationObjectStorage(_ input: DescribeLocationObjectStorageRequest, context: LoggingContext, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeLocationObjectStorageResponse> {
        return self.client.execute(operation: "DescribeLocationObjectStorage", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, context: context, on: eventLoop)
    }

    /// Returns metadata, such as bucket name, about an Amazon S3 bucket location.
    public func describeLocationS3(_ input: DescribeLocationS3Request, context: LoggingContext, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeLocationS3Response> {
        return self.client.execute(operation: "DescribeLocationS3", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, context: context, on: eventLoop)
    }

    /// Returns metadata, such as the path and user information about an SMB location.
    public func describeLocationSmb(_ input: DescribeLocationSmbRequest, context: LoggingContext, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeLocationSmbResponse> {
        return self.client.execute(operation: "DescribeLocationSmb", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, context: context, on: eventLoop)
    }

    /// Returns metadata about a task.
    public func describeTask(_ input: DescribeTaskRequest, context: LoggingContext, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeTaskResponse> {
        return self.client.execute(operation: "DescribeTask", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, context: context, on: eventLoop)
    }

    /// Returns detailed metadata about a task that is being executed.
    public func describeTaskExecution(_ input: DescribeTaskExecutionRequest, context: LoggingContext, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeTaskExecutionResponse> {
        return self.client.execute(operation: "DescribeTaskExecution", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, context: context, on: eventLoop)
    }

    /// Returns a list of agents owned by an AWS account in the AWS Region specified in the request. The returned list is ordered by agent Amazon Resource Name (ARN). By default, this operation returns a maximum of 100 agents. This operation supports pagination that enables you to optionally reduce the number of agents returned in a response. If you have more agents than are returned in a response (that is, the response returns only a truncated list of your agents), the response contains a marker that you can specify in your next request to fetch the next page of agents.
    public func listAgents(_ input: ListAgentsRequest, context: LoggingContext, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ListAgentsResponse> {
        return self.client.execute(operation: "ListAgents", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, context: context, on: eventLoop)
    }

    /// Returns a list of source and destination locations. If you have more locations than are returned in a response (that is, the response returns only a truncated list of your agents), the response contains a token that you can specify in your next request to fetch the next page of locations.
    public func listLocations(_ input: ListLocationsRequest, context: LoggingContext, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ListLocationsResponse> {
        return self.client.execute(operation: "ListLocations", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, context: context, on: eventLoop)
    }

    /// Returns all the tags associated with a specified resource.
    public func listTagsForResource(_ input: ListTagsForResourceRequest, context: LoggingContext, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ListTagsForResourceResponse> {
        return self.client.execute(operation: "ListTagsForResource", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, context: context, on: eventLoop)
    }

    /// Returns a list of executed tasks.
    public func listTaskExecutions(_ input: ListTaskExecutionsRequest, context: LoggingContext, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ListTaskExecutionsResponse> {
        return self.client.execute(operation: "ListTaskExecutions", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, context: context, on: eventLoop)
    }

    /// Returns a list of all the tasks.
    public func listTasks(_ input: ListTasksRequest, context: LoggingContext, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ListTasksResponse> {
        return self.client.execute(operation: "ListTasks", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, context: context, on: eventLoop)
    }

    /// Starts a specific invocation of a task. A TaskExecution value represents an individual run of a task. Each task can have at most one TaskExecution at a time.  TaskExecution has the following transition phases: INITIALIZING | PREPARING | TRANSFERRING | VERIFYING | SUCCESS/FAILURE.  For detailed information, see the Task Execution section in the Components and Terminology topic in the AWS DataSync User Guide.
    public func startTaskExecution(_ input: StartTaskExecutionRequest, context: LoggingContext, on eventLoop: EventLoop? = nil) -> EventLoopFuture<StartTaskExecutionResponse> {
        return self.client.execute(operation: "StartTaskExecution", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, context: context, on: eventLoop)
    }

    /// Applies a key-value pair to an AWS resource.
    public func tagResource(_ input: TagResourceRequest, context: LoggingContext, on eventLoop: EventLoop? = nil) -> EventLoopFuture<TagResourceResponse> {
        return self.client.execute(operation: "TagResource", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, context: context, on: eventLoop)
    }

    /// Removes a tag from an AWS resource.
    public func untagResource(_ input: UntagResourceRequest, context: LoggingContext, on eventLoop: EventLoop? = nil) -> EventLoopFuture<UntagResourceResponse> {
        return self.client.execute(operation: "UntagResource", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, context: context, on: eventLoop)
    }

    /// Updates the name of an agent.
    public func updateAgent(_ input: UpdateAgentRequest, context: LoggingContext, on eventLoop: EventLoop? = nil) -> EventLoopFuture<UpdateAgentResponse> {
        return self.client.execute(operation: "UpdateAgent", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, context: context, on: eventLoop)
    }

    /// Updates some of the parameters of a previously created location for Network File System (NFS) access. For information about creating an NFS location, see Creating a location for NFS.
    public func updateLocationNfs(_ input: UpdateLocationNfsRequest, context: LoggingContext, on eventLoop: EventLoop? = nil) -> EventLoopFuture<UpdateLocationNfsResponse> {
        return self.client.execute(operation: "UpdateLocationNfs", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, context: context, on: eventLoop)
    }

    /// Updates some of the parameters of a previously created location for self-managed object storage server access. For information about creating a self-managed object storage location, see Creating a location for object storage.
    public func updateLocationObjectStorage(_ input: UpdateLocationObjectStorageRequest, context: LoggingContext, on eventLoop: EventLoop? = nil) -> EventLoopFuture<UpdateLocationObjectStorageResponse> {
        return self.client.execute(operation: "UpdateLocationObjectStorage", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, context: context, on: eventLoop)
    }

    /// Updates some of the parameters of a previously created location for Server Message Block (SMB) file system access. For information about creating an SMB location, see Creating a location for SMB.
    public func updateLocationSmb(_ input: UpdateLocationSmbRequest, context: LoggingContext, on eventLoop: EventLoop? = nil) -> EventLoopFuture<UpdateLocationSmbResponse> {
        return self.client.execute(operation: "UpdateLocationSmb", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, context: context, on: eventLoop)
    }

    /// Updates the metadata associated with a task.
    public func updateTask(_ input: UpdateTaskRequest, context: LoggingContext, on eventLoop: EventLoop? = nil) -> EventLoopFuture<UpdateTaskResponse> {
        return self.client.execute(operation: "UpdateTask", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, context: context, on: eventLoop)
    }

    /// Updates execution of a task. You can modify bandwidth throttling for a task execution that is running or queued. For more information, see Adjusting Bandwidth Throttling for a Task Execution.  The only Option that can be modified by UpdateTaskExecution is  BytesPerSecond .
    public func updateTaskExecution(_ input: UpdateTaskExecutionRequest, context: LoggingContext, on eventLoop: EventLoop? = nil) -> EventLoopFuture<UpdateTaskExecutionResponse> {
        return self.client.execute(operation: "UpdateTaskExecution", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, context: context, on: eventLoop)
    }
}

extension DataSync {
    /// Initializer required by `AWSService.with(middlewares:timeout:byteBufferAllocator:options)`. You are not able to use this initializer directly as there are no public
    /// initializers for `AWSServiceConfig.Patch`. Please use `AWSService.with(middlewares:timeout:byteBufferAllocator:options)` instead.
    public init(from: DataSync, patch: AWSServiceConfig.Patch) {
        self.client = from.client
        self.config = from.config.with(patch: patch)
    }
}
