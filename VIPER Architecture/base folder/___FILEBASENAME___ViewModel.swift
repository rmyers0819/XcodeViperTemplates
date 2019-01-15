//
//  ___FILENAME___
//  ___PROJECTNAME___
//
//  Created by ___FULLUSERNAME___ on ___DATE___.
//  Copyright (c) ___YEAR___ ___ORGANIZATIONNAME___. All rights reserved.
//
//

import Foundation

protocol ___VARIABLE_moduleName___ItemProtocol {}

struct ___VARIABLE_moduleName___ViewModel {
	var groups: [Group] = []

	struct Group {
		var title: String?
		var items: [___VARIABLE_moduleName___ItemProtocol] = []
	}

	struct Item: ___VARIABLE_moduleName___ItemProtocol {

	}
}
