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
Client object for interacting with AWS MediaLive service.

API for AWS Elemental MediaLive
*/
public struct MediaLive {

    //MARK: Member variables

    public let client: AWSClient

    //MARK: Initialization

    /// Initialize the MediaLive client
    /// - parameters:
    ///     - accessKeyId: Public access key provided by AWS
    ///     - secretAccessKey: Private access key provided by AWS
    ///     - sessionToken: Token provided by STS.AssumeRole() which allows access to another AWS account
    ///     - region: Region of server you want to communicate with
    ///     - endpoint: Custom endpoint URL to use instead of standard AWS servers
    ///     - middlewares: Array of middlewares to apply to requests and responses
    ///     - httpClientProvider: HTTPClient to use. Use `createNew` if the client should manage its own HTTPClient.
    public init(
        accessKeyId: String? = nil,
        secretAccessKey: String? = nil,
        sessionToken: String? = nil,
        region: AWSSDKSwiftCore.Region? = nil,
        endpoint: String? = nil,
        middlewares: [AWSServiceMiddleware] = [],
        httpClientProvider: AWSClient.HTTPClientProvider = .createNew
    ) {
        self.client = AWSClient(
            accessKeyId: accessKeyId,
            secretAccessKey: secretAccessKey,
            sessionToken: sessionToken,
            region: region,
            partition: region?.partition ?? .aws,
            service: "medialive",
            serviceProtocol: .restjson,
            apiVersion: "2017-10-14",
            endpoint: endpoint,
            middlewares: middlewares,
            possibleErrorTypes: [MediaLiveErrorType.self],
            httpClientProvider: httpClientProvider
        )
    }
    
    //MARK: API Calls

