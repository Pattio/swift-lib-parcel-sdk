import ObjectMapper
import PayseraCommonSDK
import Foundation

public final class PSPackage: Mappable {
    public var id: String?
    public var packageNumber: String?
    public var senderName: String!
    public var senderPhone: String!
    public var senderEmail: String!
    public var receiverName: String!
    public var receiverPhone: String!
    public var receiverEmail: String!
    public var sourceTerminalID: String!
    public var destinationTerminalID: String!
    public var size: String!
    public var pinCode: String!
    public var price: PSMoney?
    public var payment: PSPackagePayment?
    public var paidAt: Date?
    public var createdAt: Date?
    public var updatedAt: Date?
    public var status: PSPackageStatus?
    
    public init() { }
    
    required public init?(map: Map) { }
    
    public func mapping(map: Map) {
        id                      <- map["id"]
        packageNumber           <- map["package_number"]
        senderName              <- map["sender_name"]
        senderPhone             <- map["sender_phone"]
        senderEmail             <- map["sender_email"]
        receiverName            <- map["receiver_name"]
        receiverPhone           <- map["receiver_phone"]
        receiverEmail           <- map["receiver_email"]
        sourceTerminalID        <- map["source_terminal_id"]
        destinationTerminalID   <- map["destination_terminal_id"]
        size                    <- map["size"]
        pinCode                 <- map["pin_code"]
        price                   <- map["price"]
        payment                 <- map["payment"]
        paidAt                  <- (map["paid_at"], DateTransform())
        createdAt               <- (map["created_at"], DateTransform())
        updatedAt               <- (map["updated_at"], DateTransform())
        status                  <- (map["status"], PSPackageStatus.Transform())
    }
}