import 'dart:io';
import 'package:mapas_basicos/utils/io.dart';
import 'package:mapas_basicos/map_exercises.dart';

void main(List<String> args) {
  while (true) {
    stdout.writeln('\n=== MAPAS — ATIVIDADES (Dart Console) ===');
    stdout.writeln(' 1) Agenda de Contatos');
    stdout.writeln(' 2) Cadastro de Produtos (média de preços)');
    stdout.writeln(' 3) Atualização de Valores (alunos → notas)');
    stdout.writeln(' 4) Remoção de Elementos (cidades → estados)');
    stdout.writeln(' 5) Iteração e Filtragem (estoque > 5)');
    stdout.writeln(' 0) Sair');

    final opt = readInt('\nEscolha uma opção: ', min: 0, max: 5);
    if (opt == 0) {
      stdout.writeln('Até mais!');
      break;
    }
    switch (opt) {
      case 1:
        agendaDeContatos();
        break;
      case 2:
        cadastroDeProdutos();
        break;
      case 3:
        atualizarNotaAluno();
        break;
      case 4:
        removerCidades();
        break;
      case 5:
        estoqueFiltrado();
        break;
    }
  }
}
