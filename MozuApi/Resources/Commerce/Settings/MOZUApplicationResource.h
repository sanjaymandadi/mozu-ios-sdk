
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
#import "MOZUSiteSettingsApplication.h"


@interface MOZUApplicationResource : NSObject
@property(readonly, nonatomic) MOZUAPIContext * apiContext;

-(id)initWithAPIContext:(MOZUAPIContext *)apiContext;

//
#pragma mark -
#pragma mark Get Operations
#pragma mark -
//

/**
Retrieve the settings of a third-party application.
*/

-(void)thirdPartyGetApplication userClaims:(MOZUUserAuthTicket*)userClaims completionHandler:(void(^)(MOZUSiteSettingsApplication* result, MOZUApiError* error, NSHTTPURLResponse* response))handler;


//
#pragma mark -
#pragma mark Post Operations
#pragma mark -
//


//
#pragma mark -
#pragma mark Put Operations
#pragma mark -
//

/**
Initializes an application with the necessary configured settings.
@param application Properties of the application to update.
*/

-(void)thirdPartyUpdateApplicationWithWithApplication:(MOZUSiteSettingsApplication*)application userClaims:(MOZUUserAuthTicket*)userClaims completionHandler:(void(^)(MOZUSiteSettingsApplication* result, MOZUApiError* error, NSHTTPURLResponse* response))handler;


//
#pragma mark -
#pragma mark Delete Operations
#pragma mark -
//



@end