import 'package:azlistview/azlistview.dart';
import 'package:flutter/material.dart';
import 'package:practise/AtoZSorting/model.dart';

class _AZItem extends ISuspensionBean{
  final String title;
  final String tag;
  _AZItem({
    this.title,
    this.tag
  });

  @override
  String getSuspensionTag() => tag;
}

class AlphabetScrollPage extends StatefulWidget {

  @override
  _AlphabetScrollPageState createState() => _AlphabetScrollPageState();
}

class _AlphabetScrollPageState extends State<AlphabetScrollPage> {
  List<_AZItem> items = [];
  @override
  void initState(){
    super.initState();
    initList( [
      for ( var i = 0; i<Sorting().list.length; i++)
        Sorting().list[i].name,
    ]);
  }

  void initList(List<String> items){
    this.items = items.map((item) => _AZItem(title: item, tag: item[0].toUpperCase())).toList();

    SuspensionUtil.sortListBySuspensionTag(this.items);
    SuspensionUtil.setShowSuspensionStatus(this.items);
  }
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: Color(0xFFffffff),
            appBar: AppBar(
              automaticallyImplyLeading: false,
              toolbarHeight:
              MediaQuery.of(context).size.height * 0.11, // Set this height
              elevation: 0,
              flexibleSpace: Container(
                //width: 400,
                color: Color(0xFFffffff),
                child: Padding(
                  padding: const EdgeInsets.only(top: 0, left: 10),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          // IconButton(
                          //     onPressed: (){
                          //       Navigator.pop(context);
                          //     },
                          //     icon: Icon(Icons.arrow_back_sharp,color: Color(0xFF7f8292),)),
                          // Spacer(),
                          Text('Medsyy',style: TextStyle(fontSize: 20, color: Color(0xFF4fd154)),),
                          Spacer(),
                          IconButton(
                              onPressed: () {},
                              icon: Icon(Icons.search,
                                  color: Color(0xFF86878b))),
                          IconButton(
                              onPressed: () {},
                              icon: Icon(
                                Icons.shopping_cart,
                                color: Color(0xFF86878b),
                              ))
                        ],
                      ),
                      Text('All Medicines', style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w500,
                          color: Color(0xFF6c6e7c)
                      ),)
                    ],
                  ),
                ),
              ),
            ),
            body:
            AzListView(
              data: items,
              itemCount: items.length,
              itemBuilder: (context, index){
                final item = items[index];
                return _buildListItem(item);
              },
              indexHintBuilder: (context, hint) => Container(
                alignment: Alignment.center,
                height: MediaQuery.of(context).size.height * 0.08,
                width: MediaQuery.of(context).size.width * 0.15,
                decoration: BoxDecoration(color: Color(0xFF4fd154), shape: BoxShape.circle),
                child: Text(
                  hint, style: TextStyle(color: Colors.white,fontSize: 20, fontWeight: FontWeight.bold),
                ),
              ),
              // padding form right
              indexBarMargin: EdgeInsets.only(right: 10),

              // show the circle item
              indexBarOptions: IndexBarOptions(
                  needRebuild: true, // show one that select
                  indexHintAlignment: Alignment.centerRight,
                  indexHintOffset: Offset(-20, 0),
                  selectTextStyle: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold
                  ),
                  selectItemDecoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Color(0xFF4fd154)
                  )
              ),
            )
        ));
  }

  Widget _buildListItem(_AZItem item){
    final tag = item.getSuspensionTag();
    final offstage = !item.isShowSuspension;
    return Column(
      children: [
        Offstage(offstage: offstage,
          child: Padding(
            padding: const EdgeInsets.only(right: 40, left: 10),
            child: Container(
              color: Color(0xFFb8b8b8),
              padding: EdgeInsets.only(left: 10),
              height: 40,
              alignment: Alignment.centerLeft,
              child: Text('$tag',
                softWrap: true,
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.white),),
            ),
          ),),
        Container(
          //margin: EdgeInsets.only(top: 0),
          child: GestureDetector(
            // onTap: (){
            //   Navigator.push(context, MaterialPageRoute(builder: (context)=>ProductDetails('asset/images/products.png', item.title, 'Ayush', '349.50', '499.00', '30', 'Adret Retail Pvt Ltd', 'PRIVATE LTD', 'Bangladesh',
            //       '17 Oct 2021', 'Jan 2023', '4000001', 'A product description is a form of marketing copy used to describe and explain the benefits of your product. '
            //           'In other words, it provides all the information and details of your product on your ecommerce site. '
            //           'These product details can be one sentence, a short paragraph or bulleted. They can be serious, funny or quirky.',
            //       'Detoxifier. Rejuvenates ageing cells and boosts metabolism. Skin Cleanser', 'Consume 30 ml of this juice with 39 ml of water twice a day to feel it\'s positive impact on your body',
            //       '30049011', 'A product disclaimer is a statement used by sellers, marketers, and manufacturers to let consumers know what to expect from their products or product reviews. '
            //           'Product disclaimers help companies avoid legal trouble if customers misuse their products and end up with damages/injuries.')));
            // },
            child: ListTile(
              title: Text(item.title,
                // style: TextStyle(
                //   color: Colors.black
                // ),
              ),
              //onTap: () => widget.onClickedItem(item.title),
              //onTap: () => Home(),
            ),
          ),
        ),
      ],
    );
  }
}