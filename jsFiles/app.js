var cluster = require ('cluster');

if(cluster.isMaster){
   //cont processors
   var contProc = require('os').cpus().length;

   //creating a working for each processor
   for (var i = 0; i < contProc; i++ ){
       cluster.fork();
   }
} else {

   var express = require('express');
   var app = express();

   app.get('/', function (req, res){
     res.send('app NodeJs Desafio no ar!' +cluster.worker.id);
   });

  app.listen(3000);
  console.log('Example app listening on port 3000! %d', cluster.worker.id);
}
