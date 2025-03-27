# Conti Analyst

[![License](https://img.shields.io/badge/license-MIT-blue.svg)](LICENSE)
[![Python Version](https://img.shields.io/badge/python-3.8%2B-blue.svg)](https://www.python.org/downloads/release/python-380/)
[![Neo4j](https://img.shields.io/badge/Neo4j-5.0%2B-brightgreen.svg)](https://neo4j.com/)
[![Status](https://img.shields.io/badge/status-active-success.svg)](https://github.com/ramonfure/contianalyst)

## Overview

**Conti Analyst** is a Python-based tool developed to analyze data leaked from the cybercriminal group **Conti**. This tool helps researchers and cybersecurity professionals transform raw data from JSON files into Cypher queries, enabling efficient analysis of relationships and interactions within the Conti ransomware ecosystem.

## Features

- **JSON to Cypher**: Automatically generates Cypher queries from structured JSON files.
- **Graph Visualization**: Facilitates the analysis of complex relationships within Neo4j.
- **Data Exploration**: Simplifies identifying interactions between cybercriminals and their victims.

## Technologies Used

- [Python 3.8+](https://www.python.org)
- [Neo4j 5.0+](https://neo4j.com)

## Installation

Clone the repository:

```bash
git clone https://github.com/ramonfure/contianalyst.git
cd contianalyst
```

Install required dependencies:

```bash
pip install -r requirements.txt
```

## Usage

To generate Cypher queries from your JSON files:

```bash
python generate_cypher.py input.json output.cypher
```

Import the generated Cypher file into Neo4j:

```bash
cat output.cypher | cypher-shell -u neo4j -p your_password
```

## Contributing

Contributions, issues, and feature requests are welcome. Feel free to check the [issues page](https://github.com/ramonfure/contianalyst/issues).

## License

This project is licensed under the MIT License. See the [LICENSE](LICENSE) file for details.

---

Made by [Ramon Fuentes](https://github.com/ramonfure) 🚀
