//
//  MyMoviesTests.swift
//  MyMoviesTests
//
//  Created by Lawrence Tan on 22/8/17.
//  Copyright © 2017 AppCoda. All rights reserved.
//

import Quick
import Nimble

@testable import MyMovies

class MoviesTableViewControllerSpec: QuickSpec {
    
    override func spec() {
        var subject: MoviesTableViewController!
        
        describe("MoviesTableViewController") {
            beforeEach {
                subject = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "MoviesTableViewController") as! MoviesTableViewController
                
                _ = subject.view
            }
            
            context("when view is loaded") {
                it("should have 8 movies loaded") {
                    expect(subject.tableView.numberOfRows(inSection: 0)).to(equal(8))
                }
            }
            
            context("Table View") {
                var cell: UITableViewCell!
                
                beforeEach {
                    cell = subject.tableView(subject.tableView, cellForRowAt: IndexPath(row: 0, section: 0))
                }
                
                it("should show movie title and genre") {
                    expect(cell.textLabel?.text).to(equal("The Emoji Movie"))
                    expect(cell.detailTextLabel?.text).to(equal("Animation"))
                }
            }
        }
    }
}
