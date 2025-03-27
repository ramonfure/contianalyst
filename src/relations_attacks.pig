#!/bin/env/python3

import json

# Chief list
chiefs = ["stern", "bentley", "defender", "target", "professor", "buza", "mango", "veron", "mors"]

# Clean usernames without onion domain
def clean_name(name):
    return name.split("@")[0]

# Open json
with open("websites_attacked.json", "r") as file:
    data = json.load(file)

# Generate Cypher
with open("rel_victims_conti_jabber.cypher", "w") as cypher_file:
    for domain, interactions in data.items():
        # Create domain node
        cypher_file.write(f"MERGE (d:Domain {{name: '{domain}'}});\n")

        for interaction in interactions:
            sender = clean_name(interaction["from"])
            receiver = clean_name(interaction["to"])
            timestamp = interaction["timestamp"]

            # Label sender and receiver
            sender_label = "Chief" if sender in chiefs else "User"
            receiver_label = "Chief" if receiver in chiefs else "User"

            # Create sender and receiver nodes
            cypher_file.write(f"MERGE (u1:{sender_label} {{name: '{sender}'}});\n")
            cypher_file.write(f"MERGE (u2:{receiver_label} {{name: '{receiver}'}});\n")

            # Rel sender and receiver
            cypher_file.write(f"MERGE (u1)-[:MENTIONED {{timestamp: '{timestamp}'}}]->(d);\n")

            # Rel receiver and domain
            cypher_file.write(f"MERGE (u2)-[:MENTIONED {{timestamp: '{timestamp}'}}]->(d);\n")

            # Rela sender and receiver
            cypher_file.write(f"MERGE (u1)-[:COMMUNICATED_WITH {{timestamp: '{timestamp}'}}]->(u2);\n")
