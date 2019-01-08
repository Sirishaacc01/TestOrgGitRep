@RestResource(urlMapping='/showaccounts/*')
global class checkaccountRest
{

@HttpGet

global static account doget()
{
restrequest req=restcontext.request;
restresponse res=restcontext.response;
string accountID=req.requestURI.substring(req.requestURI.lastindexof('/')+1);
Account result=[select id,name,phone from account where id=:accountID];
return result;

}
@httppost

global static String dopost(String name)
{
account acc=new account();
acc.name=name;

insert acc;
return acc.id;

}
}