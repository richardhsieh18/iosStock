//
//  ChartViewController.swift
//  iosStock
//
//  Created by chang on 2018/7/15.
//  Copyright © 2018年 chang. All rights reserved.
//

import UIKit
import RealmSwift
import Charts

class ChartViewController: UIViewController {
    

    //@IBOutlet weak var barView: BarChartView!
    @IBOutlet weak var barView: LineChartView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        //updateChartWithData()
        updateChartWithLineCahrtData()

        // Do any additional setup after loading the view.
    }

    func updateChartWithData() {
        var dataEntries: [BarChartDataEntry] = []
        let chartCounts = getVisitorCountsFromDatabase()
        for i in 0..<chartCounts.count {
            let dataEntry = BarChartDataEntry(x: Double(i), y: Double(chartCounts[i].high)!)
            dataEntries.append(dataEntry)
        }
        let chartDataSet = BarChartDataSet(values: dataEntries, label: "Chart count")
        let chartData = BarChartData(dataSet: chartDataSet)
        barView.data = chartData
    }
    
    func updateChartWithLineCahrtData() {
        var dataEntries: [ChartDataEntry] = []
        let chartCounts = getVisitorCountsFromDatabase()
        for i in 0..<30 {
            let dataEntry = ChartDataEntry(x:Double(i) , y: Double(chartCounts[i].open)!)
            dataEntries.append(dataEntry)
        }
        let chartDataSet = LineChartDataSet(values: dataEntries, label: "LIne")
        let chartData = LineChartData(dataSet: chartDataSet)
        barView.data = chartData
    }
    
    func getVisitorCountsFromDatabase() -> Results<ChartSource> {
        do {
            let realm = try Realm()
            let datas = realm.objects(ChartSource.self)
            return datas
        } catch let error as NSError {
            fatalError(error.localizedDescription)
        }
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
