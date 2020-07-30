package main

import (
	"fmt"
	"os"
	"strconv"
)

func main() {
	if (len(os.Args) < 3) {
		fmt.Println("Parametros inválidos!")
		return
	}

	var val1 string = os.Args[1]
	var val2 string = os.Args[2]
	v1, err := strconv.Atoi(val1)
	if err != nil {
		fmt.Println("Parametro 1 é inválido!")
		return
	}
	v2, err := strconv.Atoi(val2)
	if err != nil {
		fmt.Println("Parametro 2 é inválido!")
		return
	}

	fmt.Println(soma(int(v1),int(v2)))
}

func soma(val1 int, val2 int) int {
	return (val1 + val2)
}
