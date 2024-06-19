//
//  PTChannelManager.swift
//  2024-NC2-A31-WhereAreYou
//
//  Created by Seoyeon Choi on 6/19/24.
//

import Foundation
import PushToTalk
import UIKit
import AVFAudio

class ChannelManagerWrapper: NSObject, ObservableObject, PTChannelManagerDelegate, PTChannelRestorationDelegate {
    
    var channelManager: PTChannelManager?
    var channelUUID = UUID()
    @Published var isTransmitting = false
    
    func channelDescriptor(restoredChannelUUID channelUUID: UUID) -> PTChannelDescriptor {
        let channelImage = UIImage(named: "ChannelIcon")
        return PTChannelDescriptor(name: "Restored Channel", image: channelImage)
    }
    
    func setupChannelManager() async {
        do {
            self.channelManager = try await PTChannelManager.channelManager(delegate: self, restorationDelegate: self)
        } catch {
            print("Failed to setup channel manager: \(error.localizedDescription), \(error)")
        }
    }
    
    func joinChannel(channelUUID: UUID) {
        let channelImage = UIImage(named: "ChannelIcon")
        let channelDescriptor = PTChannelDescriptor(name: "Awesome Crew", image: channelImage)
        
        channelManager?.requestJoinChannel(channelUUID: channelUUID,
                                           descriptor: channelDescriptor)
    }
    
    func channelManager(_ channelManager: PTChannelManager, didJoinChannel channelUUID: UUID, reason: PTChannelJoinReason) {
        print("Joined channel with UUID: \(channelUUID)")
    }
    
    func channelManager(_ channelManager: PTChannelManager, receivedEphemeralPushToken pushToken: Data) {
        print("Received push token: \(pushToken)")
    }
    
    func channelManager(_ channelManager: PTChannelManager, didLeaveChannel channelUUID: UUID, reason: PTChannelLeaveReason) {
        // Process leaving the channel
        print("Left channel with UUID: \(channelUUID)")
    }
    
    func channelManager(_ channelManager: PTChannelManager, failedToJoinChannel channelUUID: UUID, error: Error) {
        let error = error as NSError
        
        switch error.code {
        case PTChannelError.channelLimitReached.rawValue:
            print("The user has already joined a channel")
        default:
            break
        }
    }
    
    func getCachedChannelDescriptor(_ channelUUID: UUID) -> PTChannelDescriptor {
        let channelImage = UIImage(named: "CachedChannelIcon")
        return PTChannelDescriptor(name: "Cached Channel", image: channelImage)
    }
    
    func updateChannel(_ channelDescriptor: PTChannelDescriptor) async throws {
        try await channelManager?.setChannelDescriptor(channelDescriptor,
                                                       channelUUID: channelUUID)
    }
    
    func reportServiceIsReconnecting() async throws {
        try await channelManager?.setServiceStatus(.connecting, channelUUID: channelUUID)
    }
    
    func reportServiceIsConnected() async throws {
        try await channelManager?.setServiceStatus(.ready, channelUUID: channelUUID)
    }
    
    func startTransmitting() {
        channelManager?.requestBeginTransmitting(channelUUID: channelUUID)
    }
    
    func channelManager(_ channelManager: PTChannelManager,
                        failedToBeginTransmittingInChannel channelUUID: UUID,
                        error: Error) {
        let error = error as NSError
        
        switch error.code {
        case PTChannelError.callActive.rawValue:
            print("The system has another ongoing call that is preventing transmission.")
        default:
            break
        }
    }
    
    func stopTransmitting() {
        channelManager?.stopTransmitting(channelUUID: channelUUID)
    }
    
    func channelManager(_ channelManager: PTChannelManager,
                        failedToStopTransmittingInChannel channelUUID: UUID,
                        error: Error) {
        let error = error as NSError
        
        switch error.code {
        case PTChannelError.transmissionNotFound.rawValue:
            print("The user was not in a transmitting state")
        default:
            break
        }
    }
    
    func channelManager(_ channelManager: PTChannelManager,
                        channelUUID: UUID,
                        didBeginTransmittingFrom source: PTChannelTransmitRequestSource) {
        print("Did begin transmission from: \(source)")
    }
    
    func channelManager(_ channelManager: PTChannelManager,
                        didActivate audioSession: AVAudioSession) {
        print("Did activate audio session")
        // Configure your audio session and begin recording
    }
    
    func channelManager(_ channelManager: PTChannelManager,
                        channelUUID: UUID,
                        didEndTransmittingFrom source: PTChannelTransmitRequestSource) {
        print("Did end transmission from: \(source)")
    }
    
    func channelManager(_ channelManager: PTChannelManager,
                        didDeactivate audioSession: AVAudioSession) {
        print("Did deactivate audio session")
        // Stop recording and clean up resources
    }
    
    func incomingPushResult(channelManager: PTChannelManager, channelUUID: UUID, pushPayload: [String : Any]) -> PTPushResult {
        guard let activeSpeaker = pushPayload["activeSpeaker"] as? String else {
            return .leaveChannel
        }
        
        let activeSpeakerImage = getActiveSpeakerImage(activeSpeaker)
        let participant = PTParticipant(name: activeSpeaker, image: activeSpeakerImage)
        return .activeRemoteParticipant(participant)
    }
    
    func getActiveSpeakerImage(_ speakerName: String) -> UIImage? {
        return UIImage(named: "cat")
    }
    
    func stopReceivingAudio() {
        channelManager?.setActiveRemoteParticipant(nil, channelUUID: channelUUID)
    }

}
