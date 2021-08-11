# simple-mongo-docker-compose
Compose file for simple MongoDB / Mongo Express services

## Como usar

Baixe este repositório:

```bash
git clone https://github.com/ermogenes/simple-mongo-docker-compose.git
```

Efetue as configurações:
- `.env` - credenciais que serão criados na inicialização do Mongo
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

## Acesso

- MongoDB na porta `27017`
- Mongo Express em `http://localhost:10190/`
