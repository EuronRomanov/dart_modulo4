const express=require("express");
const app=express();
const puerto=3001;
const bodyParser=require("body-parser");

app.use(bodyParser.json());

app.use("/laptops",(request,response,next)=>{
    console.log("headers:", request.headers);
    console.log("headers:", request.body);
    next();
});

app.get("/laptops/:id",(request,response)=>{
   
    response.send({id:parseInt(request.params.id),marca:"Apple",procesador:"Intel core i9",memoria:"16 GB",disco:"1 TB"});
   
});

app.post("/laptops",(req,resp)=>{
    console.log(req.body );
    
    req.body.id=99;
  
    resp.send(req.body );
});

app.get("/laptops",(request,response)=>{
   
    const computadoras=[
        {id:1,marca:"Lenovo",procesador:"Intel core i5",memoria:"16 GB",disco:"1 TB"},
        {id:2,marca:"HP",procesador:"Intel core i7",memoria:"16 GB",disco:"1 TB"},
        {id:3,marca:"Asus",procesador:"Intel core i5",memoria:"16 GB",disco:"1 TB"},
        {id:4,marca:"Acer",procesador:"Intel core i9",memoria:"16 GB",disco:"1 TB"},
        {id:5,marca:"Apple",procesador:"Intel core i9",memoria:"16 GB",disco:"1 TB"},
    ];
 
    response.send(computadoras);
   
});

app.put("/laptops/:idParam",(req,resp)=>{
    const id=req.params.idParam;
    console.log("id",id);
    
    resp.send(req.body);
});

app.delete("/laptops/:id",(req,resp)=>{
    const id=req.params.id;
    console.log("id:",id);
    resp.send({id:id});
});

app.listen(puerto,()=>{console.log("Servidor listo en el puerto "+3001);
});