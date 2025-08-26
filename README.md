Mapas Básicos (Dart Console)

Aplicação de console em Dart com menu interativo contendo 5 exercícios usando Map (agenda, cadastro de produtos, atualização de valores, remoção e filtragem/iteração).

✅ Pré-requisitos

Dart SDK >=3.3.0 <4.0.0

VS Code (opcional) com a extensão Dart

Para conferir:

dart --version

▶️ Como executar

Na raiz do projeto:

dart pub get
dart run bin/mapas_basicos.dart


Você verá um menu com as opções 1 a 5 (e 0 para sair).

Rodar com F5 (VS Code) — opcional

Crie .vscode/launch.json:

{
  "version": "0.2.0",
  "configurations": [
    {
      "name": "Dart Console: Mapas",
      "type": "dart",
      "request": "launch",
      "program": "bin/mapas_basicos.dart"
    }
  ]
}


Abra o projeto no VS Code e pressione F5.

```text
🗂️ Estrutura do projeto
mapas_basicos/
├─ bin/
│  └─ mapas_basicos.dart        # Menu principal / entrada
├─ lib/
│  ├─ map_exercises.dart        # Lógica dos 5 exercícios com Map
│  └─ utils/
│     └─ io.dart                # Helpers de entrada (readInt, readDouble, readLine)
├─ pubspec.yaml                 # Metadados do pacote e dependências
└─ README.md
```

Arquivos-chave

bin/mapas_basicos.dart → exibe o menu e chama cada exercício.

lib/map_exercises.dart → implementa as soluções dos 5 itens.

lib/utils/io.dart → utilitários de leitura/validação de entrada.

📚 Exercícios implementados

Agenda de Contatos
Mapa nome → telefone. Adiciona 3 contatos e exibe todos.

Cadastro de Produtos
Mapa produto → preço. Adiciona 5 produtos e calcula o preço médio.

Atualização de Valores
Mapa aluno → nota. Atualiza a nota de um aluno específico e exibe o mapa.

Remoção de Elementos
Mapa cidade → estado. Remove duas cidades e exibe o restante.

Iteração e Filtragem
Mapa produto → quantidade. Lista apenas produtos com quantidade > 5 (ordenados por nome).

🧪 Comandos úteis
dart analyze      # análise estática
dart format .     # formatação

🛠️ Solução de problemas

Erro: package_config.json did not contain its own root package
Solução (PowerShell, na raiz do projeto):

Remove-Item -Recurse -Force .dart_tool
Remove-Item -Force pubspec.lock -ErrorAction SilentlyContinue
dart pub get


OneDrive / caminhos com acento podem causar travas de arquivo.
Marque a pasta como Sempre manter neste dispositivo no OneDrive ou mova para um caminho simples, por ex.: C:\dev\mapas_basicos.

🧱 (Opcional) Gerar executável (Windows)
dart compile exe bin/mapas_basicos.dart -o build/mapas.exe
.\build\mapas.exe


Autor: Gabriel Nunes


Objetivo: praticar operações com Map em Dart de forma simples e interativa.