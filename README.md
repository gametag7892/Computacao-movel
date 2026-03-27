# 📱 Estudos de Computação Móvel - Flutter

[cite_start]Este repositório contém os exercícios práticos desenvolvidos durante as aulas de **Computação Móvel** no curso de **Sistemas de Informação**[cite: 2, 977, 1468, 1835]. [cite_start]O foco é o domínio do framework Flutter e da linguagem Dart para criação de apps multiplataforma[cite: 1903].

---

## 🚀 O que foi realizado em cada etapa

### 📝 Roteiro 1: Conceitos e Estrutura Inicial
* [cite_start]**Fundamentos Mobile**: Estudo de interfaces touch, performance e responsividade em dispositivos móveis[cite: 1848, 1855, 1891].
* [cite_start]**Flutter Engine**: Entendimento de que o Flutter utiliza a engine **Skia** para desenhar componentes, em vez de usar widgets nativos diretamente[cite: 1912, 1962, 1963].
* [cite_start]**Configuração**: Instalação do SDK, Git e integração com VS Code e Android Studio[cite: 1998, 2010, 2052].
* [cite_start]**Widgets**: Diferenciação entre **StatelessWidget** (interface fixa) e **StatefulWidget** (interface que possui estado e muda durante a execução)[cite: 2413, 2425, 2427].

### 🗺️ Roteiro 2: Navegação e Fluxo de Dados
* [cite_start]**Pilha de Telas**: Uso do **Navigator** para gerenciar a pilha (Stack) de telas através de `push` e `pop`[cite: 1480, 1488, 1490].
* [cite_start]**Comunicação**: Passagem de parâmetros via construtor entre telas[cite: 1584, 1619].
* [cite_start]**Assincronismo**: Uso de `async`, `await` e `Future` para receber dados de volta de uma tela anterior[cite: 1733, 1741, 1750].

### 🏗️ Roteiro 3: Organização e Listas
* [cite_start]**Arquitetura**: Separação do projeto nas pastas `screens/` (telas completas) e `widgets/` (componentes reutilizáveis)[cite: 1007, 1010, 1020, 1022].
* [cite_start]**Componentização**: Criação de widgets customizados como o `CustomButton` para evitar repetição de código[cite: 1102, 1107, 1173].
* [cite_start]**Listas Dinâmicas**: Implementação de `ListView.builder` para criar listas de forma eficiente usando o `index` dos itens[cite: 1253, 1254, 1313].

### 🔄 Roteiro 4: Ciclo de Vida e APIs
* [cite_start]**Lifecycle**: Domínio dos métodos `initState()` para inicialização e `dispose()` para liberação de recursos (como controladores de áudio e texto)[cite: 98, 207, 208].
* [cite_start]**Gerenciamento de Estado**: Uso do `setState()` para notificar o Flutter sobre mudanças e reconstruir a interface[cite: 160, 196, 197].
* [cite_start]**Integração com PokéAPI**: Criação de um app funcional que busca dados de Pokémon via requisições HTTP e reproduz sons com o pacote `audioplayers`[cite: 395, 398, 399, 654].
* [cite_start]**Models**: Desenvolvimento de classes de modelo com métodos `fromJson` para converter dados JSON em objetos Dart organizados[cite: 691, 723, 847].

---

## 🛠️ Tecnologias e Pacotes
* [cite_start]**Linguagem**: Dart [cite: 1909]
* [cite_start]**Framework**: Flutter [cite: 1902]
* **Dependências**: 
  * [cite_start]`http`: Para requisições de API[cite: 398, 404].
  * [cite_start]`audioplayers`: Para reprodução de sons[cite: 399, 405].

---

[cite_start]**Professor**: Yassushi Okada   
[cite_start]**Instituição**: ESAMC [cite: 1, 976, 1467, 1834]