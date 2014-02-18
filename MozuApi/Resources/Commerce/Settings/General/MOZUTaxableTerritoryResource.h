
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
#import "MOZUTaxableTerritory.h"


@interface MOZUTaxableTerritoryResource : NSObject
@property(readonly, nonatomic) MOZUAPIContext * apiContext;

-(id)initWithAPIContext:(MOZUAPIContext *)apiContext;

//
#pragma mark -
#pragma mark Get Operations
#pragma mark -
//

/**
Retrieves a list of the taxable territories configured for the site.
*/

-(void)taxableTerritoriesWithUserClaims:(MOZUUserAuthTicket*)userClaims completionHandler:(void(^)(NSArray<MOZUTaxableTerritory>* result, MOZUApiError* error, NSHTTPURLResponse* response))handler;


//
#pragma mark -
#pragma mark Post Operations
#pragma mark -
//

/**
Creates a new territory for which to calculate sales tax.
@param taxableTerritory Properties of the taxable territory to create.
*/

-(void)addTaxableTerritoryWithTaxableTerritory:(MOZUTaxableTerritory*)taxableTerritory userClaims:(MOZUUserAuthTicket*)userClaims completionHandler:(void(^)(MOZUTaxableTerritory* result, MOZUApiError* error, NSHTTPURLResponse* response))handler;


//
#pragma mark -
#pragma mark Put Operations
#pragma mark -
//

/**
Updates one or more taxable territories configured for a site.
@param taxableterritories Properties of the taxable territories to update.
*/

-(void)updateTaxableTerritoriesWithTaxableterritories:(NSArray<MOZUTaxableTerritory>*)taxableterritories userClaims:(MOZUUserAuthTicket*)userClaims completionHandler:(void(^)(NSArray<MOZUTaxableTerritory>* result, MOZUApiError* error, NSHTTPURLResponse* response))handler;


//
#pragma mark -
#pragma mark Delete Operations
#pragma mark -
//



@end