    ///  Update a channel schedule
    public func batchUpdateSchedule(_ input: BatchUpdateScheduleRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<BatchUpdateScheduleResponse> {
        return client.send(operation: "BatchUpdateSchedule", path: "/prod/channels/{channelId}/schedule", httpMethod: "PUT", input: input, on: eventLoop)
    }

    ///  Creates a new channel
    public func createChannel(_ input: CreateChannelRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateChannelResponse> {
        return client.send(operation: "CreateChannel", path: "/prod/channels", httpMethod: "POST", input: input, on: eventLoop)
    }

    ///  Create an input
    public func createInput(_ input: CreateInputRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateInputResponse> {
        return client.send(operation: "CreateInput", path: "/prod/inputs", httpMethod: "POST", input: input, on: eventLoop)
    }

    ///  Creates a Input Security Group
    public func createInputSecurityGroup(_ input: CreateInputSecurityGroupRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateInputSecurityGroupResponse> {
        return client.send(operation: "CreateInputSecurityGroup", path: "/prod/inputSecurityGroups", httpMethod: "POST", input: input, on: eventLoop)
    }

    ///  Create a new multiplex.
    public func createMultiplex(_ input: CreateMultiplexRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateMultiplexResponse> {
        return client.send(operation: "CreateMultiplex", path: "/prod/multiplexes", httpMethod: "POST", input: input, on: eventLoop)
    }

    ///  Create a new program in the multiplex.
    public func createMultiplexProgram(_ input: CreateMultiplexProgramRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateMultiplexProgramResponse> {
        return client.send(operation: "CreateMultiplexProgram", path: "/prod/multiplexes/{multiplexId}/programs", httpMethod: "POST", input: input, on: eventLoop)
    }

    ///  Create tags for a resource
    @discardableResult public func createTags(_ input: CreateTagsRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<Void> {
        return client.send(operation: "CreateTags", path: "/prod/tags/{resource-arn}", httpMethod: "POST", input: input, on: eventLoop)
    }

    ///  Starts deletion of channel. The associated outputs are also deleted.
    public func deleteChannel(_ input: DeleteChannelRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DeleteChannelResponse> {
        return client.send(operation: "DeleteChannel", path: "/prod/channels/{channelId}", httpMethod: "DELETE", input: input, on: eventLoop)
    }

    ///  Deletes the input end point
    public func deleteInput(_ input: DeleteInputRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DeleteInputResponse> {
        return client.send(operation: "DeleteInput", path: "/prod/inputs/{inputId}", httpMethod: "DELETE", input: input, on: eventLoop)
    }

    ///  Deletes an Input Security Group
    public func deleteInputSecurityGroup(_ input: DeleteInputSecurityGroupRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DeleteInputSecurityGroupResponse> {
        return client.send(operation: "DeleteInputSecurityGroup", path: "/prod/inputSecurityGroups/{inputSecurityGroupId}", httpMethod: "DELETE", input: input, on: eventLoop)
    }

    ///  Delete a multiplex. The multiplex must be idle.
    public func deleteMultiplex(_ input: DeleteMultiplexRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DeleteMultiplexResponse> {
        return client.send(operation: "DeleteMultiplex", path: "/prod/multiplexes/{multiplexId}", httpMethod: "DELETE", input: input, on: eventLoop)
    }

    ///  Delete a program from a multiplex.
    public func deleteMultiplexProgram(_ input: DeleteMultiplexProgramRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DeleteMultiplexProgramResponse> {
        return client.send(operation: "DeleteMultiplexProgram", path: "/prod/multiplexes/{multiplexId}/programs/{programName}", httpMethod: "DELETE", input: input, on: eventLoop)
    }

    ///  Delete an expired reservation.
    public func deleteReservation(_ input: DeleteReservationRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DeleteReservationResponse> {
        return client.send(operation: "DeleteReservation", path: "/prod/reservations/{reservationId}", httpMethod: "DELETE", input: input, on: eventLoop)
    }

    ///  Delete all schedule actions on a channel.
    public func deleteSchedule(_ input: DeleteScheduleRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DeleteScheduleResponse> {
        return client.send(operation: "DeleteSchedule", path: "/prod/channels/{channelId}/schedule", httpMethod: "DELETE", input: input, on: eventLoop)
    }

    ///  Removes tags for a resource
    @discardableResult public func deleteTags(_ input: DeleteTagsRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<Void> {
        return client.send(operation: "DeleteTags", path: "/prod/tags/{resource-arn}", httpMethod: "DELETE", input: input, on: eventLoop)
    }

    ///  Gets details about a channel
    public func describeChannel(_ input: DescribeChannelRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeChannelResponse> {
        return client.send(operation: "DescribeChannel", path: "/prod/channels/{channelId}", httpMethod: "GET", input: input, on: eventLoop)
    }

    ///  Produces details about an input
    public func describeInput(_ input: DescribeInputRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeInputResponse> {
        return client.send(operation: "DescribeInput", path: "/prod/inputs/{inputId}", httpMethod: "GET", input: input, on: eventLoop)
    }

    ///  Produces a summary of an Input Security Group
    public func describeInputSecurityGroup(_ input: DescribeInputSecurityGroupRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeInputSecurityGroupResponse> {
        return client.send(operation: "DescribeInputSecurityGroup", path: "/prod/inputSecurityGroups/{inputSecurityGroupId}", httpMethod: "GET", input: input, on: eventLoop)
    }

    ///  Gets details about a multiplex.
    public func describeMultiplex(_ input: DescribeMultiplexRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeMultiplexResponse> {
        return client.send(operation: "DescribeMultiplex", path: "/prod/multiplexes/{multiplexId}", httpMethod: "GET", input: input, on: eventLoop)
    }

    ///  Get the details for a program in a multiplex.
    public func describeMultiplexProgram(_ input: DescribeMultiplexProgramRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeMultiplexProgramResponse> {
        return client.send(operation: "DescribeMultiplexProgram", path: "/prod/multiplexes/{multiplexId}/programs/{programName}", httpMethod: "GET", input: input, on: eventLoop)
    }

    ///  Get details for an offering.
    public func describeOffering(_ input: DescribeOfferingRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeOfferingResponse> {
        return client.send(operation: "DescribeOffering", path: "/prod/offerings/{offeringId}", httpMethod: "GET", input: input, on: eventLoop)
    }

    ///  Get details for a reservation.
    public func describeReservation(_ input: DescribeReservationRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeReservationResponse> {
        return client.send(operation: "DescribeReservation", path: "/prod/reservations/{reservationId}", httpMethod: "GET", input: input, on: eventLoop)
    }

    ///  Get a channel schedule
    public func describeSchedule(_ input: DescribeScheduleRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeScheduleResponse> {
        return client.send(operation: "DescribeSchedule", path: "/prod/channels/{channelId}/schedule", httpMethod: "GET", input: input, on: eventLoop)
    }

    ///  Produces list of channels that have been created
    public func listChannels(_ input: ListChannelsRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ListChannelsResponse> {
        return client.send(operation: "ListChannels", path: "/prod/channels", httpMethod: "GET", input: input, on: eventLoop)
    }

    ///  Produces a list of Input Security Groups for an account
    public func listInputSecurityGroups(_ input: ListInputSecurityGroupsRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ListInputSecurityGroupsResponse> {
        return client.send(operation: "ListInputSecurityGroups", path: "/prod/inputSecurityGroups", httpMethod: "GET", input: input, on: eventLoop)
    }

    ///  Produces list of inputs that have been created
    public func listInputs(_ input: ListInputsRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ListInputsResponse> {
        return client.send(operation: "ListInputs", path: "/prod/inputs", httpMethod: "GET", input: input, on: eventLoop)
    }

    ///  List the programs that currently exist for a specific multiplex.
    public func listMultiplexPrograms(_ input: ListMultiplexProgramsRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ListMultiplexProgramsResponse> {
        return client.send(operation: "ListMultiplexPrograms", path: "/prod/multiplexes/{multiplexId}/programs", httpMethod: "GET", input: input, on: eventLoop)
    }

    ///  Retrieve a list of the existing multiplexes.
    public func listMultiplexes(_ input: ListMultiplexesRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ListMultiplexesResponse> {
        return client.send(operation: "ListMultiplexes", path: "/prod/multiplexes", httpMethod: "GET", input: input, on: eventLoop)
    }

    ///  List offerings available for purchase.
    public func listOfferings(_ input: ListOfferingsRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ListOfferingsResponse> {
        return client.send(operation: "ListOfferings", path: "/prod/offerings", httpMethod: "GET", input: input, on: eventLoop)
    }

    ///  List purchased reservations.
    public func listReservations(_ input: ListReservationsRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ListReservationsResponse> {
        return client.send(operation: "ListReservations", path: "/prod/reservations", httpMethod: "GET", input: input, on: eventLoop)
    }

    ///  Produces list of tags that have been created for a resource
    public func listTagsForResource(_ input: ListTagsForResourceRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ListTagsForResourceResponse> {
        return client.send(operation: "ListTagsForResource", path: "/prod/tags/{resource-arn}", httpMethod: "GET", input: input, on: eventLoop)
    }

    ///  Purchase an offering and create a reservation.
    public func purchaseOffering(_ input: PurchaseOfferingRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<PurchaseOfferingResponse> {
        return client.send(operation: "PurchaseOffering", path: "/prod/offerings/{offeringId}/purchase", httpMethod: "POST", input: input, on: eventLoop)
    }

    ///  Starts an existing channel
    public func startChannel(_ input: StartChannelRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<StartChannelResponse> {
        return client.send(operation: "StartChannel", path: "/prod/channels/{channelId}/start", httpMethod: "POST", input: input, on: eventLoop)
    }

    ///  Start (run) the multiplex. Starting the multiplex does not start the channels. You must explicitly start each channel.
    public func startMultiplex(_ input: StartMultiplexRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<StartMultiplexResponse> {
        return client.send(operation: "StartMultiplex", path: "/prod/multiplexes/{multiplexId}/start", httpMethod: "POST", input: input, on: eventLoop)
    }

    ///  Stops a running channel
    public func stopChannel(_ input: StopChannelRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<StopChannelResponse> {
        return client.send(operation: "StopChannel", path: "/prod/channels/{channelId}/stop", httpMethod: "POST", input: input, on: eventLoop)
    }

    ///  Stops a running multiplex. If the multiplex isn't running, this action has no effect.
    public func stopMultiplex(_ input: StopMultiplexRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<StopMultiplexResponse> {
        return client.send(operation: "StopMultiplex", path: "/prod/multiplexes/{multiplexId}/stop", httpMethod: "POST", input: input, on: eventLoop)
    }

    ///  Updates a channel.
    public func updateChannel(_ input: UpdateChannelRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<UpdateChannelResponse> {
        return client.send(operation: "UpdateChannel", path: "/prod/channels/{channelId}", httpMethod: "PUT", input: input, on: eventLoop)
    }

    ///  Changes the class of the channel.
    public func updateChannelClass(_ input: UpdateChannelClassRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<UpdateChannelClassResponse> {
        return client.send(operation: "UpdateChannelClass", path: "/prod/channels/{channelId}/channelClass", httpMethod: "PUT", input: input, on: eventLoop)
    }

    ///  Updates an input.
    public func updateInput(_ input: UpdateInputRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<UpdateInputResponse> {
        return client.send(operation: "UpdateInput", path: "/prod/inputs/{inputId}", httpMethod: "PUT", input: input, on: eventLoop)
    }

    ///  Update an Input Security Group's Whilelists.
    public func updateInputSecurityGroup(_ input: UpdateInputSecurityGroupRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<UpdateInputSecurityGroupResponse> {
        return client.send(operation: "UpdateInputSecurityGroup", path: "/prod/inputSecurityGroups/{inputSecurityGroupId}", httpMethod: "PUT", input: input, on: eventLoop)
    }

    ///  Updates a multiplex.
    public func updateMultiplex(_ input: UpdateMultiplexRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<UpdateMultiplexResponse> {
        return client.send(operation: "UpdateMultiplex", path: "/prod/multiplexes/{multiplexId}", httpMethod: "PUT", input: input, on: eventLoop)
    }

    ///  Update a program in a multiplex.
    public func updateMultiplexProgram(_ input: UpdateMultiplexProgramRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<UpdateMultiplexProgramResponse> {
        return client.send(operation: "UpdateMultiplexProgram", path: "/prod/multiplexes/{multiplexId}/programs/{programName}", httpMethod: "PUT", input: input, on: eventLoop)
    }

    ///  Update reservation.
    public func updateReservation(_ input: UpdateReservationRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<UpdateReservationResponse> {
        return client.send(operation: "UpdateReservation", path: "/prod/reservations/{reservationId}", httpMethod: "PUT", input: input, on: eventLoop)
    }
}
