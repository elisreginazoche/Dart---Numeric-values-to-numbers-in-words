void main() {
  const extenso = [
    [
      "zero",
      "um",
      "dois",
      "três",
      "quatro",
      "cinco",
      "seis",
      "sete",
      "oito",
      "nove",
      "dez",
      "onze",
      "doze",
      "treze",
      "quatorze",
      "quinze",
      "dezesseis",
      "dezessete",
      "dezoito",
      "dezenove"
    ],
    [
      "dez",
      "vinte",
      "trinta",
      "quarenta",
      "cinquenta",
      "sessenta",
      "setenta",
      "oitenta",
      "noventa"
    ],
    [
      "cem",
      "cento",
      "duzentos",
      "trezentos",
      "quatrocentos",
      "quinhentos",
      "seiscentos",
      "setecentos",
      "oitocentos",
      "novecentos"
    ],
  ];

  //Apagar o loop for e colocar o valor de interesse na variável entrada!

  for (var i = 1; i <= 1000; i++) {
    int entrada = i;

    if (entrada >= 1000) {
      print('Ainda não implementado');
    } else {
      String entradaString = entrada.toString();

      //Entrada de 0 a 20;

      if (entrada < 20) {
        print(extenso[0][entrada]);
      }

      //Entrada 20 a 100;
      if ((entrada >= 20) && (entrada < 100)) {
        int posicao0 = int.parse(entradaString[0]);
        int posicao1 = int.parse(entradaString[1]);
        if (posicao1 != 0) {
          print(extenso[1][posicao0 - 1] +
              ' ' +
              'e' +
              ' ' +
              extenso[0][posicao1]);
        } else {
          print(extenso[1][posicao0 - 1]);
        }
      }

      //Entrada de 100 a 1000

      if ((entrada >= 100) && entrada < 1000) {
        int posicao0 = int.parse(entradaString[0]);
        int posicao1 = int.parse(entradaString[1]);
        int posicao2 = int.parse(entradaString[2]);

        if (posicao1 == 0 && posicao2 == 0) {
          print(extenso[2][posicao0]);

          if (entrada == 100) {
            print(extenso[2][0]);
          }
        } else {
          //obter as dezenas

          String dezenaString = entradaString[1] + entradaString[2];

          int dezenaNumber = int.parse(dezenaString);

          if (dezenaNumber < 20) {
            print(extenso[2][posicao0] +
                ' ' +
                'e' +
                ' ' +
                extenso[0][dezenaNumber]);
          }

          if ((dezenaNumber >= 20) && (dezenaNumber < 100)) {
            // int posicao0 = int.parse(entradaString[0]);
            //  int posicao1 = int.parse(entradaString[1]);
            if (posicao1 != 0 && posicao2 != 0) {
              print(extenso[2][posicao0] +
                  ' ' +
                  'e' +
                  ' ' +
                  extenso[1][posicao1 - 1] +
                  ' ' +
                  'e' +
                  ' ' +
                  extenso[0][posicao2]);
            }

            if (posicao1 != 0 && posicao2 == 0) {
              print(extenso[2][posicao0] +
                  ' ' +
                  'e' +
                  ' ' +
                  extenso[1][posicao1 - 1]);
            }
          }
        }
      }
    }
  }
}
