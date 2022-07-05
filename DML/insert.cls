APEX_Customer__c objCust = new APEX_Customer__c();
objCust.Name = 'Mario Mendez';

//DML for Inserting the new Customer Records
insert objCust;
	
//Inserting the New Records using insert DML statement
APEX_Invoice__c objNewInvoice = new APEX_Invoice__c();
objNewInvoice.APEX_Status__c = 'Pending';
objNewInvoice.APEX_Amount_Paid__c = 5000;
objNewInvoice.APEX_Customer__c = objCust.id;

//DML which is creating the new Invoice record which will be linked with newly created Customer record
insert objNewInvoice;
System.debug('the customer we added '+objCust+' and the corresponding invoice for the customer:'+objNewInvoice);
