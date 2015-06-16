
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
#import "MOZUProductLocalizedContent.h"
#import "MOZUAdminProductPrice.h"
#import "MOZUProductCategory.h"
#import "MOZUProductLocalizedSEOContent.h"



@protocol MOZUProductInCatalogInfo
@end


/**
	Properties of a product associated with a specific catalog.
*/
@interface MOZUProductInCatalogInfo : JSONModel<MOZUProductInCatalogInfo>

/**
The unique identifier of the catalog of products used by a site.
*/
@property(nonatomic) NSInteger catalogId;

/**
Indicates if the object or feature is active. This indicator is used for subscriptions (at the site or tenant level), customer accounts, products and variations.
*/
@property(nonatomic) NSNumber * isActive;

/**
If true, the content defined for this product in the master catalog in overridden in the catalog with the content specified in the request body. If false, this catalog uses the content defined in the master catalog for the product.
*/
@property(nonatomic) NSNumber * isContentOverridden;

/**
If true, the price defined for this product in the master catalog in overridden in the catalog with the price specified in the request body. If false, this catalog uses the price defined in the master catalog for the product.
*/
@property(nonatomic) NSNumber * isPriceOverridden;

/**
If true, the SEO content defined for this product in the master catalog in overridden in the catalog with the SEO content specified in the request body. If false, this catalog uses the SEO content defined in the master catalog for the product.
*/
@property(nonatomic) NSNumber * isseoContentOverridden;

/**
Identifier and datetime stamp information recorded when a user or application creates, updates, or deletes a resource entity. This value is system-supplied and read-only.
*/
@property(nonatomic) MOZUAuditInfo *auditInfo;

/**
Localizable content (such as a name and/or description) for an attribute. The content may be localized when displayed according to the locale code specified by the master catalog. Content can include descriptive text for product extensible attributes, catalog-level descriptions (displayed if isContentOverriden is true), product bundles, and customer account notes.
*/
@property(nonatomic) MOZUProductLocalizedContent *content;

/**
The price of the product associated with the specified catalog. If no price is specified in the request, this catalog uses the price defined in the master catalog. To override the product price for this catalog, the IsPriceOverridden flag must be set to "true".
*/
@property(nonatomic) MOZUAdminProductPrice *price;

/**
The product categories to define for the product associated with the specified catalog.
*/
@property(nonatomic) NSArray<MOZUProductCategory> *productCategories;

/**
The search engine optimized content defined for products or products associated with a catalog. If no SEO content is specified in the request for products associated with a catalog, this catalog uses the SEO content defined in the master catalog. To override the SEO content for this catalog, the `IsSEOContentOverridden `flag must be set to "true".
*/
@property(nonatomic) MOZUProductLocalizedSEOContent *seoContent;

@end

