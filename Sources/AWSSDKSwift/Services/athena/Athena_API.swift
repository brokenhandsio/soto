// THIS FILE IS AUTOMATICALLY GENERATED by https://github.com/noppoMan/aws-sdk-swift/blob/master/Sources/CodeGenerator/main.swift. DO NOT EDIT.
/**
The MIT License (MIT)

Copyright (c) 2017 Yuki Takei(noppoMan)

Permission is hereby granted, free of charge, to any person obtaining a copy
of this software and associated documentation files (the "Software"), to deal
in the Software without restriction, including without limitation the rights
to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
copies of the Software, and to permit persons to whom the Software is
furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all
copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
SOFTWARE.

*/

import Foundation
import AWSSDKSwiftCore

/**
Amazon Athena is an interactive query service that lets you use standard SQL to analyze data directly in Amazon S3. You can point Athena at your data in Amazon S3 and run ad-hoc queries and get results in seconds. Athena is serverless, so there is no infrastructure to set up or manage. You pay only for the queries you run. Athena scales automatically—executing queries in parallel—so results are fast, even with large datasets and complex queries. For more information, see What is Amazon Athena in the Amazon Athena User Guide. For code samples using the AWS SDK for Java, see Examples and Code Samples in the Amazon Athena User Guide.
*/
public struct Athena {

    let client: AWSClient

    public init(accessKeyId: String? = nil, secretAccessKey: String? = nil, region: AWSSDKSwiftCore.Region? = nil, endpoint: String? = nil) {
        self.client = AWSClient(
            accessKeyId: accessKeyId,
            secretAccessKey: secretAccessKey,
            region: region,
            amzTarget: "AmazonAthena",
            service: "athena",
            serviceProtocol: ServiceProtocol(type: .json, version: ServiceProtocol.Version(major: 1, minor: 1)),
            apiVersion: "2017-05-18",
            endpoint: endpoint,
            middlewares: [],
            possibleErrorTypes: [AthenaError.self]
        )
    }

    ///  Stops a query execution. For code samples using the AWS SDK for Java, see Examples and Code Samples in the Amazon Athena User Guide.
    public func stopQueryExecution(_ input: StopQueryExecutionInput) throws -> StopQueryExecutionOutput {
        return try client.send(operation: "StopQueryExecution", path: "/", httpMethod: "POST", input: input)
    }

    ///  Returns information about a single query.
    public func getNamedQuery(_ input: GetNamedQueryInput) throws -> GetNamedQueryOutput {
        return try client.send(operation: "GetNamedQuery", path: "/", httpMethod: "POST", input: input)
    }

    ///  Returns the results of a single query execution specified by QueryExecutionId. This request does not execute the query but returns results. Use StartQueryExecution to run a query.
    public func getQueryResults(_ input: GetQueryResultsInput) throws -> GetQueryResultsOutput {
        return try client.send(operation: "GetQueryResults", path: "/", httpMethod: "POST", input: input)
    }

    ///  Returns the details of a single named query or a list of up to 50 queries, which you provide as an array of query ID strings. Use ListNamedQueries to get the list of named query IDs. If information could not be retrieved for a submitted query ID, information about the query ID submitted is listed under UnprocessedNamedQueryId. Named queries are different from executed queries. Use BatchGetQueryExecution to get details about each unique query execution, and ListQueryExecutions to get a list of query execution IDs.
    public func batchGetNamedQuery(_ input: BatchGetNamedQueryInput) throws -> BatchGetNamedQueryOutput {
        return try client.send(operation: "BatchGetNamedQuery", path: "/", httpMethod: "POST", input: input)
    }

    ///  Deletes a named query. For code samples using the AWS SDK for Java, see Examples and Code Samples in the Amazon Athena User Guide.
    public func deleteNamedQuery(_ input: DeleteNamedQueryInput) throws -> DeleteNamedQueryOutput {
        return try client.send(operation: "DeleteNamedQuery", path: "/", httpMethod: "POST", input: input)
    }

    ///  Provides a list of all available query IDs. For code samples using the AWS SDK for Java, see Examples and Code Samples in the Amazon Athena User Guide.
    public func listNamedQueries(_ input: ListNamedQueriesInput) throws -> ListNamedQueriesOutput {
        return try client.send(operation: "ListNamedQueries", path: "/", httpMethod: "POST", input: input)
    }

    ///  Returns the details of a single query execution or a list of up to 50 query executions, which you provide as an array of query execution ID strings. To get a list of query execution IDs, use ListQueryExecutions. Query executions are different from named (saved) queries. Use BatchGetNamedQuery to get details about named queries.
    public func batchGetQueryExecution(_ input: BatchGetQueryExecutionInput) throws -> BatchGetQueryExecutionOutput {
        return try client.send(operation: "BatchGetQueryExecution", path: "/", httpMethod: "POST", input: input)
    }

    ///  Provides a list of all available query execution IDs. For code samples using the AWS SDK for Java, see Examples and Code Samples in the Amazon Athena User Guide.
    public func listQueryExecutions(_ input: ListQueryExecutionsInput) throws -> ListQueryExecutionsOutput {
        return try client.send(operation: "ListQueryExecutions", path: "/", httpMethod: "POST", input: input)
    }

    ///  Creates a named query. For code samples using the AWS SDK for Java, see Examples and Code Samples in the Amazon Athena User Guide.
    public func createNamedQuery(_ input: CreateNamedQueryInput) throws -> CreateNamedQueryOutput {
        return try client.send(operation: "CreateNamedQuery", path: "/", httpMethod: "POST", input: input)
    }

    ///  Returns information about a single execution of a query. Each time a query executes, information about the query execution is saved with a unique ID.
    public func getQueryExecution(_ input: GetQueryExecutionInput) throws -> GetQueryExecutionOutput {
        return try client.send(operation: "GetQueryExecution", path: "/", httpMethod: "POST", input: input)
    }

    ///  Runs (executes) the SQL query statements contained in the Query string. For code samples using the AWS SDK for Java, see Examples and Code Samples in the Amazon Athena User Guide.
    public func startQueryExecution(_ input: StartQueryExecutionInput) throws -> StartQueryExecutionOutput {
        return try client.send(operation: "StartQueryExecution", path: "/", httpMethod: "POST", input: input)
    }


}