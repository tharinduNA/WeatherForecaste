//
//  WeatherTableViewCell.swift
//  WeatherForcast
//

import UIKit

class WeatherTableViewCell: UITableViewCell {

    @IBOutlet weak var bgImageView: UIImageView!
    @IBOutlet weak var weatherDescription: UILabel!
    @IBOutlet weak var dateAndTime: UILabel!
    @IBOutlet weak var weatherIcon: UIImageView!

    // assign values to cell
    public var viewModel: WeatherTableViewCellModel? {
        didSet {
            guard let viewModel = viewModel else { return }
            
            self.weatherDescription.text = viewModel.desc
            self.dateAndTime.text = viewModel.date
            if let id = self.viewModel?.imageId {
                self.weatherIcon.image = UIImage(named: id)
                if(id.contains("d")){
                    self.bgImageView.image = UIImage(named: "bg_day")
                }else{
                    self.bgImageView.image = UIImage(named: "bg_night")
                }
            }
        }
    }
}
