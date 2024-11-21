# README
> **Simple Demo**

### Prerequisites
- Docker
- Rails (you should be able to create and start a new Rails project)

### Development Environment
Run the following command to start the development environment:
```bash
bin/dev
```

### Generators
To generate a scaffold for `KeywordMetric` with the `secondary` database, use:
```bash
rails g scaffold KeywordMetric keyword:string volume:integer --database=secondary
```

### Schema Manipulation
Create and migrate the schema for the `secondary` database:
```bash
rails db:create:secondary
rails db:migrate:secondary
```
