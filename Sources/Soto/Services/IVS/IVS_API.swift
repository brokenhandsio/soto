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

/// Service object for interacting with AWS IVS service.
///
///  Introduction  The Amazon Interactive Video Service (IVS) API is REST compatible, using a standard HTTP API and an AWS EventBridge event stream for responses. JSON is used for both requests and responses, including errors. The API is an AWS regional service, currently in these regions: us-west-2, us-east-1, and eu-west-1.   All API request parameters and URLs are case sensitive.    For a summary of notable documentation changes in each release, see  Document History.  Service Endpoints  The following are the Amazon IVS service endpoints (all HTTPS):  Region name: US West (Oregon)   Region: us-west-2    Endpoint: ivs.us-west-2.amazonaws.com    Region name: US East (Virginia)   Region: us-east-1    Endpoint: ivs.us-east-1.amazonaws.com    Region name: EU West (Dublin)   Region: eu-west-1    Endpoint: ivs.eu-west-1.amazonaws.com     Allowed Header Values      Accept:  application/json     Accept-Encoding:  gzip, deflate     Content-Type: application/json    Resources  The following resources contain information about your IVS live stream (see  Getting Started with Amazon IVS):   Channel — Stores configuration data related to your live stream. You first create a channel and then use the channel’s stream key to start your live stream. See the Channel endpoints for more information.    Stream key — An identifier assigned by Amazon IVS when you create a channel, which is then used to authorize streaming. See the StreamKey endpoints for more information.  Treat the stream key like a secret, since it allows anyone to stream to the channel.     Playback key pair — Video playback may be restricted using playback-authorization tokens, which use public-key encryption. A playback key pair is the public-private pair of keys used to sign and validate the playback-authorization token. See the PlaybackKeyPair endpoints for more information.   Recording configuration — Stores configuration related to recording a live stream and where to store the recorded content. Multiple channels can reference the same recording configuration. See the Recording Configuration endpoints for more information.    Tagging  A tag is a metadata label that you assign to an AWS resource. A tag comprises a key and a value, both set by you. For example, you might set a tag as topic:nature to label a particular video category. See Tagging AWS Resources for more information, including restrictions that apply to tags. Tags can help you identify and organize your AWS resources. For example, you can use the same tag for different resources to indicate that they are related. You can also use tags to manage access (see  Access Tags).  The Amazon IVS API has these tag-related endpoints: TagResource, UntagResource, and ListTagsForResource. The following resources support tagging: Channels, Stream Keys, Playback Key Pairs, and Recording Configurations.  Authentication versus Authorization  Note the differences between these concepts:    Authentication is about verifying identity. You need to be authenticated to sign Amazon IVS API requests.    Authorization is about granting permissions. You need to be authorized to view Amazon IVS private channels. (Private channels are channels that are enabled for "playback authorization.")    Authentication  All Amazon IVS API requests must be authenticated with a signature. The AWS Command-Line Interface (CLI) and Amazon IVS Player SDKs take care of signing the underlying API calls for you. However, if your application calls the Amazon IVS API directly, it’s your responsibility to sign the requests. You generate a signature using valid AWS credentials that have permission to perform the requested action. For example, you must sign PutMetadata requests with a signature generated from an IAM user account that has the ivs:PutMetadata permission. For more information:   Authentication and generating signatures — See Authenticating Requests (AWS Signature Version 4) in the AWS General Reference.   Managing Amazon IVS permissions — See Identity and Access Management on the Security page of the Amazon IVS User Guide.    Channel Endpoints     CreateChannel — Creates a new channel and an associated stream key to start streaming.    GetChannel — Gets the channel configuration for the specified channel ARN (Amazon Resource Name).    BatchGetChannel — Performs GetChannel on multiple ARNs simultaneously.    ListChannels — Gets summary information about all channels in your account, in the AWS region where the API request is processed. This list can be filtered to match a specified name or recording-configuration ARN. Filters are mutually exclusive and cannot be used together. If you try to use both filters, you will get an error (409 Conflict Exception).    UpdateChannel — Updates a channel's configuration. This does not affect an ongoing stream of this channel. You must stop and restart the stream for the changes to take effect.    DeleteChannel — Deletes the specified channel.    StreamKey Endpoints     CreateStreamKey — Creates a stream key, used to initiate a stream, for the specified channel ARN.    GetStreamKey — Gets stream key information for the specified ARN.    BatchGetStreamKey — Performs GetStreamKey on multiple ARNs simultaneously.    ListStreamKeys — Gets summary information about stream keys for the specified channel.    DeleteStreamKey — Deletes the stream key for the specified ARN, so it can no longer be used to stream.    Stream Endpoints     GetStream — Gets information about the active (live) stream on a specified channel.    ListStreams — Gets summary information about live streams in your account, in the AWS region where the API request is processed.    StopStream — Disconnects the incoming RTMPS stream for the specified channel. Can be used in conjunction with DeleteStreamKey to prevent further streaming to a channel.    PutMetadata — Inserts metadata into the active stream of the specified channel. A maximum of 5 requests per second per channel is allowed, each with a maximum 1 KB payload. (If 5 TPS is not sufficient for your needs, we recommend batching your data into a single PutMetadata call.)    PlaybackKeyPair Endpoints  For more information, see Setting Up Private Channels in the Amazon IVS User Guide.    ImportPlaybackKeyPair — Imports the public portion of a new key pair and returns its arn and fingerprint. The privateKey can then be used to generate viewer authorization tokens, to grant viewers access to private channels (channels enabled for playback authorization).    GetPlaybackKeyPair — Gets a specified playback authorization key pair and returns the arn and fingerprint. The privateKey held by the caller can be used to generate viewer authorization tokens, to grant viewers access to private channels.    ListPlaybackKeyPairs — Gets summary information about playback key pairs.    DeletePlaybackKeyPair — Deletes a specified authorization key pair. This invalidates future viewer tokens generated using the key pair’s privateKey.    RecordingConfiguration Endpoints     CreateRecordingConfiguration — Creates a new recording configuration, used to enable recording to Amazon S3.    GetRecordingConfiguration — Gets the recording-configuration metadata for the specified ARN.    ListRecordingConfigurations — Gets summary information about all recording configurations in your account, in the AWS region where the API request is processed.    DeleteRecordingConfiguration — Deletes the recording configuration for the specified ARN.    AWS Tags Endpoints     TagResource — Adds or updates tags for the AWS resource with the specified ARN.    UntagResource — Removes tags from the resource with the specified ARN.    ListTagsForResource — Gets information about AWS tags for the specified ARN.
public struct IVS: AWSService {
    // MARK: Member variables

