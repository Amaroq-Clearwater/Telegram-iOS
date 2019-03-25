#import "BuildConfig.h"

@implementation BuildConfig

+ (instancetype _Nonnull)sharedBuildConfig {
    static BuildConfig *instance = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        instance = [[BuildConfig alloc] init];
    });
    return instance;
}

- (NSData * _Nullable)bundleData {
    return [[NSData alloc] init];;
}

- (int32_t)apiId {
    return APP_CONFIG_API_ID;
}

- (NSString * _Nonnull)apiHash {
    return @(APP_CONFIG_API_HASH);
}

- (NSString * _Nullable)hockeyAppId {
    return @(APP_CONFIG_HOCKEYAPPID);
}

- (bool)isInternalBuild {
    return APP_CONFIG_IS_INTERNAL_BUILD;
}

- (bool)isAppStoreBuild {
    return APP_CONFIG_IS_APPSTORE_BUILD;
}

- (int64_t)appStoreId {
    return APP_CONFIG_APPSTORE_ID;
}

- (NSString *)appSpecificUrlScheme {
    return @(APP_SPECIFIC_URL_SCHEME);
}

@end
