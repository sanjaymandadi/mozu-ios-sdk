
/*
* <auto-generated>
*     This code was generated by a tool.     
*
*     Changes to this file may cause incorrect behavior and will be lost if
*     the code is regenerated.
* </auto-generated>
*/

#import <Foundation/Foundation.h>
#import "JSONModel.h"
#import "MOZUAuditInfo.h"



@protocol MOZULocationUsage
@end


/**
	Configuration properties of a location usage type for a specified site. The direct ship location usage type consists of a single location that represents location that supports direct ship (DS) fulfillment. The in-store pickup location usage type consists of a list of location types that represent locations that support in-store pickup (SP) fulfillment. The store finder location usage type consists of a list of location codes, location types, or both.
*/
@interface MOZULocationUsage : JSONModel<MOZULocationUsage>

/**
List of location codes to associate with the location usage. At this time, you can only specify one location code in the request for the direct ship location usage type.
*/
@property(nonatomic) NSArray* locationCodes;

/**
List of location type codes associated with the location usage. The location service identifies the locations of the designated type. The in-store pickup (SP) and store finder (storeFinder) location usage types allow specification or multiple location type codes.
*/
@property(nonatomic) NSArray* locationTypeCodes;

/**
The system-defined code used to identify the location usage type, which is "DS" for direct ship, "SP" for in-store pickup, or "storeFinder".
*/
@property(nonatomic) NSString * locationUsageTypeCode;

@property(nonatomic) MOZUAuditInfo* auditInfo;

@end

