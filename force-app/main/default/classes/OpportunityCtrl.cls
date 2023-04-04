public with sharing class OpportunityCtrl {
    @AuraEnabled(cacheable = true)
    public static List<Opportunity> getMatchingOpps(String stage){
        return [SELECT Name, Type, StageName, Amount
                FROM Opportunity
                WHERE StageName =: stage AND Amount != NULL
                ORDER BY Amount DESC
                LIMIT 5];
    }

    @AuraEnabled(cacheable = true)
    public static Decimal getOppAmount(String stage){
        List<opportunity> listOpp = [SELECT Name, Type, StageName, Amount
                FROM Opportunity
                WHERE StageName =: stage AND Amount != NULL
                ];
        decimal sum = 0;
                for (Opportunity opp : listOpp) {
                    sum += opp.amount; 
                }
                return sum;
    }
}