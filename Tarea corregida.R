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

# Lista de Acciones (Se dividiran en pasos)

# Paso N°1: Cortar los elementos requeridos

Cortar ("pan")
Cortar ("naranjas")
Cortar ("palta")

# Paso N°2: Calentar elementos necesarios

# Cafe caliente:
Calentar ("cafe")  

# Pan tostado:
Calentar (Cortar("pan"))

# Paso N°3: Moler elemento necesario

# Palta molida
Moler (Cortar ("palta"))

# Paso N°4: Preparar elementos

# Jugo de naranjas
Preparar (Cortar("naranjas")) 

# Masa de panqueques
Preparar ("harina","huevos") 

# Paso N°5: Terminar la prepararación de los elementos

# Calentar sartén y preparar panqueques
CalentarSarten () 
Preparar(Preparar ("harina","huevos"),CalentarSarten())

# Pan tostado con palta
Preparar (Calentar(Cortar("pan")),Moler(Cortar("palta"))) 

# Rellenar panqueques con manjar
Rellenar (Preparar(Preparar("harina","huevos"), CalentarSarten ())) 

# Paso N°6: Servir el desayuno

Servir(Preparar(Calentar(Cortar("pan")) , Moler(Cortar("palta"))), Rellenar(Preparar(Preparar("harina","huevos"), CalentarSarten())), Preparar(Cortar("naranjas")), Calentar("cafe"))
