//
//  TimerModel.swift
//  SwiftUIDataFlow
//
//  Created by Rafał Kwiatkowski on 22/11/2021.
//
import Foundation
import Combine

class TimerModel: ObservableObject {
	
	@Published var time = Date(timeIntervalSince1970: 61)
	var referenceTime = Date(timeIntervalSince1970: 0)
	
	private var cancellable: Cancellable?
	
	func start() {
		cancellable = Timer.publish(every: 1, on: .main, in: .default)
			.autoconnect()
			.receive(on: DispatchQueue.main)
			.sink { [unowned self] _ in self.decrementTime() }
	}

	public func decrementTime() {
		time = max(referenceTime, time.advanced(by: -1))
		if time == referenceTime {
			stop()
		}
	}
	
	private func stop() {
		cancellable?.cancel()
		cancellable = nil
	}
}
