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

/// Service object for interacting with AWS LexRuntimeV2 service.
public struct LexRuntimeV2: AWSService {
    // MARK: Member variables

    /// Client used for communication with AWS
    public let client: AWSClient
    /// Service configuration
    public let config: AWSServiceConfig

    // MARK: Initialization

    /// Initialize the LexRuntimeV2 client
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
            service: "runtime-v2-lex",
            signingName: "lex",
            serviceProtocol: .restjson,
            apiVersion: "2020-08-07",
            endpoint: endpoint,
            errorType: LexRuntimeV2ErrorType.self,
            timeout: timeout,
            byteBufferAllocator: byteBufferAllocator,
            options: options
        )
    }

    // MARK: API Calls

    /// Removes session information for a specified bot, alias, and user ID.  You can use this operation to restart a conversation with a bot. When you remove a session, the entire history of the session is removed so that you can start again. You don't need to delete a session. Sessions have a time limit and will expire. Set the session time limit when you create the bot. The default is 5 minutes, but you can specify anything between 1 minute and 24 hours. If you specify a bot or alias ID that doesn't exist, you receive a BadRequestException.  If the locale doesn't exist in the bot, or if the locale hasn't been enables for the alias, you receive a BadRequestException.
    public func deleteSession(_ input: DeleteSessionRequest, context: LoggingContext, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DeleteSessionResponse> {
        return self.client.execute(operation: "DeleteSession", path: "/bots/{botId}/botAliases/{botAliasId}/botLocales/{localeId}/sessions/{sessionId}", httpMethod: .DELETE, serviceConfig: self.config, input: input, context: context, on: eventLoop)
    }

    /// Returns session information for a specified bot, alias, and user. For example, you can use this operation to retrieve session information for a user that has left a long-running session in use. If the bot, alias, or session identifier doesn't exist, Amazon Lex V2 returns a BadRequestException. If the locale doesn't exist or is not enabled for the alias, you receive a BadRequestException.
    public func getSession(_ input: GetSessionRequest, context: LoggingContext, on eventLoop: EventLoop? = nil) -> EventLoopFuture<GetSessionResponse> {
        return self.client.execute(operation: "GetSession", path: "/bots/{botId}/botAliases/{botAliasId}/botLocales/{localeId}/sessions/{sessionId}", httpMethod: .GET, serviceConfig: self.config, input: input, context: context, on: eventLoop)
    }

    /// Creates a new session or modifies an existing session with an Amazon Lex V2 bot. Use this operation to enable your application to set the state of the bot.
    public func putSession(_ input: PutSessionRequest, context: LoggingContext, on eventLoop: EventLoop? = nil) -> EventLoopFuture<PutSessionResponse> {
        return self.client.execute(operation: "PutSession", path: "/bots/{botId}/botAliases/{botAliasId}/botLocales/{localeId}/sessions/{sessionId}", httpMethod: .POST, serviceConfig: self.config, input: input, context: context, on: eventLoop)
    }

    /// Sends user input to Amazon Lex V2. Client applications use this API to send requests to Amazon Lex V2 at runtime. Amazon Lex V2 then interprets the user input using the machine learning model that it build for the bot. In response, Amazon Lex V2 returns the next message to convey to the user and an optional response card to display.
    public func recognizeText(_ input: RecognizeTextRequest, context: LoggingContext, on eventLoop: EventLoop? = nil) -> EventLoopFuture<RecognizeTextResponse> {
        return self.client.execute(operation: "RecognizeText", path: "/bots/{botId}/botAliases/{botAliasId}/botLocales/{localeId}/sessions/{sessionId}/text", httpMethod: .POST, serviceConfig: self.config, input: input, context: context, on: eventLoop)
    }

    /// Sends user input to Amazon Lex V2. You can send text or speech. Clients use this API to send text and audio requests to Amazon Lex V2 at runtime. Amazon Lex V2 interprets the user input using the machine learning model built for the bot. The following request fields must be compressed with gzip and then base64 encoded before you send them to Amazon Lex V2.    requestAttributes   sessionState   The following response fields are compressed using gzip and then base64 encoded by Amazon Lex V2. Before you can use these fields, you must decode and decompress them.    inputTranscript   interpretations   messages   requestAttributes   sessionState   The example contains a Java application that compresses and encodes a Java object to send to Amazon Lex V2, and a second that decodes and decompresses a response from Amazon Lex V2.
    public func recognizeUtterance(_ input: RecognizeUtteranceRequest, context: LoggingContext, on eventLoop: EventLoop? = nil) -> EventLoopFuture<RecognizeUtteranceResponse> {
        return self.client.execute(operation: "RecognizeUtterance", path: "/bots/{botId}/botAliases/{botAliasId}/botLocales/{localeId}/sessions/{sessionId}/utterance", httpMethod: .POST, serviceConfig: self.config, input: input, context: context, on: eventLoop)
    }

    // MARK: Streaming API Calls

    /// Creates a new session or modifies an existing session with an Amazon Lex V2 bot. Use this operation to enable your application to set the state of the bot.
    public func putSessionStreaming(_ input: PutSessionRequest, context: LoggingContext, on eventLoop: EventLoop? = nil, _ stream: @escaping (ByteBuffer, EventLoop)->EventLoopFuture<Void>) -> EventLoopFuture<PutSessionResponse> {
        return self.client.execute(operation: "PutSession", path: "/bots/{botId}/botAliases/{botAliasId}/botLocales/{localeId}/sessions/{sessionId}", httpMethod: .POST, serviceConfig: self.config, input: input, context: context, on: eventLoop, stream: stream)
    }

    /// Sends user input to Amazon Lex V2. You can send text or speech. Clients use this API to send text and audio requests to Amazon Lex V2 at runtime. Amazon Lex V2 interprets the user input using the machine learning model built for the bot. The following request fields must be compressed with gzip and then base64 encoded before you send them to Amazon Lex V2.    requestAttributes   sessionState   The following response fields are compressed using gzip and then base64 encoded by Amazon Lex V2. Before you can use these fields, you must decode and decompress them.    inputTranscript   interpretations   messages   requestAttributes   sessionState   The example contains a Java application that compresses and encodes a Java object to send to Amazon Lex V2, and a second that decodes and decompresses a response from Amazon Lex V2.
    public func recognizeUtteranceStreaming(_ input: RecognizeUtteranceRequest, context: LoggingContext, on eventLoop: EventLoop? = nil, _ stream: @escaping (ByteBuffer, EventLoop)->EventLoopFuture<Void>) -> EventLoopFuture<RecognizeUtteranceResponse> {
        return self.client.execute(operation: "RecognizeUtterance", path: "/bots/{botId}/botAliases/{botAliasId}/botLocales/{localeId}/sessions/{sessionId}/utterance", httpMethod: .POST, serviceConfig: self.config, input: input, context: context, on: eventLoop, stream: stream)
    }
}

extension LexRuntimeV2 {
    /// Initializer required by `AWSService.with(middlewares:timeout:byteBufferAllocator:options)`. You are not able to use this initializer directly as there are no public
    /// initializers for `AWSServiceConfig.Patch`. Please use `AWSService.with(middlewares:timeout:byteBufferAllocator:options)` instead.
    public init(from: LexRuntimeV2, patch: AWSServiceConfig.Patch) {
        self.client = from.client
        self.config = from.config.with(patch: patch)
    }
}
