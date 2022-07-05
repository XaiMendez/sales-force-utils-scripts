//Example for upserting the Customer records
List<apex_customer__c> CustomerList = new List<apex_customer__c>();
apex_customer__c cus = [SELECT Id, APEX_Extenal_Id__c,APEX_Customer_Description__c FROM apex_customer__c 
                        WHERE APEX_Extenal_Id__c = '0000'];
cus.APEX_Customer_Description__c='Description?';

customerlist.add(cus);
for (Integer i=1; i< =5; i++) {
        apex_customer__c objcust=new apex_customer__c(name='Customer ' + i, APEX_Extenal_Id__c='10' +i);
        customerlist.add(objcust);
}

//Upserting the Customer Records
upsert CustomerList;
