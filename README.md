# simple-mongo-docker-compose
Compose file for simple MongoDB / Mongo Express services

## Como usar

Baixe este repositório:

```bash
git clone https://github.com/ermogenes/simple-mongo-docker-compose.git
```

Efetue as configurações:
- `.env` - credenciais que serão criadas na inicialização do Mongo
    - `DB_NAME` - nome do banco
    - `DB_USER` - usuário
    - `DB_PASSWORD` - senha
- `./secrets/.mongo_root_username` - usuário _root_ do MongoDB
- `./secrets/.mongo_root_password` -  senha de _root_ do MongoDB
- `./secrets/.mongo-express_username` - usuário do Mongo Express
- `./secrets/.mongo-express_password` - senha do Mongo Express

Inicie os serviços:

```bash
docker compose up -d
```

Para parar os serviços mantendo o estado do banco:

```bash
docker compose down
```

Para parar e zerar o banco:

```bash
docker compose down && docker volume rm simple-mongo-docker-compose_mongo-data -f 
```

## Acesso

- MongoDB na porta `27017`
- Mongo Express em `http://localhost:10190/`

Exemplo de _string_ de conexão para um banco chamado `citizenDB`, com usuário `user_app` e senha `pwd_app`:
- `mongodb://user_app:pwd_app@localhost:27017/citizenDB`

## Massa de dados

Baixe o gerador:

```bash
git clone https://github.com/ermogenes/citizen-datagen.git
```

Instale as dependências:

```bash
npm install
```

Ajuste a _string_ de conexão em `gen.js` e execute passando como argumento o número de registros a serem criados (no exemplo, 100K):

```bash
node gen.js 100000
```
