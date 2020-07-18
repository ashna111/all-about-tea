import 'package:flutter/material.dart';
import 'package:expandable/expandable.dart';

const kexpandedTextStyle = TextStyle(
  fontSize: 18.0,
  fontFamily: 'Alegreya',
  color: Color(0xff254A0C),
);

const kexpandedInnerTextStyle = TextStyle(
  fontSize: 16.0,
  fontFamily: 'Alegreya',
  color: Color(0xff212121),
);

class InformationPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          padding:
              EdgeInsets.only(top: 30.0, left: 20.0, right: 20.0, bottom: 20.0),
          child: ListView(
            children: <Widget>[
              Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: <Widget>[
                  Container(
                    padding: EdgeInsets.all(10.0),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10.0),
                      color: Color(0xffA3AF3F).withOpacity(0.2),
                    ),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: <Widget>[
                        Expanded(
                          flex: 1,
                          child: Image(
                            image: AssetImage('images/tea.png'),
                          ),
                        ),
                        SizedBox(
                          width: 15.0,
                        ),
                        Expanded(
                          flex: 2,
                          child: Text(
                            'Tea is the magic key to the vault where my brain is kept',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontSize: 20.0,
                              color: Color(0xff254A0C),
                              fontFamily: 'Alegreya',
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 20.0,
                  ),
                  Text(
                    "Tea contains 4 substances that have stimulatory effects on your brain. The most well-known is caffeine. Tea also contains two substances related to caffeine: theobromine and theophylline. Finally, it provides a rather unique amino acid called L-theanine, which has some very interesting effects on the brain.\n\nAll tea comes from only one plant called Camellia sinensis. However based on the type of tea leaves picked and the level of oxidation or processing, tea is classified into five main types: Black, Green, Oolong, White and Pu-erh.",
                    style: TextStyle(
                      fontFamily: 'Alegreya',
                      fontSize: 16.0,
                      color: Color(0xff212121),
                    ),
                    textAlign: TextAlign.justify,
                  ),
                  SizedBox(
                    height: 20.0,
                  ),
                  ExpandablePanel(
                    header: Padding(
                      padding: EdgeInsets.all(7.0),
                      child: Text(
                        "Black Tea",
                        style: kexpandedTextStyle,
                      ),
                    ),
                    expanded: Padding(
                      padding: EdgeInsets.all(7.0),
                      child: Text(
                        "Black tea is the most common type of tea accounting for upto 85% of total tea consumption in the western world. Black tea is fully oxidised and has darker appearance, stronger flavour and higher caffeine content compared to other teas. The caffeine content in black tea is still around half the level of coffee. Often black teas can be consumed with sugar, milk or lemon and offer some of the same health benefits as other teas",
                        softWrap: true,
                        style: kexpandedInnerTextStyle,
                      ),
                    ),
                    tapHeaderToExpand: true,
                    hasIcon: true,
                    iconPlacement: ExpandablePanelIconPlacement.right,
                    iconColor: Color(0xff254A0C),
                  ),
                  SizedBox(
                    height: 20.0,
                  ),
                  ExpandablePanel(
                    header: Padding(
                      padding: EdgeInsets.all(7.0),
                      child: Text(
                        "Green Tea",
                        style: kexpandedTextStyle,
                      ),
                    ),
                    expanded: Padding(
                      padding: EdgeInsets.all(7.0),
                      child: Text(
                        "Green tea is 'unoxidised' tea. The leaves are heated soon after picking in order to destroy the enzymes that cause oxidation. This type of processing preserves a high level of antioxidants, vitamins and minerals accounting for the various health benefits of green tea. The infusion is pale greenish yellow in colour and tastes light and grassy. It is best consumed without any additives, although some people may prefer to add lemon or a sweetener but not milk.",
                        softWrap: true,
                        style: kexpandedInnerTextStyle,
                      ),
                    ),
                    tapHeaderToExpand: true,
                    hasIcon: true,
                    iconPlacement: ExpandablePanelIconPlacement.right,
                    iconColor: Color(0xff254A0C),
                  ),
                  SizedBox(
                    height: 20.0,
                  ),
                  ExpandablePanel(
                    header: Padding(
                      padding: EdgeInsets.all(7.0),
                      child: Text(
                        "Oolong Tea",
                        style: kexpandedTextStyle,
                      ),
                    ),
                    expanded: Padding(
                      padding: EdgeInsets.all(7.0),
                      child: Text(
                        "Oolong tea is semi-oxidized, so the leaf is allowed to sit for maybe 2-4 hours, before being heated up to halt oxidization. The amount of oxidation affects the flavour and appearance of the tea. Longer oxidization results in a darker oolong which is more similar in taste to a black tea, while shorter oxidization makes it more similar in nature to green tea. When steeped, Oolong tea produces golden or light brown tea with a very delicate flavour resembling neither black nor green tea.",
                        softWrap: true,
                        style: kexpandedInnerTextStyle,
                      ),
                    ),
                    tapHeaderToExpand: true,
                    hasIcon: true,
                    iconPlacement: ExpandablePanelIconPlacement.right,
                    iconColor: Color(0xff254A0C),
                  ),
                  SizedBox(
                    height: 20.0,
                  ),
                  ExpandablePanel(
                    header: Padding(
                      padding: EdgeInsets.all(7.0),
                      child: Text(
                        "White Tea",
                        style: kexpandedTextStyle,
                      ),
                    ),
                    expanded: Padding(
                      padding: EdgeInsets.all(7.0),
                      child: Text(
                        "White tea is the least processed of all teas. Only the unopened buds and young leaves covered in silver fuzz are used, and they are merely withered and dried. White tea produces a very light coloured infusion with mild flavour. Its caffeine content is even lower than that of green tea and is considered to have a very high level of antioxidants. White tea is best consumed without any additives at all.",
                        softWrap: true,
                        style: kexpandedInnerTextStyle,
                      ),
                    ),
                    tapHeaderToExpand: true,
                    hasIcon: true,
                    iconPlacement: ExpandablePanelIconPlacement.right,
                    iconColor: Color(0xff254A0C),
                  ),
                  SizedBox(
                    height: 20.0,
                  ),
                  ExpandablePanel(
                    header: Padding(
                      padding: EdgeInsets.all(7.0),
                      child: Text(
                        "Pu-erh Tea",
                        style: kexpandedTextStyle,
                      ),
                    ),
                    expanded: Padding(
                      padding: EdgeInsets.all(7.0),
                      child: Text(
                        "Pu-erh tea is a special type of tea that comes from the Yunan province of China and is known for its earthy flavour. It is made out of tea plucked from wild tea trees rather than cultivated bushes and the leaves go through microbial fermentation by pressing the raw leaves together and then storing them for maturity. Pu-erh tea can be either black or green depending on the level of oxidation allowed in the process. Although we don't stock any Pu-erh tea on its own, our Coffee Truffle tea has Pu-erh tea as the base onto which we have added coffee beans and cocoa pieces to give it a rich coffee chocolate flavour.",
                        softWrap: true,
                        style: kexpandedInnerTextStyle,
                      ),
                    ),
                    tapHeaderToExpand: true,
                    hasIcon: true,
                    iconPlacement: ExpandablePanelIconPlacement.right,
                    iconColor: Color(0xff254A0C),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
