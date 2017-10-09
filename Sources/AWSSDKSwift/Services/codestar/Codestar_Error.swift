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

/// Error enum for Codestar
public enum CodestarError: AWSErrorType {
    case validationException(message: String?)
    case invalidNextTokenException(message: String?)
    case userProfileNotFoundException(message: String?)
    case projectAlreadyExistsException(message: String?)
    case limitExceededException(message: String?)
    case projectCreationFailedException(message: String?)
    case invalidServiceRoleException(message: String?)
    case projectConfigurationException(message: String?)
    case concurrentModificationException(message: String?)
    case projectNotFoundException(message: String?)
    case teamMemberAlreadyAssociatedException(message: String?)
    case userProfileAlreadyExistsException(message: String?)
    case teamMemberNotFoundException(message: String?)
}

extension CodestarError {
    public init?(errorCode: String, message: String?){
        var errorCode = errorCode
        if let index = errorCode.index(of: "#") {
            errorCode = String(errorCode[errorCode.index(index, offsetBy: 1)...])
        }
        switch errorCode {
        case "ValidationException":
            self = .validationException(message: message)
        case "InvalidNextTokenException":
            self = .invalidNextTokenException(message: message)
        case "UserProfileNotFoundException":
            self = .userProfileNotFoundException(message: message)
        case "ProjectAlreadyExistsException":
            self = .projectAlreadyExistsException(message: message)
        case "LimitExceededException":
            self = .limitExceededException(message: message)
        case "ProjectCreationFailedException":
            self = .projectCreationFailedException(message: message)
        case "InvalidServiceRoleException":
            self = .invalidServiceRoleException(message: message)
        case "ProjectConfigurationException":
            self = .projectConfigurationException(message: message)
        case "ConcurrentModificationException":
            self = .concurrentModificationException(message: message)
        case "ProjectNotFoundException":
            self = .projectNotFoundException(message: message)
        case "TeamMemberAlreadyAssociatedException":
            self = .teamMemberAlreadyAssociatedException(message: message)
        case "UserProfileAlreadyExistsException":
            self = .userProfileAlreadyExistsException(message: message)
        case "TeamMemberNotFoundException":
            self = .teamMemberNotFoundException(message: message)
        default:
            return nil
        }
    }
}