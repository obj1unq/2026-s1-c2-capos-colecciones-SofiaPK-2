// link apunte colecciones https://docs.google.com/document/d/1OJbaQIwIf1r23JbEzxqBJ5NgYW0lodbz2_MzbaGgNuk/edit?tab=t.0
// link apunte testing https://docs.google.com/document/d/1xtUAg9_XSLlGNilUADKrDuCFf_jYfgZcu-vrttNygZE/edit?tab=t.0#heading=h.8u2q0xt88h8h

object rolando {
    const artefactosDeRolando = #{} // conjunto - artefactos que Rolando lleva consigo en la mochila
    var capacidadMáximaDeMochila = 2 
    const historialCantArtefactos = [] // lista - historial de artefactos que Rolando se va encontrando

    // getter
    method artefactosDeRolando(){
        return artefactosDeRolando
    }
    
    // getter
    method capacidadMáximaDeMochila(){
        return capacidadMáximaDeMochila
    }

    // getter
    method historialCantArtefactos(){
        return historialCantArtefactos
    }

    // setter para incrementar la capacidad de guardado en la mochila
    method capacidadMáximaDeMochila(_nuevaCapacidadMáxima){
        capacidadMáximaDeMochila = _nuevaCapacidadMáxima
    }

    // Rolando va recolectando distintos artefactos por el mundo virtual
    method encontrarArtefacto(artefacto){
        historialCantArtefactos.add(artefacto) //agrego un artefacto al historial
        self.validarRecolecciónArtefacto() // cada vez que Rolando se encuentra con un artefacto, lo levanta sólo si tiene capacidad para llevarlo
        artefactosDeRolando.add(artefacto) // agrego el artefacto a la mochila
    } 
    
    method validarRecolecciónArtefacto(){
        if (capacidadMáximaDeMochila <= artefactosDeRolando.size()){
            self.error("No tiene capacidad para recolectar el artefacto")
        }
    }

}

object espadaDelDestino{

}

object libroDeHechizos{

}

object collarDivino{

}

object armaduraAceroValyrio{

}