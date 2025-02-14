# Denarius

Denarius is a self-hosted personal finance management system built with Elixir and Phoenix LiveView. It provides a modern, responsive interface for managing multiple financial accounts, tracking expenses, and monitoring income streams, all while maintaining a clean and accessible user experience.

## Features

Denarius offers comprehensive financial management capabilities through its core features:

Multiple account management enables you to handle both personal and business finances within a single platform. Each account maintains its own set of transactions, categories, and reporting while sharing the same intuitive interface.

Income tracking supports both regular and variable income sources. You can easily manage fixed monthly payments alongside occasional or one-time income streams, providing a complete picture of your financial inflows.

Expense management includes customizable categories and tagging. Each expense can be enriched with notes using Markdown formatting, making it simple to maintain detailed records of your financial activities.

Real-time calculations provide instant insights into your financial status. The system automatically computes totals and balances, helping you maintain a clear understanding of your financial position.

## Technology Stack

Denarius is built using modern web technologies:

- Elixir and Phoenix LiveView power the backend, providing real-time updates and robust performance
- PostgreSQL serves as the database, ensuring reliable data storage
- SASS implements our custom design system, offering a consistent and maintainable styling approach
- Guardian handles authentication, maintaining security for your financial data

## Design System

Denarius implements a comprehensive design system that ensures consistency across the application. The system includes:

Core colors reflecting the Zeetech identity:
- Primary Purple (#9655FF) for key actions and emphasis
- Secondary Yellow (#FEF5BC) for highlights and accents
- Neutral White (#F7F7FF) for backgrounds
- Dark Mode (#000A0F) for enhanced visibility

The typography system uses a clear hierarchy with sizes ranging from 0.75rem to 1.5rem, ensuring readability across all devices. The spacing system follows a consistent scale, creating harmonious layouts throughout the application.

## Getting Started

### Prerequisites

Before installing Denarius, ensure you have:

- Elixir 1.14 or later
- Erlang 24 or later
- PostgreSQL 13 or later
- Node.js 16 or later

### Installation

First, clone the repository:

```bash
git clone https://github.com/yourusername/denarius.git
cd denarius
```

Install dependencies:

```bash
mix deps.get
mix compile
cd assets && npm install
```

Set up the database:

```bash
mix ecto.setup
```

Start the Phoenix server:

```bash
mix phx.server
```

Visit http://localhost:4000 to access your installation.

## Configuration

Denarius uses environment variables for configuration. Create a `.env` file in the project root:

```env
DATABASE_URL=postgresql://postgres:postgres@localhost/denarius_dev
SECRET_KEY_BASE=your_secret_key_base
```

Generate a secret key base using:

```bash
mix phx.gen.secret
```

## Development

The project follows standard Elixir community practices. When contributing:

Update dependencies when needed:
```bash
mix deps.update --all
```

Run tests:
```bash
mix test
```

Format code:
```bash
mix format
```

## Deployment

Denarius supports deployment on any platform that runs Elixir. For production deployment:

1. Configure your production environment variables
2. Compile assets:
   ```bash
   mix assets.deploy
   ```
3. Run migrations:
   ```bash
   mix ecto.migrate
   ```

## Contributing

We welcome contributions that improve Denarius. To contribute:

1. Fork the repository
2. Create a feature branch
3. Implement your changes
4. Submit a pull request

Please ensure your code follows our style guidelines and includes appropriate tests.

## License

Denarius is released under the MIT License. See the LICENSE file for details.

## About

Denarius was created by [@zoedsoupe](https://github.com/zoedsoupe) as a personal project to manage financial accounts more effectively. The name comes from the Roman goddess of commerce, reflecting the project's focus on financial management.

For support or questions, please open an issue on GitHub or contact the maintainers directly.
