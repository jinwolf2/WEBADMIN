function validar(id){
    let num = document.getElementById("num").value;
    let text = document.getElementById("resultado");
    if(num%2==0){
        text.classList.add("text-green-500")
        text.innerHTML= "Es par";
    }else{
        text.classList.add("text-red-500")
        text.innerHTML= "Es impar";
    }
}