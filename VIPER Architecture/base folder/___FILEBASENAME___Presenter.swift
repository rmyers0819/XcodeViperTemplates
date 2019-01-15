//
//  ___FILENAME___
//  ___PROJECTNAME___
//
//  Created by ___FULLUSERNAME___ on ___DATE___.
//  Copyright (c) ___YEAR___ ___ORGANIZATIONNAME___. All rights reserved.
//
//

import Foundation

class ___VARIABLE_moduleName___Presenter {
	
	// MARK: - Viper Connections
	
	weak var view: ___VARIABLE_moduleName___ViewProtocol!
	var interactor: ___VARIABLE_moduleName___InteractorProtocol!
	var router: ___VARIABLE_moduleName___RouterProtocol!
	
	// MARK: - Properties
	
	var viewModel: ___VARIABLE_moduleName___ViewModel!

	var groupCount: Int { return viewModel.groups.count }

	// MARK: - APIs
	
	func onViewWillAppear() {
		viewModelNeedsUpdate()
	}
	
	func viewModelNeedsUpdate() {
		createViewModel()
		view.modelDidUpdate()
	}
	
	private func createViewModel() {
		self.viewModel = ___VARIABLE_moduleName___ViewModel()
		/*
		view.modelDidUpdate()
		*/
	}
	
	func itemCountInGroup(_ groupIndex: Int) -> Int {
		return groupAtIndex(groupIndex).items.count
	}
	
	func groupAtIndex(_ index: Int) -> ___VARIABLE_moduleName___ViewModel.Group {
		guard index < groupCount else { fatalError("___VARIABLE_moduleName___Presenter.groupAtIndex: index \(index) is out of range. There are only \(groupCount) groups.") }
		return viewModel.groups[index]
	}
	
	func itemAtIndex(_ index: Int, groupIndex: Int) -> ___VARIABLE_moduleName___ItemProtocol {
		let group = groupAtIndex(groupIndex)
		guard index < group.items.count else { fatalError("___VARIABLE_moduleName___Presenter.itemAtIndex:groupIndex: index \(index) is out of range. There are only \(group.items.count) items in group \(groupIndex).") }
		return group.items[index]
	}
	
	func actionForItemAtIndex(_ index: Int, groupIndex: Int) {
		/*
		// Snippet for updating the view by removing items or adding new items.
		view.willBeginUpdate()
		view.removeItems(at [(itemIndex: itemIndex, groupIndex: groupIndex)]
		view.insertItems(at [(itemIndex: itemIndex, groupIndex: groupIndex)]
		view.endUpdate()
		*/
	}
	
	func deleteItemAtIndex(_ index: Int, groupIndex: Int) -> Bool {
		return false
	}
}
