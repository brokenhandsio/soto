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

import AWSSDKSwiftCore

/// Error enum for Workspaces
public enum WorkspacesError: AWSErrorType {
    case resourceNotFoundException(message: String?)
    case invalidParameterValuesException(message: String?)
    case resourceLimitExceededException(message: String?)
    case invalidResourceStateException(message: String?)
    case operationInProgressException(message: String?)
    case unsupportedWorkspaceConfigurationException(message: String?)
    case accessDeniedException(message: String?)
    case resourceUnavailableException(message: String?)
}

extension WorkspacesError {
    public init?(errorCode: String, message: String?){
        var errorCode = errorCode
        if let index = errorCode.index(of: "#") {
            errorCode = String(errorCode[errorCode.index(index, offsetBy: 1)...])
        }
        switch errorCode {
        case "ResourceNotFoundException":
            self = .resourceNotFoundException(message: message)
        case "InvalidParameterValuesException":
            self = .invalidParameterValuesException(message: message)
        case "ResourceLimitExceededException":
            self = .resourceLimitExceededException(message: message)
        case "InvalidResourceStateException":
            self = .invalidResourceStateException(message: message)
        case "OperationInProgressException":
            self = .operationInProgressException(message: message)
        case "UnsupportedWorkspaceConfigurationException":
            self = .unsupportedWorkspaceConfigurationException(message: message)
        case "AccessDeniedException":
            self = .accessDeniedException(message: message)
        case "ResourceUnavailableException":
            self = .resourceUnavailableException(message: message)
        default:
            return nil
        }
    }
}