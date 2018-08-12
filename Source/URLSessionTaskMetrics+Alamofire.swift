//
//  URLSessionTaskMetrics+Alamofire.swift
//
//  Copyright (c) 2014-2018 Alamofire Software Foundation (http://alamofire.org/)
//
//  Permission is hereby granted, free of charge, to any person obtaining a copy
//  of this software and associated documentation files (the "Software"), to deal
//  in the Software without restriction, including without limitation the rights
//  to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
//  copies of the Software, and to permit persons to whom the Software is
//  furnished to do so, subject to the following conditions:
//
//  The above copyright notice and this permission notice shall be included in
//  all copies or substantial portions of the Software.
//
//  THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
//  IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
//  FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
//  AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
//  LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
//  OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
//  THE SOFTWARE.
//

import Foundation

#if os(Linux)
// LINUXTODO: These classes are not available as of Swift 4.2
open class URLSessionTaskTransactionMetrics {
    open var request: URLRequest {
        return URLRequest(url: URL(string: "http://nowhere.com")!)
    }

    open var response: URLResponse? {
        return nil
    }

    open var fetchStartDate: Date? {
        return nil
    }

    open var domainLookupStartDate: Date? {
        return nil
    }

    open var domainLookupEndDate: Date? {
        return nil
    }

    open var connectStartDate: Date? {
        return nil
    }

    open var secureConnectionStartDate: Date? {
        return nil
    }

    open var secureConnectionEndDate: Date? {
        return nil
    }

    open var connectEndDate: Date? {
        return nil
    }

    open var requestStartDate: Date? {
        return nil
    }

    open var requestEndDate: Date? {
        return nil
    }

    open var responseStartDate: Date? {
        return nil
    }

    open var responseEndDate: Date? {
        return nil
    }

    open var networkProtocolName: String? {
        return nil
    }

    open var isProxyConnection: Bool {
        return false
    }

    open var isReusedConnection: Bool {
        return false
    }

    open var resourceFetchType: URLSessionTaskMetrics.ResourceFetchType {
        return .unknown
    }

    public init() { }
}

open class URLSessionTaskMetrics {
    public enum ResourceFetchType {
        case unknown
        case networkLoad
        case serverPush
        case localCache
    }

    open var transactionMetrics: [URLSessionTaskTransactionMetrics] {
        return []
    }

    open var taskInterval: DateInterval {
        return DateInterval()
    }

    open var redirectCount: Int {
        return 0
    }
    public init() {}
}

#endif
