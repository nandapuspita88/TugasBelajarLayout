import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class Item {
  final String imageUrl;
  final String name;
  final String description;

  Item(this.imageUrl, this.name, this.description);
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Galley',
      theme: ThemeData(
        // This is the theme of your application.
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          title: Text('Galery'),
          bottom: TabBar(
            tabs: <Widget>[
              Tab(
                icon: Icon(Icons.grid_on),
              ),
              Tab(
                icon: Icon(Icons.list),
              ),
            ],
          ),
        ),
        body: TabBarView(
          children: <Widget>[
            // GridView tab content Widget
            GridView.count(
              // Items in row
              crossAxisCount: 2,
              // Vertical spacing between rows
              mainAxisSpacing: 5.0,
              // Horizontal spacing between columns
              crossAxisSpacing: 5.0,
              // Padding of GridView
              padding: const EdgeInsets.all(5.0),
              // The ratio between the width and height of items
              childAspectRatio: 0.75,
              // List of items widgets
              children: items.map<Widget>((Item item) => _ItemGridCellWidget(item)).toList(),
            ),
            // ListView tab content Widget
            ListView.builder(itemCount: items.length, itemBuilder: (BuildContext context, int position) => _ItemListCellWidget(items[position]))
          ],
        ),
      ),
    );
  }
}

class _ItemGridCellWidget extends StatelessWidget {
  final Item _item;

  _ItemGridCellWidget(this._item);

  void _selectItem(BuildContext context) {
    Navigator.push(
        context,
        MaterialPageRoute<void>(
          builder: (BuildContext context) => _ItemFullScreenWidget(_item),
        ));
  }

  @override
  Widget build(BuildContext context) {
    return GridTile(
        footer: GridTileBar(
          title: Text(_item.name),
          subtitle: Text(_item.description),
          backgroundColor: Colors.black38,
        ),
        child: GestureDetector(
          onTap: () => _selectItem(context),
          child: Hero(
            key: Key(_item.imageUrl),
            tag: _item.name,
            child: Image.network(
              _item.imageUrl,
              fit: BoxFit.cover,
            ),
          ),
        ));
  }
}

class _ItemListCellWidget extends StatelessWidget {
  final Item _item;

  _ItemListCellWidget(this._item);

  void _selectItem(BuildContext context) {
    Navigator.push(
        context,
        MaterialPageRoute<void>(
          builder: (BuildContext context) => _ItemFullScreenWidget(_item),
        ));
  }

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: () => _selectItem(context),
//      isThreeLine: true,
      title: Text(
        _item.name,
        style: TextStyle(
          fontWeight: FontWeight.w500,
          fontSize: 20,
        ),
      ),
      subtitle: Text(
        _item.description,
        maxLines: 2,
        style: TextStyle(),
      ),
      leading: Hero(
        key: Key(_item.imageUrl),
        tag: _item.name,
        child: Image.network(
          _item.imageUrl,
          width: 50,
          height: 50,
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}

class _ItemFullScreenWidget extends StatelessWidget {
  final Item _item;

  _ItemFullScreenWidget(this._item);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(_item.name),
      ),
      body: SizedBox.expand(
        child: Hero(
          tag: _item.name,
          child: Image.network(
            _item.imageUrl,
            fit: BoxFit.cover,
          ),
        ),
      ),
    );
  }
}

