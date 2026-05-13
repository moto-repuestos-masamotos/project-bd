# Proyecto Base de Datos - Almacén de Repuestos para Motos

## Descripción

Este repositorio contiene la implementación técnica del proyecto final de la asignatura Modelado y Gestión de Bases de Datos.

El proyecto consiste en el diseño e implementación de una base de datos relacional para la gestión de un almacén de repuestos para motos, incluyendo procesos de ventas, facturación, inventario y pagos.

---

## Objetivo del repositorio

Centralizar toda la implementación técnica del proyecto, garantizando una estructura organizada, reproducible y preparada para el trabajo colaborativo.

---

## Tecnologías utilizadas

- PostgreSQL
- Docker
- Liquibase
- GitHub

---

## Contenido del repositorio

- Configuración Docker
- Migraciones con Liquibase
- Scripts DDL
- Scripts DML
- Datos canónicos
- Datos volumétricos
- Rollbacks
- Documentación técnica

---

## Estructura del proyecto

```text
project-bd/
├── docker/
├── liquibase/
│   ├── changelog/
│   ├── ddl/
│   └── dml/
│       ├── canonical/
│       └── volumetric/
├── rollback/
├── scripts/
├── docs/
├── docker-compose.yml
└── README.md
```

---

## Organización de datos

### Datos canónicos
Contienen información base y estable del sistema, por ejemplo:

- categorías de repuestos
- marcas
- métodos de pago
- tipos de movimiento

### Datos volumétricos
Contienen grandes volúmenes de datos utilizados para pruebas, consultas y validaciones del sistema.

---

## Buenas prácticas del proyecto

- Uso de commits descriptivos
- Trabajo colaborativo mediante GitHub
- Separación entre DDL y DML
- Uso de migraciones versionadas
- Estructura reproducible mediante Docker

---
## Ejecución preliminar del proyecto

### Levantar PostgreSQL con Docker

```bash
docker compose up -d
```

### Detener contenedores

```bash
docker compose down
```

---

## Tecnologías

- PostgreSQL
- Docker
- Liquibase


## Estado actual

🚧 Proyecto en fase inicial de organización técnica y documentación. 