/*
* IntExtensionTests.swift
* Created by Michał Dąbrowski on 12/11/2019.
*
* iOS 4 Beginners 2020
* Copyright 2020 DaftMobile Sp. z o. o.
*
* Licensed under the Apache License, Version 2.0 (the "License");
* you may not use this file except in compliance with the License.
* You may obtain a copy of the License at
*
*    http://www.apache.org/licenses/LICENSE-2.0
*
* Unless required by applicable law or agreed to in writing, software
* distributed under the License is distributed on an "AS IS" BASIS,
* WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or  * implied.
* See the License for the specific language governing permissions and
* limitations under the License.
*/

import XCTest
@testable import HelloSwift

class IntExtensionTests: XCTestCase {

	func testShouldBeCalledWithFullSyntax() {
		var counter = 4
		4.times({ () -> Void in
			counter -= 1
		})
		XCTAssertEqual(0, counter)
	}

	func testShouldBeCalledWithAlternativeSyntax() {
		var counter = 5
		5.times { () -> Void in
			counter -= 1
		}
		XCTAssertEqual(0, counter)
	}

	func testShouldCallCorrectNumberOfTimes() {
		var counter = 0
		10.times { counter += 2 }
		XCTAssertEqual(20, counter)
	}

	func testShouldNotBeCalledWithZero() {
		0.times { XCTFail() }
	}

	func testShouldNotBeCalledWithNegativeValue() {
		(-1).times { XCTFail() }
	}
}
