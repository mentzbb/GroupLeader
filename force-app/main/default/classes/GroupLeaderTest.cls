@isTest
private class GroupLeaderTest 
{
    @isTest
    private static void TestOhana()
    {
        GroupLeader leader=new GroupLeader();
        System.assertEquals('Ohana Indeed.', leader.yoLeader('Ohana'));
    }

    @isTest
    private static void TestNohana()
    {
        GroupLeader leader=new GroupLeader();
        System.assertEquals('That\'s amazing!', leader.yoLeader('Ohana is cool.'));
    }

    @isTest
    private static void TestShoutOhana()
    {
        GroupLeader leader=new GroupLeader();
        System.assertEquals('Awesome!', leader.yoLeader('OHANA'));
    }

    @isTest
    private static void TestQuestion()
    {
        GroupLeader leader=new GroupLeader();
        System.assertEquals('No problem', leader.yoLeader('Can we have a meetup Wednesday?'));
    }


    @isTest
    private static void TestQuestionWithSuffix()
    {
        GroupLeader leader=new GroupLeader();
        System.assertEquals('That\'s amazing!', leader.yoLeader('How are you? It\'s lovely out.'));
    }

    @isTest
    private static void TestQuestionStart()
    {
        GroupLeader leader=new GroupLeader();
        System.assertEquals('That\'s amazing!', leader.yoLeader('?Why'));
    }

    @isTest
    private static void TestQuestionMultiple()
    {
        GroupLeader leader=new GroupLeader();
        System.assertEquals('No problem', leader.yoLeader('Are you sure? Really? Truly?'));
    }

    @isTest
    private static void TestQuestioWhitespace()
    {
        GroupLeader leader=new GroupLeader();
        System.assertEquals('No problem', leader.yoLeader('Was this you?   '));
    }

    @isTest
    private static void TestShoutQuestion()
    {
        GroupLeader leader=new GroupLeader();
        System.assertEquals('You don\'t need a micronphone!', leader.yoLeader('WHY ARE DEV GROUPS SO GOOD?'));
    }

    @isTest
    private static void TestShoutPartOfQuestion()
    {
        GroupLeader leader=new GroupLeader();
        System.assertEquals('No problem', leader.yoLeader('WHY would we do this?'));
    }

    @isTest
    private static void TestShout()
    {
        GroupLeader leader=new GroupLeader();
        System.assertEquals('I\'m right here!', leader.yoLeader('HELLO'));
    }

    @isTest
    private static void TestShoutNonText()
    {
        GroupLeader leader=new GroupLeader();
        System.assertEquals('I\'m right here!', leader.yoLeader('THIS IS PUNCTUATION - ; " :.'));
    }

    @isTest
    private static void TestShoutBracketsDigits()
    {
        GroupLeader leader=new GroupLeader();
        System.assertEquals('I\'m right here!', leader.yoLeader('BRACKETS AND DIGITS 1 23 ()[}'));
    }

    @isTest
    private static void TestShoutBracketsDigits()
    {
        GroupLeader leader=new GroupLeader();
        System.assertEquals('I\'m right here!', leader.yoLeader('BRACKETS AND DIGITS 1 23 ()[}'));
    }

    @isTest
    private static void TestSayNothing()
    {
        GroupLeader leader=new GroupLeader();
        System.assertEquals('Don\'t be shy, this is a safe place.', leader.yoLeader(''));
    }

    @isTest
    private static void TestSayNothingSpaces()
    {
        GroupLeader leader=new GroupLeader();
        System.assertEquals('Don\'t be shy, this is a safe place.', leader.yoLeader('        '));
    }

    @isTest
    private static void TestSayNothingTab()
    {
        GroupLeader leader=new GroupLeader();
        System.assertEquals('Don\'t be shy, this is a safe place.', leader.yoLeader('\t  \t'));
    }

    @isTest
    private static void TestDefault()
    {
        GroupLeader leader=new GroupLeader();
        System.assertEquals('That\'s amazing!', leader.yoLeader(' HELLO leader'));
    }

    @isTest
    private static void TestRandoms()
    {
        GroupLeader leader=new GroupLeader();
        System.assertEquals('That\'s amazing!', leader.yoLeader('@£$%^&*'));
    }
}
