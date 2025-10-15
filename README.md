# Projeto ETL Spotify – Integração de Sistemas de Informação

## Descrição

Este projeto foi desenvolvido no âmbito da Unidade Curricular **Integração de Sistemas de Informação (ISI)** e tem como objetivo aplicar e demonstrar um processo completo de **ETL (Extract, Transform, Load)** utilizando a ferramenta **KNIME**.  

O sistema realiza a leitura de um *dataset* contendo mais de 30 000 músicas do **Spotify**, enriquece os dados através da **API do Spotify**, transforma e organiza a informação, e armazena os resultados numa base de dados **SQLite**.  
Por fim, são gerados relatórios em CSV e enviadas notificações automáticas por e-mail, além de dashboards interativos em **Node-RED** para visualização dos dados tratados.

---

## Objetivos

- Consolidar conceitos associados à **Integração de Sistemas de Informação** usando dados.  
- Analisar e especificar cenários de aplicação de processos **ETL**.  
- Explorar ferramentas de suporte e automação de processos de ETL.  
- Desenvolver um **workflow** completo no KNIME, desde a extração até à visualização dos resultados.  
- Integrar e manipular dados em diferentes formatos (**CSV**, **JSON**, **SQLite**).  
- Aplicar expressões regulares para limpeza, normalização e tratamento de dados.  
- Promover boas práticas de desenvolvimento e documentação de software.  
- Demonstrar o valor da integração de dados e automação em contextos reais.  

---

## Tecnologias Utilizadas

| Componente | Descrição |
|-------------|------------|
| **KNIME Analytics Platform** | Plataforma principal de ETL (Extração, Transformação e Carga) |
| **SQLite** | Base de dados leve e local utilizada para armazenamento dos resultados |
| **DB Browser for SQLite** | Ferramenta de gestão e visualização das tabelas SQLite |
| **Node-RED** | Plataforma de automação usada para criação de dashboards interativos |
| **Spotify Web API** | Fonte de dados utilizada para enriquecimento das informações musicais |
| **Python** *(opcional)* | Testes e automações auxiliares, nomeadamente para integração de dados |
| **CSV / JSON** | Formatos de importação e exportação de dados |

## Estrutura do Projeto

📁 data/

┣ 📂 input/ # Dataset original (spotify_songs.csv)

┣ 📂 output/ # Ficheiros resultantes (CSV, BD)

┣ 📂 keys/ # Ficheiros de chaves (spotify_keys.json)

📁 knime/

┗ 📄 TP1-ISI-Spotify.knwf # Workflow principal do KNIME

📁 node_red/

┗ 📄 flows.json # Dashboard Node-RED

📁 database/

┗ 📄 spotify.db # Base de dados SQLite

📄 README.md

## Processos ETL Desenvolvidos

### **1. Extração**
- Leitura de um *dataset* CSV com músicas do Spotify.  
- Leitura de ficheiro JSON com credenciais para autenticação na **Spotify API**.  
- Consulta de dados adicionais (artistas, álbuns, géneros) através da API.  

### **2. Transformação**
- Normalização de dados utilizando **expressões regulares (Regex)**.  
- Conversão e padronização de formatos (datas, textos, numéricos).  
- Limpeza e enriquecimento de dados com base nas respostas da API.  
- Criação de tabelas relacionais (tracks, artists, albums, artist_genres).  

### **3. Carga**
- Inserção dos dados tratados numa base de dados **SQLite**.  
- Exportação de resultados agregados em formato **CSV**.  
- Envio automático por e-mail de ficheiros gerados.  

---

## Referências

- [KNIME Analytics Platform](https://www.knime.com/)  
- [SQLite Official Documentation](https://www.sqlite.org/docs.html)  
- [DB Browser for SQLite](https://sqlitebrowser.org/)  
- [Spotify Web API](https://developer.spotify.com/documentation/web-api/)  
- [Node-RED](https://nodered.org/)  
- [Python Official Site](https://www.python.org/)  

## Autor

**Nome:** Miguel Areal - 29559

**Curso:** Licenciatura em Engenharia de Sistemas Informáticos (Pós-Laboral)

**Unidade Curricular:** Integração de Sistemas de Informação  

**Ano Letivo:** 2025/2026  

