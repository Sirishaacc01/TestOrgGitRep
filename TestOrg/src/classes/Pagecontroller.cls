public with sharing class Pagecontroller {

public list<account> acclist;
public string searchfiled;
public list<account> getaccounts(){

acclist=[select id,name,accountnumber from account where billingcity='Hyderabad'];
return acclist;
}
}