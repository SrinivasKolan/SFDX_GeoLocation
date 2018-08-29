public with sharing class AccountController {
    public AccountController() {

    }

    @AuraEnabled
    public static List<Account> findAll(){
        return [SELECT ID, Name, Location__Latitude__s, Location__Longitude__s FROM Account WHERE Location__Latitude__s != null AND Location__Longitude__s != null LIMIT 50];
    }
}
