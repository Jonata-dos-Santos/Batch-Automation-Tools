# Batch-Automation-Tools

Coleção de scripts Batch desenvolvidos para automatizar tarefas cotidianas no Windows. Os projetos incluem ferramentas para organização de arquivos, limpeza de pastas temporárias, inicialização de programas e criação de backups.

Este repositório reúne projetos pessoais que desenvolvi enquanto aprendia automação com Batch Script, incluindo ferramentas criadas para resolver problemas do meu próprio dia a dia.

## Projetos

### 1. Organizador de Downloads

Organiza os arquivos da pasta Downloads em subpastas e pastas do sistema de acordo com as extensões reconhecidas pelo script. Foi desenvolvido para facilitar a manutenção da pasta e reduzir o acúmulo de arquivos desorganizados.

**Limitação:** não oferece suporte a todas as extensões de arquivos existentes.

### 2. Launcher de Programas

Script para iniciar programas por meio de um único menu, centralizando a abertura de aplicativos utilizados com frequência.

A versão atual possui suporte a dois programas e pode ser modificada para incluir outros.

### 3. Limpador de Arquivos Temporários

Remove arquivos temporários de diretórios definidos no script, ajudando a liberar espaço e reduzir o acúmulo de arquivos desnecessários.

Foi desenvolvido para ser executado automaticamente junto à inicialização do Windows e encerra sua execução após concluir a tarefa.

**Atenção:** a limpeza de arquivos temporários não substitui um antivírus e não garante a remoção de malwares. A exclusão de arquivos também pode afetar programas que estejam utilizando esses dados.

### 4. Backup de Saves da Steam

Cria cópias de segurança dos saves de dois jogos da Steam, permitindo recuperar os arquivos em caso de perda dos dados originais.

O script foi desenvolvido para uso pessoal e pode ser adaptado para outros jogos mediante alterações nos caminhos e nas configurações.

### 5. Backup de Mundos de Jogos Voxel

Cria backups dos mundos de Minecraft Java Edition, Minecraft Bedrock Edition e Hytale.

Foi desenvolvido para preservar mundos e construções pessoais, reduzindo o risco de perder o progresso dos jogos. O suporte ao Minecraft Java inclui instalações que utilizam o SK Launcher, conforme os caminhos configurados no script.

## Como utilizar

1. Acesse a pasta do projeto desejado.
2. Leia o arquivo `.txt` de instruções disponível nessa pasta.
3. Abra o script em um editor de texto para conferir os caminhos e as configurações.
4. Execute o arquivo `.bat` e verifique o resultado.

Alguns scripts podem exigir ajustes nos caminhos dos arquivos ou nas configurações do sistema para funcionar corretamente em outros computadores.

## Requisitos

* Windows.
* Prompt de Comando (CMD), disponível no Windows.
* Arquivos e diretórios compatíveis com as configurações de cada script.

## Cuidados

* Leia o código antes de executar qualquer script.
* Verifique os caminhos utilizados antes de permitir exclusões ou movimentações de arquivos.
* Confira se os backups foram criados corretamente.
* Não execute scripts com privilégios de administrador sem necessidade.
* Mantenha cópias de segurança em locais diferentes dos arquivos originais sempre que possível.

## Licença

Este repositório está licenciado sob a [Licença MIT](LICENSE).

Você pode utilizar, copiar, modificar e distribuir o código, desde que mantenha o aviso de direitos autorais e a licença original.

Consulte o arquivo `LICENSE` para conhecer os termos completos.
