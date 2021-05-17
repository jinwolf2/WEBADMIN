function telf(id){    
    let tel= document.getElementById("telefno").value;
    let men = document.getElementById("men");
    if(tel.length !=9){
        men.classList.add("text-red-500")
        men.innerHTML= "No valido";
    }else{
        men.classList.add("text-green-500")
        men.innerHTML= "OK";
    }
}