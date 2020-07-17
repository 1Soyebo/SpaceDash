//
//  UpcomingLaunchModel.swift
//  SpaceDash
//
//  Created by Pushpinder Pal Singh on 17/07/20.
//  Copyright © 2020 Pushpinder Pal Singh. All rights reserved.
//

import Foundation

final class UpcomingLaunchModel{
    
    var data : UpcomingLaunchData? = nil
    
    func inputData(decodedDataSet:[UpcomingLaunchData]){
        for decodedData in decodedDataSet{
            if !decodedData.is_tentative{
                data = decodedData
                break
            }
        }
    }
    
    
    func getDate()->Date{
        return Date(timeIntervalSince1970: TimeInterval(data!.launch_date_unix))
    }
    
    
}
