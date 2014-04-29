
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

#import "MOZULocation.h"
#import "MOZULocationCollection.h"


@interface MOZUAdminLocationResource : NSObject


@property(readonly, nonatomic) MOZUAPIContext *apiContext;

- (instancetype)initWithAPIContext:(MOZUAPIContext *)apiContext;


//
#pragma mark -
#pragma mark Get Operations
#pragma mark -
//

/**

@param filter 
@param pageSize 
@param sortBy 
@param startIndex 
*/

- (void)locationsWithStartIndex:(NSNumber *)startIndex pageSize:(NSNumber *)pageSize sortBy:(NSString *)sortBy filter:(NSString *)filter completionHandler:(void(^)(MOZULocationCollection *result, MOZUAPIError *error, NSHTTPURLResponse *response))handler
;
/**

@param locationCode 
*/

- (void)locationWithLocationCode:(NSString *)locationCode completionHandler:(void(^)(MOZULocation *result, MOZUAPIError *error, NSHTTPURLResponse *response))handler
;

//
#pragma mark -
#pragma mark Post Operations
#pragma mark -
//

/**

@param body 
*/

- (void)addLocationWithBody:(MOZULocation *)body completionHandler:(void(^)(MOZULocation *result, MOZUAPIError *error, NSHTTPURLResponse *response))handler
;

//
#pragma mark -
#pragma mark Put Operations
#pragma mark -
//

/**

@param body 
@param locationCode 
*/

- (void)updateLocationWithBody:(MOZULocation *)body locationCode:(NSString *)locationCode completionHandler:(void(^)(MOZULocation *result, MOZUAPIError *error, NSHTTPURLResponse *response))handler
;

//
#pragma mark -
#pragma mark Delete Operations
#pragma mark -
//

/**

@param locationCode 
*/

- (void)deleteLocationWithLocationCode:(NSString *)locationCode completionHandler:(void(^)(MOZUAPIError *error, NSHTTPURLResponse *response))handler
;


@end