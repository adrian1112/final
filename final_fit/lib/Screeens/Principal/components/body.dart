
import 'package:final_fit/Components/BackgroundApp.dart';
import 'package:final_fit/Screeens/Principal/components/activityCell.dart';
import 'package:final_fit/constants.dart';
import 'package:flutter/material.dart';
import 'package:final_fit/Screeens/Principal/components/categoryCell.dart';
import 'package:final_fit/Screeens/Principal/components/lineChartWeigth.dart';


class Body extends StatelessWidget {
  
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    double? heightAppBar = Scaffold.of(context).appBarMaxHeight;
    double height_navBar = heightAppBar == null ? 15.0 : heightAppBar + 15.0;
    double height_nombre = 70;


    double percent_heigth_ = height_navBar * 100 / size.height;
    double percent_heigth_second = height_nombre * 100 / size.height; 
    double percent_heigth_fourt = 40;
    double percent_heigth_third = 100 - percent_heigth_ - percent_heigth_second - percent_heigth_fourt;

    double heigth_ = size.height * (percent_heigth_/100);
    double heigth_second = size.height * (percent_heigth_second/100);
    double heigth_fourt = size.height * (percent_heigth_fourt/100);
    double heigth_third = size.height * (percent_heigth_third/100);

    double category_heigth = 80;//(size.height * (percent_heigth_fourt/100) )*0.45 ;

    print(size);
    print(height_navBar);
    print(percent_heigth_);
    print(percent_heigth_second);
    print(percent_heigth_third);
    print(percent_heigth_fourt);
    return Background(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          SizedBox(
            height: heigth_
          ),
          //-----------------------
          Container(
            width: double.infinity,
            height: size.height * (percent_heigth_second/100),
            child: Column( 
              children: <Widget>[
                Container(
                  alignment: Alignment.centerLeft,
                  padding: EdgeInsets.symmetric(horizontal: 20),
                  child: Text("Hey,", 
                  textAlign: TextAlign.left,
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold, 
                          fontSize: 18,
                          )
                      ),
                ),
                Container(
                    alignment: Alignment.centerLeft,
                    padding: EdgeInsets.symmetric(horizontal: 20),
                    child: Text("Adrián!", 
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold, 
                          fontSize: 30
                          )
                      ),
                  ),
            ],
            ),
          ),
          //----------------------------
          LineChartWeigth(
            width: double.infinity,
            heigth: heigth_third
          ),
          //----------------------------
          Container(
            width: double.infinity,
            height: heigth_fourt,
            child: Stack(
              alignment: Alignment.centerLeft,
              children: <Widget>[
                Container( 
                  width: size.width * 0.85,
                  height: heigth_fourt,
                  decoration: BoxDecoration( 
                    color: GrayColor, 
                    borderRadius: BorderRadius.only(topRight: Radius.circular(40)),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("Actividad diaria: ", 
                              style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.normal,
                                fontSize: 16),
                                ),
                          Text("Lunes", 
                              style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.w700,
                                fontSize: 16),
                                ),
                        ],
                      ),
                    ),
                  ),
                Container(
                  width: double.infinity,
                  color: Colors.transparent,
                  padding: EdgeInsets.only(top: 30),
                  child: Column(
                    children: [
                      Container(
                        width: double.infinity,
                        height: heigth_fourt - 150,
                        child: SingleChildScrollView(
                          physics: BouncingScrollPhysics(),
                          scrollDirection: Axis.horizontal,
                          child: Container(
                            margin: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                            child: FittedBox(
                              fit: BoxFit.scaleDown,
                              alignment: Alignment.center,
                              child: Row(
                                children: <Widget>[
                                  ActivityCell(
                                    heigth_: heigth_fourt - 150 - 40,
                                    width_: size.width*0.7,
                                    opcion: 1,
                                    label_text: "Banca plana con barra",
                                    image_path: "assets/images/press_banca_plano_barra.png"),
                                  ActivityCell(
                                    heigth_: heigth_fourt - 150 - 40,
                                    width_: size.width*0.7,
                                    opcion: 1,
                                    label_text: "Banca inclinada con barra",
                                    image_path: "assets/images/press_banca_inclinado_barra.png"),
                                  ActivityCell(
                                    heigth_: heigth_fourt - 150 - 40,
                                    width_: size.width*0.7,
                                    opcion: 1,
                                    label_text: "fondos para pectoral inferior",
                                    image_path: "assets/images/fondo_pecho.png"),
                                ],
                              ),
                            ),
                          ),
                          
                        ),
                      ),
                      Container(
                        width: double.infinity,
                        height: 100,
                        child: SingleChildScrollView(
                          physics: BouncingScrollPhysics(),
                          scrollDirection: Axis.horizontal,
                          child: Container(
                            margin: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                            child: FittedBox(
                              fit: BoxFit.fill,
                              alignment: Alignment.topCenter,
                              child: Row(
                                children: <Widget>[
                                  CategoryCell(
                                    category_heigth: category_heigth,
                                    opcion: 1,
                                    label_text: "Mediciones",
                                    image_path: "assets/images/mediciones.png"),
                                  CategoryCell(
                                    category_heigth: category_heigth,
                                    opcion: 1,
                                    label_text: "Mis Rutinas",
                                    image_path: "assets/images/rutinas.png"),
                                  CategoryCell(
                                    category_heigth: category_heigth,
                                    opcion: 1,
                                    label_text: "Ejercicios",
                                    image_path: "assets/images/ejercicios.png"),
                                ],
                              ),
                            ),
                          ),
                          
                        ),
                      ),
                    ],
                  ),
                )
                ],
              ),
          )
        ],
      )
    );
  }
}

