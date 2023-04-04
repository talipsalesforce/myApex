@isTest
public  class RankHandlerTest {
    @isTest
    private static void rankPrizeTest() {

    
        RankHandler r1  = new  RankHandler();
         //string  newRank = r1.rankPrize(3);
        r1.rankPrize(1);

        System.assertEquals('Gold',r1.rankPrize(1) );
        System.assertEquals('Silver',r1.rankPrize(2) );
        System.assertEquals('Bronze',r1.rankPrize(3) );
        System.assertEquals('Top 10 certi',r1.rankPrize(4) );
        System.assertEquals('Particiption certificate',r1.rankPrize(12) );

    }
    @isTest
    private static void rankPrizeSwitchTest() {
          RankHandler r2  = new  RankHandler();
         //string  newRank = r1.rankPrize(3);
        r2.rankPrizeSwitch(1);

        System.assertEquals('Gold',r2.rankPrizeSwitch(1) );
        System.assertEquals('Silver',r2.rankPrizeSwitch(2) );
        System.assertEquals('Bronze',r2.rankPrizeSwitch(3) );
        System.assertEquals('Top 10 congrats',r2.rankPrizeSwitch(8) );
        System.assertEquals('Thank you for particiption',r2.rankPrizeSwitch(18) ); 
        
    }
}