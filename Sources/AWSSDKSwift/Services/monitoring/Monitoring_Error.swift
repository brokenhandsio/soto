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

/// Error enum for Monitoring
public enum MonitoringError: AWSErrorType {
    case invalidNextToken(message: String?)
    case limitExceededFault(message: String?)
    case internalServiceFault(message: String?)
    case invalidParameterValueException(message: String?)
    case resourceNotFound(message: String?)
    case missingRequiredParameterException(message: String?)
    case invalidParameterCombinationException(message: String?)
    case invalidFormatFault(message: String?)
}

extension MonitoringError {
    public init?(errorCode: String, message: String?){
        var errorCode = errorCode
        if let index = errorCode.index(of: "#") {
            errorCode = String(errorCode[errorCode.index(index, offsetBy: 1)...])
        }
        switch errorCode {
        case "InvalidNextToken":
            self = .invalidNextToken(message: message)
        case "LimitExceededFault":
            self = .limitExceededFault(message: message)
        case "InternalServiceFault":
            self = .internalServiceFault(message: message)
        case "InvalidParameterValueException":
            self = .invalidParameterValueException(message: message)
        case "ResourceNotFound":
            self = .resourceNotFound(message: message)
        case "MissingRequiredParameterException":
            self = .missingRequiredParameterException(message: message)
        case "InvalidParameterCombinationException":
            self = .invalidParameterCombinationException(message: message)
        case "InvalidFormatFault":
            self = .invalidFormatFault(message: message)
        default:
            return nil
        }
    }
}