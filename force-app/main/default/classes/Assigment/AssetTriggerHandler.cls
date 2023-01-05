public  class AssetTriggerHandler {
    public static void AssetHandlerUpdate(List<Asset> assetTriggerNew,List<Asset> assetTriggerOld, Map<Id, Asset> assetTriggerNewMap, Map<Id, Asset> assetTriggerOldMap){

    if (assetTriggerNewMap != null) {
    set<id> assetIdSet = assetTriggerNewMap.keySet();
    for ( id assetId : assetIdSet) {
    if(assetTriggerNewMap.get(assetId).status        !=assetTriggerOldMap.get(assetId).status && assetTriggerNewMap.get(assetId).status == 'Shipped') {
    assetTriggerNewMap.get(assetId).description = 'asset is shipped' ;
    }
    if (assetTriggerNewMap.get(assetId).status !=assetTriggerOldMap.get(assetId).status && assetTriggerNewMap.get(assetId).status == 'Installed') {
    assetTriggerNewMap.get(assetId).description = 'asset is Installed' ;
    } 
            } 
            }else {
                for (asset eachAsset : assetTriggerNew) {
                    if (eachAsset.status =='Shipped') {
                        eachAsset.description = 'asset is shipped';
                        
                    } else if (eachAsset.status == 'Installed') {
                        eachAsset.description = 'asset is Installed';
                    }  
                }
            }
        }
    }