    /// Client used for communication with AWS
    public let client: AWSClient
    /// Service configuration
    public let config: AWSServiceConfig

    // MARK: Initialization

    /// Initialize the IVS client
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
            service: "ivs",
            serviceProtocol: .restjson,
            apiVersion: "2020-07-14",
            endpoint: endpoint,
            errorType: IVSErrorType.self,
            timeout: timeout,
            byteBufferAllocator: byteBufferAllocator,
            options: options
        )
    }

    // MARK: API Calls

    /// Performs GetChannel on multiple ARNs simultaneously.
    public func batchGetChannel(_ input: BatchGetChannelRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<BatchGetChannelResponse> {
        return self.client.execute(operation: "BatchGetChannel", path: "/BatchGetChannel", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Performs GetStreamKey on multiple ARNs simultaneously.
    public func batchGetStreamKey(_ input: BatchGetStreamKeyRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<BatchGetStreamKeyResponse> {
        return self.client.execute(operation: "BatchGetStreamKey", path: "/BatchGetStreamKey", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Creates a new channel and an associated stream key to start streaming.
    public func createChannel(_ input: CreateChannelRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateChannelResponse> {
        return self.client.execute(operation: "CreateChannel", path: "/CreateChannel", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Creates a new recording configuration, used to enable recording to Amazon S3.  Known issue: In the us-east-1 region, if you use the AWS CLI to create a recording configuration, it returns success even if the S3 bucket is in a different region. In this case, the state of the recording configuration is CREATE_FAILED (instead of ACTIVE). (In other regions, the CLI correctly returns failure if the bucket is in a different region.)  Workaround: Ensure that your S3 bucket is in the same region as the recording configuration. If you create a recording configuration in a different region as your S3 bucket, delete that recording configuration and create a new one with an S3 bucket from the correct region.
    public func createRecordingConfiguration(_ input: CreateRecordingConfigurationRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateRecordingConfigurationResponse> {
        return self.client.execute(operation: "CreateRecordingConfiguration", path: "/CreateRecordingConfiguration", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Creates a stream key, used to initiate a stream, for the specified channel ARN. Note that CreateChannel creates a stream key. If you subsequently use CreateStreamKey on the same channel, it will fail because a stream key already exists and there is a limit of 1 stream key per channel. To reset the stream key on a channel, use DeleteStreamKey and then CreateStreamKey.
    public func createStreamKey(_ input: CreateStreamKeyRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateStreamKeyResponse> {
        return self.client.execute(operation: "CreateStreamKey", path: "/CreateStreamKey", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Deletes the specified channel and its associated stream keys. If you try to delete a live channel, you will get an error (409 ConflictException). To delete a channel that is live, call StopStream, wait for the Amazon EventBridge "Stream End" event (to verify that the stream's state was changed from Live to Offline), then call DeleteChannel. (See  Using EventBridge with Amazon IVS.)
    @discardableResult public func deleteChannel(_ input: DeleteChannelRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<Void> {
        return self.client.execute(operation: "DeleteChannel", path: "/DeleteChannel", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Deletes a specified authorization key pair. This invalidates future viewer tokens generated using the key pair’s privateKey. For more information, see Setting Up Private Channels in the Amazon IVS User Guide.
    public func deletePlaybackKeyPair(_ input: DeletePlaybackKeyPairRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DeletePlaybackKeyPairResponse> {
        return self.client.execute(operation: "DeletePlaybackKeyPair", path: "/DeletePlaybackKeyPair", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Deletes the recording configuration for the specified ARN. If you try to delete a recording configuration that is associated with a channel, you will get an error (409 ConflictException). To avoid this, for all channels that reference the recording configuration, first use UpdateChannel to set the recordingConfigurationArn field to an empty string, then use DeleteRecordingConfiguration.
    @discardableResult public func deleteRecordingConfiguration(_ input: DeleteRecordingConfigurationRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<Void> {
        return self.client.execute(operation: "DeleteRecordingConfiguration", path: "/DeleteRecordingConfiguration", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Deletes the stream key for the specified ARN, so it can no longer be used to stream.
    @discardableResult public func deleteStreamKey(_ input: DeleteStreamKeyRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<Void> {
        return self.client.execute(operation: "DeleteStreamKey", path: "/DeleteStreamKey", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Gets the channel configuration for the specified channel ARN. See also BatchGetChannel.
    public func getChannel(_ input: GetChannelRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<GetChannelResponse> {
        return self.client.execute(operation: "GetChannel", path: "/GetChannel", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Gets a specified playback authorization key pair and returns the arn and fingerprint. The privateKey held by the caller can be used to generate viewer authorization tokens, to grant viewers access to private channels. For more information, see Setting Up Private Channels in the Amazon IVS User Guide.
    public func getPlaybackKeyPair(_ input: GetPlaybackKeyPairRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<GetPlaybackKeyPairResponse> {
        return self.client.execute(operation: "GetPlaybackKeyPair", path: "/GetPlaybackKeyPair", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Gets the recording configuration for the specified ARN.
    public func getRecordingConfiguration(_ input: GetRecordingConfigurationRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<GetRecordingConfigurationResponse> {
        return self.client.execute(operation: "GetRecordingConfiguration", path: "/GetRecordingConfiguration", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Gets information about the active (live) stream on a specified channel.
    public func getStream(_ input: GetStreamRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<GetStreamResponse> {
        return self.client.execute(operation: "GetStream", path: "/GetStream", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Gets stream-key information for a specified ARN.
    public func getStreamKey(_ input: GetStreamKeyRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<GetStreamKeyResponse> {
        return self.client.execute(operation: "GetStreamKey", path: "/GetStreamKey", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Imports the public portion of a new key pair and returns its arn and fingerprint. The privateKey can then be used to generate viewer authorization tokens, to grant viewers access to private channels. For more information, see Setting Up Private Channels in the Amazon IVS User Guide.
    public func importPlaybackKeyPair(_ input: ImportPlaybackKeyPairRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ImportPlaybackKeyPairResponse> {
        return self.client.execute(operation: "ImportPlaybackKeyPair", path: "/ImportPlaybackKeyPair", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Gets summary information about all channels in your account, in the AWS region where the API request is processed. This list can be filtered to match a specified name or recording-configuration ARN. Filters are mutually exclusive and cannot be used together. If you try to use both filters, you will get an error (409 ConflictException).
    public func listChannels(_ input: ListChannelsRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ListChannelsResponse> {
        return self.client.execute(operation: "ListChannels", path: "/ListChannels", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Gets summary information about playback key pairs. For more information, see Setting Up Private Channels in the Amazon IVS User Guide.
    public func listPlaybackKeyPairs(_ input: ListPlaybackKeyPairsRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ListPlaybackKeyPairsResponse> {
        return self.client.execute(operation: "ListPlaybackKeyPairs", path: "/ListPlaybackKeyPairs", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Gets summary information about all recording configurations in your account, in the AWS region where the API request is processed.
    public func listRecordingConfigurations(_ input: ListRecordingConfigurationsRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ListRecordingConfigurationsResponse> {
        return self.client.execute(operation: "ListRecordingConfigurations", path: "/ListRecordingConfigurations", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Gets summary information about stream keys for the specified channel.
    public func listStreamKeys(_ input: ListStreamKeysRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ListStreamKeysResponse> {
        return self.client.execute(operation: "ListStreamKeys", path: "/ListStreamKeys", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Gets summary information about live streams in your account, in the AWS region where the API request is processed.
    public func listStreams(_ input: ListStreamsRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ListStreamsResponse> {
        return self.client.execute(operation: "ListStreams", path: "/ListStreams", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Gets information about AWS tags for the specified ARN.
    public func listTagsForResource(_ input: ListTagsForResourceRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ListTagsForResourceResponse> {
        return self.client.execute(operation: "ListTagsForResource", path: "/tags/{resourceArn}", httpMethod: .GET, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Inserts metadata into the active stream of the specified channel. A maximum of 5 requests per second per channel is allowed, each with a maximum 1 KB payload. (If 5 TPS is not sufficient for your needs, we recommend batching your data into a single PutMetadata call.) Also see Embedding Metadata within a Video Stream in the Amazon IVS User Guide.
    @discardableResult public func putMetadata(_ input: PutMetadataRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<Void> {
        return self.client.execute(operation: "PutMetadata", path: "/PutMetadata", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Disconnects the incoming RTMPS stream for the specified channel. Can be used in conjunction with DeleteStreamKey to prevent further streaming to a channel.  Many streaming client-software libraries automatically reconnect a dropped RTMPS session, so to stop the stream permanently, you may want to first revoke the streamKey attached to the channel.
    public func stopStream(_ input: StopStreamRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<StopStreamResponse> {
        return self.client.execute(operation: "StopStream", path: "/StopStream", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Adds or updates tags for the AWS resource with the specified ARN.
    public func tagResource(_ input: TagResourceRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<TagResourceResponse> {
        return self.client.execute(operation: "TagResource", path: "/tags/{resourceArn}", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Removes tags from the resource with the specified ARN.
    public func untagResource(_ input: UntagResourceRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<UntagResourceResponse> {
        return self.client.execute(operation: "UntagResource", path: "/tags/{resourceArn}", httpMethod: .DELETE, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Updates a channel's configuration. This does not affect an ongoing stream of this channel. You must stop and restart the stream for the changes to take effect.
    public func updateChannel(_ input: UpdateChannelRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<UpdateChannelResponse> {
        return self.client.execute(operation: "UpdateChannel", path: "/UpdateChannel", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
}

extension IVS {
    /// Initializer required by `AWSService.with(middlewares:timeout:byteBufferAllocator:options)`. You are not able to use this initializer directly as there are no public
    /// initializers for `AWSServiceConfig.Patch`. Please use `AWSService.with(middlewares:timeout:byteBufferAllocator:options)` instead.
    public init(from: IVS, patch: AWSServiceConfig.Patch) {
        self.client = from.client
        self.config = from.config.with(patch: patch)
    }
}
