@RestResource(urlMapping='/Opp/*')
global with sharing class OpportunityManager {
    @HttpGet
    global static Id getOpportunity() {
        RestRequest Request = RestContext.Request;
        string uri = Request.requestURI;
        id oppId = uri.substringAfterLast('/');
        Opportunity op = [select id, name, closedate, stageName,amount from Opportunity where id =:oppId];
        return op.Id;
    }

    @HttpPost
    global static id createOpportunity(string name, string closeDate, string stagename, string amount) {
        Opportunity opp = new Opportunity();
        opp.Name = name;
        opp.CloseDate = Date.valueOf(closeDate);
        opp.StageName = stagename;
        opp.Amount = Decimal.valueOf(amount);
        insert opp;
        return opp.id;
    }

    @HttpDelete
    global static string deleteOpportunity() {
        RestRequest Request = RestContext.Request;
        string uri = Request.requestURI;
        id oppId = uri.substringAfterLast('/');
        Opportunity op = [select id from Opportunity where id =:oppId];
        delete op;
        return 'Recordunuz basiriyla silindi..';
    }

    @HttpPut
    global static id upsertOpportunity(string id, string name, string closeDate, string stageName, string amount) {
        Opportunity opp = new Opportunity();
        opp.id = id;
        opp.Name = name;
        opp.CloseDate = Date.valueOf(closeDate);
        opp.StageName = stageName;
        opp.Amount = Decimal.valueOf(amount);
        upsert opp;
        return opp.id;
    }

    @HttpPatch
    global static Opportunity updateOpportunity() {
        RestRequest Request = RestContext.Request;
        string jsonString = Request.requestBody.toString();
        Opportunity op = (Opportunity)JSON.deserialize(jsonString, Opportunity.Class);
        update op;
        Opportunity opNew = [select id, name, stageName, closeDate, amount from Opportunity where id =:op.id];
        return opNew;
    }
}