List<Item> items = [
  //1
  Item(
    "https://24travel.id/wp-content/uploads/2020/10/@ramdhaniyudha_-819x1024.jpg",
    "Kawah Ijen",
    "13/10/2020",
  ),
  //2
  Item(
    "https://advontura.com/wp-content/uploads/2021/12/wisatasitubondo_121018646_2716204631984738_3473056236967647140_n.jpg",
    "Taman Nasional Baluran",
    "10/12/2021",
  ),
  //3
  Item(
    "https://i.postimg.cc/J4HRx1vQ/IMG-0016.jpg",
    "Djawatan Benculuk",
    "21/05/2022",
  ),
  //4
  Item(
    "https://4.bp.blogspot.com/-TCGWh5RCXXM/WpPOl6ih0QI/AAAAAAAAYO0/MQ-qEpNzRGk1Tu139_FlLzPvWy7BHAhGwCLcBGAs/s1600/Banyuwangi%2Bculture%2Beveryday.jpg",
    "Taman Blambangan",
    "24/02/2018",
  ),
  //5
  Item(
    "https://tempatwisataindonesia.id/wp-content/uploads/2017/03/Padang-Sabana-Taman-Nasional-Alas-Purwo.jpg",
    "Taman Nasional Alas Purwo",
    "21/07/2017",
  ),
  //6
  Item(
    "https://kemiren.com/wp-content/uploads/2016/11/Kemiren-768x753.jpg",
    "Desa Wisata Osing Kemiren",
    "05/09/2021",
  ),
  //7
  Item(
    "https://1.bp.blogspot.com/-Tkoo6eqMgvk/UmJcS8cNE_I/AAAAAAAAE30/HYQ7sMfOTNs/s1600/1374148_10200997095865939_160040225_n-766459.jpg",
    "Air Terjun Lider",
    "09/01/2014",
  ),
  //8
  Item(
    "https://i1.wp.com/www.ruangmedia.com/wp-content/uploads/2020/01/Pantai-Pulau-Merah-Banyuwangi.jpg?w=640&ssl=1",
    "Pantai Pulau Merah",
    "06/01/2020",
  ),
  //9
  Item(
    "https://tempatwisataindonesia.id/wp-content/uploads/2017/03/Pantai-Plengkung.jpg",
    "Pantai Plengkung",
    "21/07/2017",
  ),
  //10
  Item(
    "https://tempatwisataindonesia.id/wp-content/uploads/2017/03/Pantai-Wedi-Ireng.jpg",
    "Pantai Wedi Ireng",
    "21/07/2017",
  ),
  //11
  Item(
    "https://indonesiatraveler.id/wp-content/uploads/2021/08/Jawa-Timur-Pantai-Rajegwesi-Photo-by@yoiki.banyuwangi.png",
    "Pantai Rajegwesi",
    "23/05/2017",
  ),
  //12
  Item(
    "https://i.postimg.cc/2yGhYGyF/2022-0506-14191200.jpg",
    "Pantai Teluk Hijau",
    "07/05/2022",
  ),
  //13
  Item(
    "https://www.tagar.id/Asset/uploads2019/1567425059082-pantai-sukamade.jpg",
    "Pantai Sukamade",
    "03/06/2019",
  ),
  //14
  Item(
    "http://3.bp.blogspot.com/-IrOx-lzEfig/VkndajmuWJI/AAAAAAAABEY/uWMdYePSgb0/s1600/1%2Bcopy.jpg",
    "Pantai Parang Kursi",
    "25/08/2014",
  ),
  //15
  Item(
    "https://i.postimg.cc/Bnw1ZtgD/d0e20ccccb6574f8a85d0e9b9dacb03b.jpg",
    "Rumah Apung Bangsring",
    "17/04/2018",
  ),
  //16
  Item(
    "https://1.bp.blogspot.com/-9LSt2G-4D28/XURnkvk7cdI/AAAAAAAAFpg/YL79kn-I1Bgmys_vp83MJmFlDYGioYWNACLcBGAs/s1600/pantai%2Bcemara%2Bbanyuwangi%2B2.jpg",
    "Pantai Cemara",
    "03/08/2019",
  ),
  //17
  Item(
    "https://i.postimg.cc/9QMHtfjL/7defcd3cee4b49a3f0b815ed3a7c5c99.jpg",
    "Pulau Tabuhan",
    "09/11/2019",
  ),
  //18
  Item(
    "https://1.bp.blogspot.com/-IcMimR5yECM/XaGiWHnZ4mI/AAAAAAAAEok/kVd-SNZd3kktM1Hi3zGF44jtxOJcVwg-ACLcBGAsYHQ/s1600/Pantai-Boom-Banyuwangi-Angker.jpg",
    "Pantai Boom",
    "16/12/2021",
  ),
  //19
  Item(
    "https://blogger.googleusercontent.com/img/a/AVvXsEj-R1shKJ3m90LnoGsRBVNQYbX5QiY_CRXmDicq84cSOw2JgEbr3brp3IwHszCoUE10SDKBHTG0k3E_01CXUsQd4mTqoQURl3a20_5Xa9u2ODp5Uhu259-CUCviu3g-mzZbW9NJy_qNDb30du2xeXXZZTGXyy98NrR01-R2ScwfYNYHwDjzc7vdYQ",
    "Pantai Watu Dodol",
    "23/06/2018",
  ),
  //20
  Item(
    "https://i.postimg.cc/XYhbxy3s/AkbarZoo.png",
    "Akbar Zoo",
    "06/10/2021",
  ),
];
