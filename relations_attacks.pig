import json

# Lista de jefes
jefes = ["stern", "bentley", "defender", "target", "professor", "buza", "mango", "veron", "mors"]

# Función para limpiar nombres de usuarios
def clean_name(name):
    return name.split("@")[0]

# Abrir archivo JSON
with open("websites_attacked.json", "r") as file:
    data = json.load(file)

# Generar archivo Cypher
with open("output.cypher", "w") as cypher_file:
    for domain, interactions in data.items():
        # Crear nodo del dominio
        cypher_file.write(f"MERGE (d:Domain {{name: '{domain}'}});\n")

        for interaction in interactions:
            sender = clean_name(interaction["from"])
            receiver = clean_name(interaction["to"])
            timestamp = interaction["timestamp"]

            # Etiqueta de emisor y receptor
            sender_label = "Chief" if sender in jefes else "User"
            receiver_label = "Chief" if receiver in jefes else "User"

            # Crear nodos de emisor y receptor
            cypher_file.write(f"MERGE (u1:{sender_label} {{name: '{sender}'}});\n")
            cypher_file.write(f"MERGE (u2:{receiver_label} {{name: '{receiver}'}});\n")

            # Relación entre emisor y dominio
            cypher_file.write(f"MERGE (u1)-[:MENTIONED {{timestamp: '{timestamp}'}}]->(d);\n")

            # Relación entre receptor y dominio
            cypher_file.write(f"MERGE (u2)-[:MENTIONED {{timestamp: '{timestamp}'}}]->(d);\n")

            # Relación entre emisor y receptor
            cypher_file.write(f"MERGE (u1)-[:COMMUNICATED_WITH {{timestamp: '{timestamp}'}}]->(u2);\n")
