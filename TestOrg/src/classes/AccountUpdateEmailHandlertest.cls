@istest

public class AccountUpdateEmailHandlertest {

 
    static testMethod void testupdateaccountFrmEmail() {

        Messaging.InboundEmail email = new Messaging.InboundEmail() ;

        Messaging.InboundEnvelope env    = new Messaging.InboundEnvelope();

 

        email.subject = '0017F00000UxnsI';

       

 

        AccountUpdateEmailHandler AUEH = new AccountUpdateEmailHandler();

        AUEH.handleInboundEmail(email, env );

    }

}