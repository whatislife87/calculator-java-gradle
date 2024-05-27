package com.entrenamiento.Calculadora.controlador;
import com.entrenamiento.Calculadora.modelo.resultado;

import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;

@RestController
@RequestMapping("/build-id")
public class VersionController {
    @GetMapping(produces = "application/json; charset=UTF-8")
    @ResponseBody
    public ResponseEntity<String> buildid() {
        return new ResponseEntity<>("calculator-java-gradle #{BUILD_ID}#", HttpStatus.OK);
    }
}
