//
//  ___FILENAME___
//  ___PROJECTNAME___
//
//  Created by ___FULLUSERNAME___ on ___DATE___.
//  Copyright (c) ___YEAR___ ___ORGANIZATIONNAME___. All rights reserved.
//
//

import UIKit

class ___VARIABLE_moduleName___ViewController: UIViewController, ___VARIABLE_moduleName___ViewProtocol {

	// MARK: - IBOutlets

	@IBOutlet weak var myTableView: UITableView!

	// MARK: - VIPER Connections

	var presenter: ___VARIABLE_moduleName___Presenter!

	// MARK: - Lifecycle -

	override func viewDidLoad() {
		super.viewDidLoad()
		setupTableView()
	}
	
	override func viewWillAppear(_ animated: Bool) {
		super .viewWillAppear(animated)
		
		presenter.onViewWillAppear()
	}
	
	fileprivate func setupTableView() {
		myTableView.separatorStyle = .none
	}

	// MARK: - ___VARIABLE_moduleName___Protocol functions

	func modelDidUpdate() {
	/*
		if myTableView.dataSource == nil {
			myTableView.dataSource = self
			myTableView.delegate = self
		} else {
			myTableView.reloadData()
		}
	*/
	}

	func willBeginUpdates() {
		myTableView.beginUpdates()
	}

	func didEndUpdates() {
		myTableView.endUpdates()
	}

	// Called between calls to willBeginUpdate() and didEndUpdates()
	func removeItems(at indexes: [(itemIndex: Int, groupIndex: Int)]) {
		let indexPaths = indexes.map{ IndexPath(row: $0.itemIndex, section: $0.groupIndex) }
		myTableView.deleteRows(at: indexPaths, with: .top)
	}

	// Called between calls to willBeginUpdate() and didEndUpdates()
	func insertItems(at indexes: [(itemIndex: Int, groupIndex: Int)]) {
		let indexPaths = indexes.map{ IndexPath(row: $0.itemIndex, section: $0.groupIndex) }
		myTableView.insertRows(at: indexPaths, with: .automatic)
	}

}

// MARK: TableView Delegate/DataSource

extension ___VARIABLE_moduleName___ViewController: UITableViewDelegate, UITableViewDataSource {
	
	func numberOfSections(in tableView: UITableView) -> Int {
		return presenter.groupCount
	}

	func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
		let group = presenter.groupAtIndex(section)
		return group.items.count
	}

	func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
		let group = presenter.groupAtIndex(section)
		guard let title = group.title else { return nil }
		let header = tableView.createNarrowSectionHeader(title: title)
		return header
	}

	func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
		let item = presenter.itemAtIndex(indexPath.row, groupIndex: indexPath.section)

		let reuseId = "cell"
		let cell: UITableViewCell!
		var aCell = tableView.dequeueReusableCell(withIdentifier: reuseId)
		if aCell != nil {
			cell = aCell
		} else {
			cell = UITableViewCell(style: .default, reuseIdentifier: reuseId)
			// One time cell initialization (colors, fonts, etc)
			cell.addSeparator(leftMargin: 15)
		}

		return cell
	}

	func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
		tableView.deselectRow(at: indexPath, animated: true)
		presenter.actionForItemAtIndex(indexPath.row, groupIndex: indexPath.section)
	}
}
