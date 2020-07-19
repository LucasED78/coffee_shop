import 'package:coffee_shop/core/model/coffee.model.dart';
import 'package:coffee_shop/modules/menu_details/widgets/coffee_cover.widget.dart';
import 'package:coffee_shop/modules/menu_details/widgets/menu_details_row.widget.dart';
import 'package:coffee_shop/modules/ui_components/coffeish_app_bar.dart';
import 'package:coffee_shop/modules/ui_components/coffeish_button.dart';
import 'package:coffee_shop/modules/ui_components/coffeish_counter.dart';
import 'package:coffee_shop/modules/ui_components/coffeish_toggle.dart';
import 'package:coffee_shop/modules/ui_components/size_switcher.dart';
import 'package:coffee_shop/modules/ui_components/sugar_switcher.dart';
import 'package:flutter/material.dart';

class MenuDetailsPage extends StatefulWidget {
  @override
  _MenuDetailsPageState createState() => _MenuDetailsPageState();
}

class _MenuDetailsPageState extends State<MenuDetailsPage> {
  Coffee coffee;
  bool _initialized = false;

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();

    if (!_initialized) {
      coffee = ModalRoute.of(context).settings.arguments as Coffee;
    }

    _initialized = true;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: NestedScrollView(
        headerSliverBuilder: (_, __) => [
          SliverAppBar(
            expandedHeight: 200,
            pinned: true,
            leading: IconButton(
              icon: Icon(
                Icons.arrow_back_ios
              ),
              onPressed: () => Navigator.of(context).pop(),
            ),
            flexibleSpace: CoffeeCover(
              width: 1,
              height: 200,
              image: Image.asset("assets/icons/${coffee.title}.png"),
            ),
          ),
        ],
        body: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              MenuDetailsRow(
                title: "Tamanho",
                subtitle: "200 ML",
                trailing: SizeSwitcher(
                  intialIndex: coffee.size,
                  onSizeSelected: (size) => coffee.size = size,
                ),
              ),
              MenuDetailsRow(
                title: "Açucar",
                trailing: SugarSwitcher(
                  initialIndex: coffee.sugar,
                  onSugarSelected: (sugar) => coffee.sugar = sugar
                ),
              ),
              MenuDetailsRow(
                title: "Adicionais",
                trailing: CoffeishToggle(
                  builder: (isSelected) => Image.asset(
                    "assets/icons/cream.png",
                    height: 24,
                    color: isSelected ? Theme.of(context).textTheme.headline1.color : Colors.grey[200],
                  ),
                  onToggle: print,
                ),
              ),
              MenuDetailsRow(
                title: "Quantidade",
                trailing: CoffeishCounter(
                  initialCount: 10,
                  onMinusTapped: print,
                  onPlusTapped: print,
                ),
              ),
              const SizedBox(height: 16,),
              CoffeishButton(
                width: 0.9,
                child: Text(
                  "Colocar no carrinho",
                  style: TextStyle(
                    color: Colors.white
                  ),
                ),
                onPressed: (){},
              ),
              const SizedBox(height: 16,),
            ],
          ),
        ),
      ),
    );
  }
}