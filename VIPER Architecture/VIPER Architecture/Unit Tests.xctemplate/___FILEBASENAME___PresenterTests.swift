//
//  ___FILENAME___
//  ___PROJECTNAME___
//
//  Created by ___FULLUSERNAME___ on ___DATE___.
//  Copyright (c) ___YEAR___ ___ORGANIZATIONNAME___. All rights reserved.
//

@testable import ___PROJECTNAME___
import XCTest

class ___VARIABLE_sceneName___PresenterTests: XCTestCase {
	var interactor: TestInteractor!
	var presenter: ___VARIABLE_sceneName___Presenter!
	var view: TestView!

	// MARK: - Test lifecycle

	override func setUp() {
		super.setUp()
		AppTestSetup.sharedInstance.createTables()
		interactor = TestInteractor()
		presenter = ___VARIABLE_sceneName___Presenter()
		view = TestView()
		view.presenter = presenter
		presenter.interactor = interactor
		presenter.view = view
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


// MARK: - Test Classes

extension ___VARIABLE_sceneName___PresenterTests {
	
	class TestInteractor:___VARIABLE_sceneName___InteractorProtocol {
		
	}
	
	class TestView:___VARIABLE_sceneName___ViewProtocol {
		
	}
}

