const express=require("express");
const app=express();
const puerto=3001;
const bodyParser=require("body-parser");

app.use(bodyParser.json());

app.use("/contactos",(request,response,next)=>{
    console.log("headers:", request.headers);
    console.log("headers:", request.body);
    next();
});

app.get("/contactos",(request,response)=>{
    const contactos=[
        {id:1,nombre:"Santiago",apellido:"Mosquera",celular:"0983837663"},
        {id:2,nombre:"Richard",apellido:"Muñoz",celular:"0983837663"},
        {id:3,nombre:"Pedro",apellido:"Muñoz",celular:"0983837663"}
    ];
    response.send(contactos);
});

app.post("/contactos",(req,resp)=>{
    req.body.id=99;
    resp.send(req.body );
});

app.put("/contactos/:idParam",(req,resp)=>{
    const id=req.params.idParam;
    console.log("id",id);
    
    resp.send(req.body);
});

app.delete("/contactos/:id",(req,resp)=>{
    const id=req.params.id;
    console.log("id:",id);
    resp.send();
});

app.listen(puerto,()=>{console.log("Servidor listo en el puerto "+3001);
});