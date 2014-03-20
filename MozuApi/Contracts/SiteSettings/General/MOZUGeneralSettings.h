
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
#import "MOZUTaxableTerritory.h"



@protocol MOZUGeneralSettings
@end


/**
	General settings used on the storefront site.
*/
@interface MOZUGeneralSettings : JSONModel<MOZUGeneralSettings>

/**
If true, the site allows entry of addresses not verified by an address validation service.
*/
@property(nonatomic) NSNumber * allowInvalidAddresses;

/**
The physical directory path or URL where the mobile favicon image file is stored. The favicon icon is generally 57x57 pixels. The icon appears on a mobile website or on the mobile device's OS Home.
*/
@property(nonatomic) NSString * favIconMobilePath;

/**
The physical directory path or URL where the mobile favicon image file is stored. The favicon icon is generally 16x16 pixels. The icon appears on a a browser tab as the website's mini logo or on a browser address bar, or next to the page name in a list of bookmarks.
*/
@property(nonatomic) NSString * favIconPath;

/**
The Google Analytics code associated with a particular store. This could be the web tracking code.
*/
@property(nonatomic) NSString * googleAnalyticsCode;

/**
If true, a service to verify addresses as valid is enabled for the site.
*/
@property(nonatomic) NSNumber * isAddressValidationEnabled;

/**
If true, the Google analytics for eCommerce is enabled for this site. If false, the analytics are not enabled.
*/
@property(nonatomic) NSNumber * isGoogleAnalyticsEcommerceEnabled;

/**
If true, enable Google analytics for this site. If false, analytics are not enabled.
*/
@property(nonatomic) NSNumber * isGoogleAnalyticsEnabled;

/**
If true, this site represents a Mozu-hosted web storefront.
*/
@property(nonatomic) BOOL isMozuWebSite;

/**
If true, shoppers on this site can create customer wish lists.
*/
@property(nonatomic) NSNumber * isWishlistCreationEnabled;

/**
The physical directory path or URL where the website logo is stored.
*/
@property(nonatomic) NSString * logoPath;

/**
The tagline or text that appears when hovering over the site logo.
*/
@property(nonatomic) NSString * logoText;

/**
The mobile theme is the storefront name for the theme.
*/
@property(nonatomic) NSString * mobileTheme;

/**
Email address to display on email messages sent from the site.
*/
@property(nonatomic) NSString * replyToEmailAddress;

/**
Email address to set up so that shoppers and users browsing the site can use to contact the merchant.
*/
@property(nonatomic) NSString * senderEmailAddress;

/**
Choose a format to use on the site: 12-hour (hh:mm:ss tt) or 24-hour format (HH:mm:ss).
*/
@property(nonatomic) NSString * siteTimeFormat;

/**
Choose the time zone to use for the site.
*/
@property(nonatomic) NSString * siteTimeZone;

@property(nonatomic) NSString * tabletTheme;

/**
Unique identifier of the tenant site that site uses to render content for the shopper. For example, if this site represents a third-party sales channel such as Amazon but the company wants to send shopper emails, this value represents the Mozu-hosted web storefront site that maintains this content.
*/
@property(nonatomic) NSNumber * templateSiteId;

/**
The name of the theme used on the storefront.
*/
@property(nonatomic) NSString * theme;

/**
The name of the website to display on the storefront with no spaces.
*/
@property(nonatomic) NSString * websiteName;

/**
Identifier and datetime stamp information recorded when a user or application creates, updates, or deletes a resource entity. This value is system-supplied and read-only.
*/
@property(nonatomic) MOZUAuditInfo *auditInfo;

/**
The territories configured for the site that are subject to sales tax.
*/
@property(nonatomic) NSArray<MOZUTaxableTerritory> *taxableTerritories;

@end

