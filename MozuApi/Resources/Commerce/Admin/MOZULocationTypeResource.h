
/*
* <auto-generated>
*     This code was generated by a tool.     
*
*     Changes to this file may cause incorrect behavior and will be lost if
*     the code is regenerated.
* </auto-generated>
*/

#import <Foundation/Foundation.h>
#import "MOZUClient.h"
#import "MOZUAPIContext.h"

#import "MOZUAuthTicket.h"
#import "MOZULocationType.h"


@interface MOZULocationTypeResource : NSObject
@property(readonly, nonatomic) MOZUAPIContext * apiContext;

-(id)initWithAPIContext:(MOZUAPIContext *)apiContext;

//
#pragma mark -
#pragma mark Get Operations
#pragma mark -
//

/**
Retrieve a list of all location types defined for the tenant.
*/

-(void)locationTypesWithUserClaims:(MOZUUserAuthTicket*)userClaims completionHandler:(void(^)(NSArray<MOZULocationType>* result, MOZUApiError* error, NSHTTPURLResponse* response))handler;

/**
Retrieves the details of the location type specified in the request.
@param locationTypeCode The user-defined code that identifies the location type.
*/

-(void)locationTypeWithLocationTypeCode:(NSString*)locationTypeCode userClaims:(MOZUUserAuthTicket*)userClaims completionHandler:(void(^)(MOZULocationType* result, MOZUApiError* error, NSHTTPURLResponse* response))handler;


//
#pragma mark -
#pragma mark Post Operations
#pragma mark -
//

/**
Creates a new location type based on the information specified in the request.
@param locationType Properties of the location type to create.
*/

-(void)addLocationTypeWithLocationType:(MOZULocationType*)locationType userClaims:(MOZUUserAuthTicket*)userClaims completionHandler:(void(^)(MOZULocationType* result, MOZUApiError* error, NSHTTPURLResponse* response))handler;


//
#pragma mark -
#pragma mark Put Operations
#pragma mark -
//

/**
Updates the name of a defined location type.
@param locationType Properties of the location type to update.
@param locationTypeCode The user-defined code that identifies the location type.
*/

-(void)updateLocationTypeWithLocationType:(MOZULocationType*)locationType locationTypeCode:(NSString*)locationTypeCode userClaims:(MOZUUserAuthTicket*)userClaims completionHandler:(void(^)(MOZULocationType* result, MOZUApiError* error, NSHTTPURLResponse* response))handler;


//
#pragma mark -
#pragma mark Delete Operations
#pragma mark -
//

/**
Deletes the location type specified in the request.
@param locationTypeCode User-defined code used to identify the location type.
*/

-(void)deleteLocationTypeWithLocationTypeCode:(NSString*)locationTypeCode userClaims:(MOZUUserAuthTicket*)userClaims completionHandler:(void(^)(MOZUApiError* error, NSHTTPURLResponse* response))handler;



@end