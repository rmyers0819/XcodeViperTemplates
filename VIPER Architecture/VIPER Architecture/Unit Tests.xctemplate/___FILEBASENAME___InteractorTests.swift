//
//  ___FILENAME___
//  ___PROJECTNAME___
//
//  Created by ___FULLUSERNAME___ on ___DATE___.
//  Copyright (c) ___YEAR___ ___ORGANIZATIONNAME___. All rights reserved.


@testable import ___PROJECTNAME___
import XCTest

class ___VARIABLE_sceneName___InteractorTests: XCTestCase {
	var interactor: ___VARIABLE_sceneName___Interactor!

	// MARK: - Test lifecycle

	override func setUp() {
		super.setUp()
		AppTestSetup.sharedInstance.createTables()
		interactor = ___VARIABLE_sceneName___Interactor()
		setupData()
	}

	override func tearDown() {
		super.tearDown()
		AppTestSetup.sharedInstance.dropTables()
	}

	// MARK: - Tests

	func testSomething() {
		// Given

		// When

		// Then
	}
}


// MARK: - Setup

extension ___VARIABLE_sceneName___InteractorTests {
	
	func setupData() {
		
	}
}
