//
//  ___FILENAME___
//  ___PROJECTNAME___
//
//  Created by ___FULLUSERNAME___ on ___DATE___.
//  Copyright (c) ___YEAR___ ___ORGANIZATIONNAME___. All rights reserved.
//
//

import Foundation

protocol ___VARIABLE_moduleName___ViewProtocol : class {
	var presenter: ___VARIABLE_moduleName___Presenter! { get set }
	func modelDidUpdate()
	func willBeginUpdates()
	func didEndUpdates()
	func removeItems(at indexes: [(itemIndex: Int, groupIndex: Int)])
	func insertItems(at indexes: [(itemIndex: Int, groupIndex: Int)])

}

protocol ___VARIABLE_moduleName___InteractorProtocol : class {
	
}

protocol ___VARIABLE_moduleName___RouterProtocol : class {
	
}
