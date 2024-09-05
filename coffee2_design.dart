import 'package:coffee2_design/database.dart';
import 'package:flutter/material.dart';
class Coffeedesign extends StatelessWidget{

  @override
  Widget build(BuildContext context){
    return Scaffold(
      backgroundColor:const Color.fromARGB(255, 48, 46, 46),

      body: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("deja",style:TextStyle(fontSize:40,color: Colors.white),),
            Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                Text("Brew",style: TextStyle(fontSize: 50,color: Colors.white),
                ),
                Spacer(),
                CircleAvatar(radius: 40,backgroundColor: Colors.yellow,
                child: CircleAvatar(radius: 35,backgroundColor: Colors.green,
                backgroundImage: AssetImage("assets/images/image1.jpeg"),),),
              ],
            ),
            SizedBox(height:20),
                Container(
                  height:50,
                  width:double.infinity,
                  
                  child: Padding(
                    padding: const EdgeInsets.all(10),
                    child: Row(
                      children: [
                        Icon(Icons.search,color: Colors.white),
                        SizedBox(width:10),
                        Text("Browse your favourite coffee...",style: TextStyle(fontSize: 20,color: Colors.white),)
                        
                      ],
                    ),
                  ),
                  decoration: BoxDecoration(borderRadius: BorderRadius.circular(15),color: Colors.black),
                ),
                SizedBox(height:15),
                Expanded(
                  child: GridView.builder(itemCount: 6,
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2,crossAxisSpacing: 15,mainAxisSpacing: 15),
                     itemBuilder: (context,index){
                      return Container(
                        decoration: BoxDecoration(borderRadius: BorderRadius.circular(15),color:const Color.fromARGB(255, 99, 94, 94),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        height:100,
                        width:double.infinity,
                        decoration: BoxDecoration(image:DecorationImage(image: AssetImage(Database.MyList[index]["image"]),
                        fit: BoxFit.cover)),
                        
                      
                      ),
                      SizedBox(height:5),
                      Text(Database.MyList[index]["name"],style: TextStyle(color: Colors.white),),

                      Container(
                        height:40,
                        width:double.infinity,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),color:const Color.fromARGB(221, 80, 78, 78)),

                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Icon(Icons.currency_rupee,color: Colors.white),
                            
                            Text(Database.MyList[index]["price"],style: TextStyle(color: Colors.white),),
                            Spacer(),
                            FloatingActionButton(onPressed: (){},child:Text("+")),
                            
                            ],
                        ),

                      )
                    ],
                  ),
                        
                      );
                    }),
                ),

              ],
            
          
        ),
      ),
    );
  }
}