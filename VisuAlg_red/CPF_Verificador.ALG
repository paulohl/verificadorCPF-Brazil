      //algoritmo "Validação de CPF"
      //Author: Gustavo Furtado de Oliveira Alves
      //Algorithm in VisualG 2.0 - Iberia Portuguese

funcao validaCPF(cpf:CARACTER) : LOGICO
var
   num1, num2, num3, num4, num5, num6, num7, num8, num9, num10, num11, soma1, soma2 : inteiro
   resto1, resto2 : REAL
inicio

      //extrai os dígitos do CPF
      num1 := Caracpnum( Copia(cpf, 1, 1) )
      num2 := Caracpnum( Copia(cpf, 2, 1) )
      num3 := Caracpnum( Copia(cpf, 3, 1) )
      num4 := Caracpnum( Copia(cpf, 5, 1) )
      num5 := Caracpnum( Copia(cpf, 6, 1) )
      num6 := Caracpnum( Copia(cpf, 7, 1) )
      num7 := Caracpnum( Copia(cpf, 9, 1) )
      num8 := Caracpnum( Copia(cpf, 10, 1) )
      num9 := Caracpnum( Copia(cpf, 11, 1) )
      num10 := Caracpnum( Copia(cpf, 13, 1) )
      num11 := Caracpnum( Copia(cpf, 14, 1) )

      //Validação dos CPFs inválidos conhecidos
      SE (num1 = num2) E (num2 = num3) E (num3 = num4) E (num4 = num5) E (num5 = num6) E (num6 = num7) E (num7 = num8) E (num8 = num9) E (num9 = num10) E (num10 = num11) ENTAO
         RETORNE FALSO
      SENAO

         soma1 := num1 * 10 + num2 * 9 + num3 * 8 + num4 * 7 + num5 * 6 + num6 * 5 + num7 * 4 + num8 * 3 + num9 * 2

         resto1 := (soma1 * 10) mod 11

         SE resto1 = 10 ENTAO
             resto1 := 0
         FIMSE

         soma2 := num1 * 11 + num2 * 10 + num3 * 9 + num4 * 8 + num5 * 7 + num6 * 6 + num7 * 5 + num8 * 4 + num9 * 3 + num10 * 2

         resto2 := (soma2 * 10) mod 11

         SE resto2 = 10 ENTAO
             resto2 := 0
         FIMSE

         SE ( resto1 = num10) E (resto2 = num11) ENTAO
            RETORNE VERDADEIRO
         SENAO
            RETORNE FALSO
         FIMSE

      FIMSE

fimfuncao

var
   cpf : CARACTER
inicio

      //Verificação de um CPF inválido
      cpf := "123.456.789-12"
      SE validaCPF(cpf) = VERDADEIRO ENTAO
         ESCREVAL("O CPF ", cpf, " é válido!")
      SENAO
         ESCREVAL("O CPF ", cpf, " é inválido!")
      FIMSE

      //Verificação de um CPF válido
      cpf := "529.982.247-25"
      SE validaCPF(cpf) = VERDADEIRO ENTAO
         ESCREVAL("O CPF ", cpf, " é válido!")
      SENAO
         ESCREVAL("O CPF ", cpf, " é inválido!")
      FIMSE

      //Verificação de CPF com dígitos iguais
      cpf := "777.777.777-77"
      SE validaCPF(cpf) = VERDADEIRO ENTAO
         ESCREVAL("O CPF ", cpf, " é válido!")
      SENAO
         ESCREVAL("O CPF ", cpf, " é inválido!")
      FIMSE

fimalgoritmo
