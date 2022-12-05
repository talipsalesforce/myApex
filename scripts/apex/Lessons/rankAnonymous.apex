RankHandler rk = new RankHandler();
    String p1 = rk.rankPrize(1);
    System.debug(' p1 is ' + p1);

    String p2 = rk.rankPrize(2);
    System.debug(' p2 is '+ p2);

    string p3 = rk.rankPrize(3);
    System.debug(' p3 is ' + p3);

    String p5 = rk.rankPrize(5);
    System.debug(' p5 is ' +p5);

    String p15 = rk.rankPrize(115);
    System.debug(' p15 is ' +p15);

RankHandler rk1 = new RankHandler();
    String p11 = rk1.rankPrizeSwitch(1);
    System.debug('p11 is ' + p11);

    String p22 = rk1.rankPrizeSwitch(2);
    System.debug('p22 is ' + p22);

    String p55 = rk1.rankPrizeSwitch(3);
    System.debug('p55 is ' + p55);

    String p155 = rk1.rankPrizeSwitch(9);
    System.debug('p155 is ' + p155);