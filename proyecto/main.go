package main

import (
	"fmt"
	"github.com/antlr4-go/antlr/v4"
	"proyecto/generated"
)

func main() {
	fileName := "test.txt"
	input, err := antlr.NewFileStream(fileName)
	if err != nil {
		fmt.Println("No se pudo abrir el archivo:", err)
		return
	}

	// Instanciar Scanner
	lexer := generated.NewScanner(input)
	stream := antlr.NewCommonTokenStream(lexer, antlr.TokenDefaultChannel)

	// Iterar sobre los tokens en el stream
	for {
		t := stream.LT(1)
		if t.GetTokenType() == antlr.TokenEOF {
			break
		}
		//En go solo se puede ver el type (num de token) no se puede ver el Name del token como en Java
		fmt.Printf("%d:%s\n", t.GetTokenType(), t.GetText())
		stream.Consume()
	}
}
