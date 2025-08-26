import 'dart:io';
import 'package:mapas_basicos/utils/io.dart';

String _money(num v) => 'R\$ ${v.toStringAsFixed(2)}';

/// 1) Agenda de Contatos: nome → telefone
void agendaDeContatos() {
  final contatos = <String, String>{};
  for (var i = 1; i <= 3; i++) {
    final nome = readLine('[$i/3] Nome: ');
    final fone = readLine('Telefone: ');
    if (contatos.containsKey(nome)) {
      stdout.writeln('(!) "$nome" já existia. Telefone atualizado.');
    }
    contatos[nome] = fone;
  }

  stdout.writeln('\n— Agenda —');
  contatos.forEach((nome, fone) => stdout.writeln('• $nome: $fone'));
}

/// 2) Cadastro de Produtos: produto → preço (média)
void cadastroDeProdutos() {
  final produtos = <String, double>{};
  for (var i = 1; i <= 5; i++) {
    final nome = readLine('[Produto $i/5] Nome: ');
    final preco = readDouble('Preço: ');
    if (produtos.containsKey(nome)) {
      stdout.writeln('(!) "$nome" já existia. Preço atualizado.');
    }
    produtos[nome] = preco;
  }

  final valores = produtos.values.toList();
  final soma = valores.fold<double>(0, (acc, v) => acc + v);
  final media = soma / valores.length;

  stdout.writeln('\n— Produtos —');
  produtos.forEach((n, p) => stdout.writeln('• $n: ${_money(p)}'));
  stdout.writeln('Preço médio: ${_money(media)}');
}

/// 3) Atualização de Valores: aluno → nota
void atualizarNotaAluno() {
  final qtd = readInt('Quantos alunos para cadastrar inicialmente? ', min: 1);
  final alunos = <String, double>{};
  for (var i = 1; i <= qtd; i++) {
    final nome = readLine('[Aluno $i/$qtd] Nome: ');
    final nota = readDouble('Nota: ');
    alunos[nome] = nota;
  }

  final alvo = readLine('\nAtualizar nota de qual aluno? ');
  if (alunos.containsKey(alvo)) {
    final nova = readDouble('Nova nota para "$alvo": ');
    alunos[alvo] = nova;
    stdout.writeln('Nota de "$alvo" atualizada.');
  } else {
    stdout.writeln('Aluno "$alvo" não encontrado.');
  }

  stdout.writeln('\n— Alunos —');
  alunos
      .forEach((n, nota) => stdout.writeln('• $n: ${nota.toStringAsFixed(2)}'));
}

/// 4) Remoção de Elementos: cidade → estado
void removerCidades() {
  final qtd = readInt('Quantas cidades deseja cadastrar? ', min: 1);
  final mapa = <String, String>{};
  for (var i = 1; i <= qtd; i++) {
    final cidade = readLine('[${i}/$qtd] Cidade: ');
    final estado = readLine('Estado (sigla ou nome): ');
    mapa[cidade] = estado;
  }

  for (var i = 1; i <= 2; i++) {
    final remover = readLine('\nRemover qual cidade [$i/2]? ');
    final ok = mapa.remove(remover) != null;
    stdout.writeln(ok ? 'Removida: "$remover"' : 'Cidade não encontrada.');
  }

  stdout.writeln('\n— Restante —');
  mapa.forEach((cid, uf) => stdout.writeln('• $cid: $uf'));
}

/// 5) Iteração e Filtragem: produto → quantidade (listar > 5)
void estoqueFiltrado() {
  final qtd = readInt('Quantos itens de estoque? ', min: 0);
  final estoque = <String, int>{};
  for (var i = 1; i <= qtd; i++) {
    final prod = readLine('[Item $i/$qtd] Produto: ');
    final q = readInt('Quantidade: ', min: 0);
    estoque[prod] = q;
  }

  stdout.writeln('\nProdutos com quantidade > 5:');
  final filtrados = estoque.entries.where((e) => e.value > 5).toList()
    ..sort((a, b) => a.key.compareTo(b.key));
  if (filtrados.isEmpty) {
    stdout.writeln('(nenhum)');
  } else {
    for (final e in filtrados) {
      stdout.writeln('• ${e.key}: ${e.value}');
    }
  }
}
