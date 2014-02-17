//
//  MOZUApiContext.h
//  MozuApi
//
//  Created by Kevin Wright on 11/20/13.
//  Copyright (c) 2013 Volusion. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface MOZUAPIContext : NSObject

@property(nonatomic, readonly) NSInteger tenantId;
@property(nonatomic, readonly) NSNumber* siteId;
@property(nonatomic, readonly) NSString* tenantHost;
@property(nonatomic, readonly) NSString* siteHost;
@property(nonatomic, readonly) NSString* correlationId;
@property(nonatomic, readonly) NSString* hmacSHA256;
@property(nonatomic, readonly) NSString* appAuthClaim;
@property(nonatomic, readonly) NSNumber* masterCatalogId;
@property(nonatomic, readonly) NSNumber* catalogId;

- (id)initWithTenantId:(NSInteger)tenantId
                siteId:(NSNumber*)siteId
       masterCatalogId:(NSNumber*)masterCatalogId
             catalogId:(NSNumber*)catalogId;
- (id)initWithHeaders:(NSDictionary*)headers;
- (NSURL *)getURLForHost:(NSString*)host;

@end