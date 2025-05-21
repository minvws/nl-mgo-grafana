# NL-MGO-GRAFANA-PRIVATE
This repository serves as the central hub for managing monitoring dashboards for various MGO projects in Grafana, along with Docker Compose configuration for integration.

The monitoring stack includes:
- **StatsD:** Aggregates and distributes metrics to the storage backend.
- **Graphite with Carbon database:** Storage backend for metrics.
- **Grafana:** Main application for visualizing metrics, utilizing Graphite as a datasource.

## Disclaimer

This project and all associated code serve solely as documentation
and demonstration purposes to illustrate potential system
communication patterns and architectures.

This codebase:

- Is NOT intended for production use
- Does NOT represent a final specification
- Should NOT be considered feature-complete or secure
- May contain errors, omissions, or oversimplified implementations
- Has NOT been tested or hardened for real-world scenarios

The code examples are only meant to help understand concepts and demonstrate possibilities.

By using or referencing this code, you acknowledge that you do so at your own
risk and that the authors assume no liability for any consequences of its use.

## How to integrate Grafana monitoring into an application?
The `graphite-statsd` service, which receives the raw metrics, exposes its port to the host OS, so other applications can connect that port using UDP.

## Grafana Dashboards
Dashboards are constructed from JSON models and provisioned automatically via Docker Compose.
The dashboards can be managed through the Grafana interface.

_Warning:_ Local dashboard modifications may be overwritten by remote changes. Always remember to export your dashboards before pulling new updates.

### JSON Models
Find JSON models for dashboards at: `./src/`.
Each file represents a standalone dashboard, named after the dashboard.

### Managing Dashboards
To manage dashboards within the Grafana interface:
1. Visit http://localhost:3000.
2. Log in using admin/admin.
2. Go to the Dashboards section.
4. Select a dashboard to manage.
5. Modify the dashboard as you wish.

After modifications, export the dashboard to a file.

### Export dashboard
1. Click the gear icon (settings) on the dashboard's top-right corner.
2. Choose "JSON Model" from the options.
3. Copy the source code.
4. Paste it into the corresponding JSON model in `/src` directory.
5. Commit and push changes.

## Releases
Manage releases by pushing a release tag to the main branch.
Tags should start with "v" prefix (e.g., `v1.0.0`).
Upon tagging a release, a new artifact is created.
Instruct the operations team to deploy the release after tagging.

## Contributing

If you encounter any issues or have suggestions for improvements, please feel free to open an issue or submit a pull
request on the GitHub repository of this package.

## License

This repository follows the [REUSE Specfication v3.2](https://reuse.software/spec-3.2/). The code is available under the
EUPL-1.2 license, but the fonts and images are not. Please see [LICENSES/](./LICENSES), [REUSE.toml](./REUSE.toml) and
the individual `*.license` files (if any) for copyright and license information.
