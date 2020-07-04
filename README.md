# SimpleLight

This code follows free course from [pragmaticstudio](https://pragmaticstudio.com/tutorials/getting-started-with-phoenix-liveview)

Set up local postgres with Docker

 * `docker run --name light-postgres -p 5432:5432 -e POSTGRES_PASSWORD=postgres -d postgres`

To start your Phoenix server:

  * Install dependencies with `mix deps.get`
  * Create and migrate your database with `mix ecto.setup`
  * Install Node.js dependencies with `npm install` inside the `assets` directory
  * Start Phoenix endpoint with `mix phx.server`

Now you can visit [`localhost:4000/light`](http://localhost:4000/light) from your browser.

Ready to run in production? Please [check our deployment guides](https://hexdocs.pm/phoenix/deployment.html).

## Learn more

  * Official website: https://www.phoenixframework.org/
  * Guides: https://hexdocs.pm/phoenix/overview.html
  * Docs: https://hexdocs.pm/phoenix
  * Forum: https://elixirforum.com/c/phoenix-forum
  * Source: https://github.com/phoenixframework/phoenix
