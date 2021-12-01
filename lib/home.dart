import 'package:flutter/material.dart';





class Wisdom extends StatefulWidget {
  const Wisdom({ Key? key }) : super(key: key);



  

  @override
  _WisdomState createState() => _WisdomState();

}


class _WisdomState extends State<Wisdom> {

int _index = 0;

List quote = [
        
        'If you don\'t get it forget it', 
        
        'Take weed stay high!',

        'Have money or else you will just enter handicap',

        'Learn before you earn!'

];



  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        

        body: Container(

          child: Center(
            child: Column(
              
              mainAxisAlignment: MainAxisAlignment.center,
              
              
              children: <Widget>[

                  Expanded(
                    child: Center(
                      child: Container(
                        alignment: Alignment.center,
                        width: 350,
                        height: 200,
                        margin: EdgeInsets.all(32.0),
                        padding: EdgeInsets.all(20.0),
                        decoration: BoxDecoration(
                  
                          color: Colors.greenAccent,
                          borderRadius: BorderRadius.circular(14.5)
                  
                  
                        ),
                        
                        
                        child: Text(quote[_index], 
                              style: TextStyle(fontSize: 20.0,

                              fontStyle: FontStyle.italic,

                        
                        
                        ),
                        
                        
                        
                        
                        )
                      
                      ),
                    ),
                  ),

                  Divider(thickness: 1.3,),
                  
                  TextButton.icon(
                    onPressed: _showQuote, 
                    icon: Icon(Icons.wb_sunny), 
                    label: Text('Inspire me..', style: TextStyle(fontSize: 18.0,),),

                    style: TextButton.styleFrom(backgroundColor: Colors.greenAccent.shade700, primary: Colors.white)
                    
                    ),

                    Spacer()
                  

                       


                    
                
              



            ],),
          )
        
        
        ,)




      
        
      ),
    );
  }

  void _showQuote() {

    
    setState(() {


      

      if (_index < (quote.length - 1)){

    _index += 1;
    

      }
    
    else {

     _index = 0;

    }
      


    });

    



  }

}
  
