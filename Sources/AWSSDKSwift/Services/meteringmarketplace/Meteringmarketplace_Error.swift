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

/// Error enum for Meteringmarketplace
public enum MeteringmarketplaceError: AWSErrorType {
    case internalServiceErrorException(message: String?)
    case invalidProductCodeException(message: String?)
    case invalidUsageDimensionException(message: String?)
    case invalidEndpointRegionException(message: String?)
    case timestampOutOfBoundsException(message: String?)
    case duplicateRequestException(message: String?)
    case throttlingException(message: String?)
    case invalidTokenException(message: String?)
    case expiredTokenException(message: String?)
    case invalidCustomerIdentifierException(message: String?)
}

extension MeteringmarketplaceError {
    public init?(errorCode: String, message: String?){
        var errorCode = errorCode
        if let index = errorCode.index(of: "#") {
            errorCode = String(errorCode[errorCode.index(index, offsetBy: 1)...])
        }
        switch errorCode {
        case "InternalServiceErrorException":
            self = .internalServiceErrorException(message: message)
        case "InvalidProductCodeException":
            self = .invalidProductCodeException(message: message)
        case "InvalidUsageDimensionException":
            self = .invalidUsageDimensionException(message: message)
        case "InvalidEndpointRegionException":
            self = .invalidEndpointRegionException(message: message)
        case "TimestampOutOfBoundsException":
            self = .timestampOutOfBoundsException(message: message)
        case "DuplicateRequestException":
            self = .duplicateRequestException(message: message)
        case "ThrottlingException":
            self = .throttlingException(message: message)
        case "InvalidTokenException":
            self = .invalidTokenException(message: message)
        case "ExpiredTokenException":
            self = .expiredTokenException(message: message)
        case "InvalidCustomerIdentifierException":
            self = .invalidCustomerIdentifierException(message: message)
        default:
            return nil
        }
    }
}