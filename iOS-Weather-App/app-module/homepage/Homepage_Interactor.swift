//
//  Homepage_Interactor.swift
//  iOS-Weather-App
//
//  Created Bridgetech on 27/09/18.
//  Copyright © 2018 Bridgetech. All rights reserved.
//
//  Template generated by Juanpe Catalán @JuanpeCMiOS
//

import UIKit
import Alamofire
import AlamofireObjectMapper

class Homepage_Interactor: Homepage_InteractorProtocol {

    weak var presenter: Homepage_PresenterProtocol?
    
}


extension Homepage_Interactor{
    
    func fetchForecast() {
        let URL3 = base_url + "?key=" + key + "&q=bandung&days=7"
        
        let urlString = URL3.addingPercentEncoding(withAllowedCharacters: CharacterSet.urlQueryAllowed)
        
        Alamofire.request(urlString!).responseObject { (response: DataResponse<WeatherForcast>) in
            
            switch response.response?.statusCode{
            case 200:
                let resultWeatherForecast = response.result.value!
                self.presenter?.weatherFetchedSuccess(weatherForcast: resultWeatherForecast)
                print("Request Success")
                break
            default:
                self.presenter?.weatherFetchFailed()
                print("Request failed")
                break
            }
            
        }
    }
    
}
