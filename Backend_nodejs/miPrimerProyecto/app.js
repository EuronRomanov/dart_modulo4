const express=require("express");
const app=express();
const puerto=3001;
const bodyParser=require("body-parser");

const {Client}=require("pg");

app.use(bodyParser.json());

/*
const client= new Client({
    user: "postgres",
    host: "192.168.68.106",
    database: "pruebas",
    password: "postgres",
    port: 5432
});*/

const client= new Client({
    user: "postgres1",
    host: "108.181.197.151",
    database: "pruebas",
    password: "postgres",
    port: 19456
});

app.use("/contactos",(request,response,next)=>{
    console.log("headers:", request.headers);
    console.log("headers:", request.body);
    next();
});

/* app.get("/contactos",(request,response)=>{
    const contactos=[
        {id:1,nombre:"Santiago",apellido:"Mosquera",celular:"0983837663"},
        {id:2,nombre:"Richard",apellido:"Muñoz",celular:"0983837663"},
        {id:3,nombre:"Pedro",apellido:"Muñoz",celular:"0983837663"}
    ];
   
    response.send(contactos);
});*/
 client.connect();
app.get("/contactos",(request,response)=>{
    
   // client.connect();
    client.query("select * from contactos")
    .then(responseQuery=>{ 
        //console.log(responseQuery.rows); 
        response.send(responseQuery.rows);
       // client.end(); 
    }).catch(
        err=>{
            console.log(err); 
           /// client.end();
    })
    
});

/* app.post("/contactos",(req,resp)=>{
    req.body.id=99;
    resp.send(req.body );
});*/

app.post("/contactos",(req,resp)=>{
    
    const { nombre, apellido, celular } = req.body;
    //client.connect();
    client.query("insert into contactos(nombre,apellido, celular) values ($1,$2,$3) RETURNING *",[nombre, apellido, celular])
    .then(responseQuery=>{ 
        //console.log(responseQuery.rows); 
        resp.send(responseQuery.rows[0]);
      //  client.end(); 
    }).catch(
        err=>{
            console.log(err); 
           // client.end();
    })
});

/*
app.put("/contactos/:idParam",(req,resp)=>{
    const id=req.params.idParam;
    console.log("id",id);
    
    resp.send(req.body);
}); */


app.put("/contactos/:idParam",(req,resp)=>{
    const id=req.params.idParam;
    console.log("id",id);
    
    

    const { nombre, apellido, celular } = req.body;
    //client.connect();
    client.query("update contactos set nombre=$1,apellido=$2, celular=$3 where id=$4  RETURNING *",[nombre, apellido, celular,id])
    .then(responseQuery=>{ 
        //console.log(responseQuery.rows); 
        resp.send(responseQuery.rows[0]);
       // client.end(); 
    }).catch(
        err=>{
            console.log(err); 
         //   client.end();
    })
});

/*
app.delete("/contactos/:id",(req,resp)=>{
    const id=req.params.id;
    console.log("id:",id);
    resp.send({id:id});
});*/
app.delete("/contactos/:id",(req,resp)=>{
    const id=req.params.id;
    console.log("id:",id);
   

   // client.connect();
    client.query("delete from contactos where id =$1 ",[id])
    .then(responseQuery=>{ 
        //console.log(responseQuery.rows); 
        resp.send({id:id});
      //  client.end(); 
    }).catch(
        err=>{
            console.log(err); 
         ///   client.end();
    })
});

app.listen(puerto,()=>{console.log("Servidor listo en el puerto "+3001);
});