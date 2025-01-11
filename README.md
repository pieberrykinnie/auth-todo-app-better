# auth-todo-app-better

This is an **Dockerized** and authentication-protected Todo App using **Node.js**, **Express.js**, **bcrypt**, **JWT authentication**, **Prisma**, and **PostgreSQL**. The app allows users to:
- **Register**: Create a new account.
- **Login**: Authenticate and receive a JWT token.
- **Manage Todos**: Perform auth protected CRUD operations on their own todo tasks after logging in.

Adapted from Smoljames' tutorial [Backend Full Course](https://youtu.be/9BD9eK9VqXA?si=trWojZUKQFdGk4Wg).

## Live Demo

You can use the app here: [https://todo-app-dry-frog-4612.fly.dev/](https://todo-app-dry-frog-4612.fly.dev/)

## Quickstart

Clone the repository. Then, generate the Prisma Client:

```bash
npx prisma generate
```

Build your Docker images:

```bash
docker compose build
```

Create PostgreSQL migrations and apply them:

```bash
docker compose run app npx prisma migrate dev --name init
```

Run Docker containers:

```bash
docker compose run -d
```

You can now access the app at [http://localhost:5000](http://localhost:5000). To stop the app, run:

```bash
docker compose down
```
