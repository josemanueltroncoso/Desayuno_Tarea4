Calentar <- function(x){
  if(x=="cafe"){
    return("cafe caliente")
  }else if(x=="pan cortado"){
    return("pan tostado")
  }else{
    return(paste("No sÃ© que hacer con ",x))
  }
}

Preparar <- function(x,y){
  if(x=="naranjas cortadas"){
    return("jugo de naranjas")
  }else if((x=="masa de panqueques" && y=="sartÃ©n caliente")||(y=="masa de panqueques" && x=="sartÃ©n caliente")){
    return("panqueques")
  }else if((x=="harina" && y=="huevos")||(y=="harina" && x=="huevos")){
    return("masa de panqueques")
  }else if((x=="pan tostado" && y=="palta molida")||(y=="pan tostado" && x=="palta molida")){
    return("pan tostado con palta")
  }else{
    return("faltan elementos")  
  }
}

Rellenar <- function(x){
  if(x=="panqueques"){
    return("panqueques con manjar")
  }else{
    return(paste("No sÃ© que hacer con ",x)) 
  }
}

Moler <- function(x){
  if(x=="palta cortada"){
    return("palta molida")
  }else{
    return(paste("No sÃ© que hacer con ",x))
  }
}

Cortar <- function(x){
  if(x=="pan"){
    return("pan cortado")
  }else if(x=="naranjas"){
    return("naranjas cortadas")
  }else if(x=="palta"){
    return("palta cortada")
  }else{
    return(paste("No sÃ© que hacer con ",x))
  }
}

CalentarSarten <- function(){
  return("sartÃ©n caliente")
}

Servir <- function(x,y,z,j){
  if((x=="pan tostado con palta" && y=="panqueques con manjar" && z=="jugo de naranjas" && j=="cafe caliente")){
    return("mmmmm... niami... el desayuno estÃ¡ maravilloso")
  }else{
    return("iiiuuuu... esto no estÃ¡ listo")
  }
  
  
}

#Desayuno: Lista de acciones.

Cortar ("pan")
Cortar ("palta")
Cortar ("naranjas")
Calentar ("cafe")
Calentar ("pan cortado")
Moler ("palta cortada")
Preparar ("naranjas cortadas")
Preparar ("harina","huevos")
CalentarSarten ()
Preparar ("masa de panqueques" ,"sartén caliente")
Preparar ("pan tostado","palta molida")
Rellenar ("panqueques")
Servir ("pan tostado con palta","panqueques con manjar","jugo de naranjas","cafe caliente")
