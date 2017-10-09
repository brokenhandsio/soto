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

/// Error enum for Codepipeline
public enum CodepipelineError: AWSErrorType {
    case validationException(message: String?)
    case actionTypeNotFoundException(message: String?)
    case pipelineNotFoundException(message: String?)
    case stageNotFoundException(message: String?)
    case invalidNextTokenException(message: String?)
    case invalidNonceException(message: String?)
    case jobNotFoundException(message: String?)
    case invalidClientTokenException(message: String?)
    case invalidJobException(message: String?)
    case limitExceededException(message: String?)
    case invalidApprovalTokenException(message: String?)
    case approvalAlreadyCompletedException(message: String?)
    case actionNotFoundException(message: String?)
    case pipelineExecutionNotFoundException(message: String?)
    case pipelineVersionNotFoundException(message: String?)
    case invalidStageDeclarationException(message: String?)
    case invalidActionDeclarationException(message: String?)
    case invalidBlockerDeclarationException(message: String?)
    case invalidStructureException(message: String?)
    case pipelineNameInUseException(message: String?)
    case stageNotRetryableException(message: String?)
    case notLatestPipelineExecutionException(message: String?)
    case invalidJobStateException(message: String?)
}

extension CodepipelineError {
    public init?(errorCode: String, message: String?){
        var errorCode = errorCode
        if let index = errorCode.index(of: "#") {
            errorCode = String(errorCode[errorCode.index(index, offsetBy: 1)...])
        }
        switch errorCode {
        case "ValidationException":
            self = .validationException(message: message)
        case "ActionTypeNotFoundException":
            self = .actionTypeNotFoundException(message: message)
        case "PipelineNotFoundException":
            self = .pipelineNotFoundException(message: message)
        case "StageNotFoundException":
            self = .stageNotFoundException(message: message)
        case "InvalidNextTokenException":
            self = .invalidNextTokenException(message: message)
        case "InvalidNonceException":
            self = .invalidNonceException(message: message)
        case "JobNotFoundException":
            self = .jobNotFoundException(message: message)
        case "InvalidClientTokenException":
            self = .invalidClientTokenException(message: message)
        case "InvalidJobException":
            self = .invalidJobException(message: message)
        case "LimitExceededException":
            self = .limitExceededException(message: message)
        case "InvalidApprovalTokenException":
            self = .invalidApprovalTokenException(message: message)
        case "ApprovalAlreadyCompletedException":
            self = .approvalAlreadyCompletedException(message: message)
        case "ActionNotFoundException":
            self = .actionNotFoundException(message: message)
        case "PipelineExecutionNotFoundException":
            self = .pipelineExecutionNotFoundException(message: message)
        case "PipelineVersionNotFoundException":
            self = .pipelineVersionNotFoundException(message: message)
        case "InvalidStageDeclarationException":
            self = .invalidStageDeclarationException(message: message)
        case "InvalidActionDeclarationException":
            self = .invalidActionDeclarationException(message: message)
        case "InvalidBlockerDeclarationException":
            self = .invalidBlockerDeclarationException(message: message)
        case "InvalidStructureException":
            self = .invalidStructureException(message: message)
        case "PipelineNameInUseException":
            self = .pipelineNameInUseException(message: message)
        case "StageNotRetryableException":
            self = .stageNotRetryableException(message: message)
        case "NotLatestPipelineExecutionException":
            self = .notLatestPipelineExecutionException(message: message)
        case "InvalidJobStateException":
            self = .invalidJobStateException(message: message)
        default:
            return nil
        }
    }
}