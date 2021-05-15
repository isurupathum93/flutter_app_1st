import 'package:flutter/material.dart';
import 'package:flutter_app_1st/components/Category_view.dart';

class HorizontalList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 80.0,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: [
          Category('images/cats/dress.png', 'dress'),
          Category('images/cats/formal.png', 'Formal'),
          Category('images/cats/shoe.png', 'Shoe'),
          Category('images/cats/tshirt.png', 'T- Shirt'),
          Category('images/cats/jeans.png', 'Jeans'),
          Category('images/cats/informal.png', 'Informal'),
          Category('images/cats/accessories.png', 'accessories')

          //
        ],
      ),
    );
  }
}

class Category extends StatelessWidget {
  final String image_location;
  final String image_caption;

  Category(this.image_location, this.image_caption);
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(2.0),
      child: Hero(
              tag: 'img' + image_caption,
              child: InkWell(
          onTap: () => Navigator.of(context).push(MaterialPageRoute(builder: (context) => CategoryView(
            cate_name : image_caption
          ))),
          child: Container(
            width: 90.0,
            child: ListTile(
              title: Image.asset(image_location 
              ),//width: 90.0,height: 80.0,
              subtitle: Container(
                alignment: Alignment.topCenter,
                child: Text(image_caption),//Text(image_caption,style: TextStyle(fontSize: 12.0),),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
