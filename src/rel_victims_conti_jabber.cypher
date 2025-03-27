// Users nodes
MERGE (:Person {name: 'dandis'});
MERGE (:Person {name: 'target'});
MERGE (:Person {name: 'professor'});
MERGE (:Person {name: 'stern'});
MERGE (:Person {name: 'ramon'});
MERGE (:Person {name: 'boby'});

// Domain nodes
MERGE (:Domain {name: 'smith.co'});
MERGE (:Domain {name: 'broe.com'});
MERGE (:Domain {name: 'exide.com'});
MERGE (:Domain {name: 'bretzrv.com'});
MERGE (:Domain {name: 'varroclighting.com'});

// Rel with smith.co
MERGE (sender:Person {name: 'dandis'})
MERGE (receiver:Person {name: 'target'})
MERGE (domain:Domain {name: 'smith.co'})
MERGE (sender)-[:TALKED_TO {timestamp: '2020-09-14T11:33:33.231781'}]->(receiver)
MERGE (sender)-[:MENTIONED {timestamp: '2020-09-14T11:33:33.231781'}]->(domain)
MERGE (receiver)-[:MENTIONED {timestamp: '2020-09-14T11:33:33.231781'}]->(domain);

// Rel with broe.com
// Msg from 'dandis' to 'target' about 'broe.com'
MERGE (sender:Person {name: 'dandis'})
MERGE (receiver:Person {name: 'target'})
MERGE (domain:Domain {name: 'broe.com'})
MERGE (sender)-[:TALKED_TO {timestamp: '2020-09-14T11:33:33.231781'}]->(receiver)
MERGE (sender)-[:MENTIONED {timestamp: '2020-09-14T11:33:33.231781'}]->(domain)
MERGE (receiver)-[:MENTIONED {timestamp: '2020-09-14T11:33:33.231781'}]->(domain);

// Msg from 'target' to 'dandis' about 'broe.com'
MERGE (sender:Person {name: 'target'})
MERGE (receiver:Person {name: 'dandis'})
MERGE (domain:Domain {name: 'broe.com'})
MERGE (sender)-[:TALKED_TO {timestamp: '2020-09-15T14:43:37.608813'}]->(receiver)
MERGE (sender)-[:MENTIONED {timestamp: '2020-09-15T14:43:37.608813'}]->(domain)
MERGE (receiver)-[:MENTIONED {timestamp: '2020-09-15T14:43:37.608813'}]->(domain);

// Msg from 'professor' to 'target' about 'broe.com'
MERGE (sender:Person {name: 'professor'})
MERGE (receiver:Person {name: 'target'})
MERGE (domain:Domain {name: 'broe.com'})
MERGE (sender)-[:TALKED_TO {timestamp: '2020-09-25T10:17:35.179987'}]->(receiver)
MERGE (sender)-[:MENTIONED {timestamp: '2020-09-25T10:17:35.179987'}]->(domain)
MERGE (receiver)-[:MENTIONED {timestamp: '2020-09-25T10:17:35.179987'}]->(domain);

// Msg from 'professor' to 'stern' about 'broe.com'
MERGE (sender:Person {name: 'professor'})
MERGE (receiver:Person {name: 'stern'})
MERGE (domain:Domain {name: 'broe.com'})
MERGE (sender)-[:TALKED_TO {timestamp: '2020-10-12T13:55:42.412375'}]->(receiver)
MERGE (sender)-[:MENTIONED {timestamp: '2020-10-12T13:55:42.412375'}]->(domain)
MERGE (receiver)-[:MENTIONED {timestamp: '2020-10-12T13:55:42.412375'}]->(domain);

// Relación con exide.com
// Msg from 'professor' to 'stern' aboute 'exide.com'
MERGE (sender:Person {name: 'professor'})
MERGE (receiver:Person {name: 'stern'})
MERGE (domain:Domain {name: 'exide.com'})
MERGE (sender)-[:TALKED_TO {timestamp: '2020-10-08T01:44:23.236879'}]->(receiver)
MERGE (sender)-[:MENTIONED {timestamp: '2020-10-08T01:44:23.236879'}]->(domain)
MERGE (receiver)-[:MENTIONED {timestamp: '2020-10-08T01:44:23.236879'}]->(domain);

// Rel with bretzrv.com
// Msg from 'professor' to 'stern' about 'bretzrv.com' 
MERGE (sender:Person {name: 'professor'})
MERGE (receiver:Person {name: 'stern'})
MERGE (domain:Domain {name: 'bretzrv.com'})
MERGE (sender)-[:TALKED_TO {timestamp: '2020-10-08T16:48:39.884011'}]->(receiver)
MERGE (sender)-[:MENTIONED {timestamp: '2020-10-08T16:48:39.884011'}]->(domain)
MERGE (receiver)-[:MENTIONED {timestamp: '2020-10-08T16:48:39.884011'}]->(domain);

// Msg from 'professor' to 'stern' about 'bretzrv.com' 
MERGE (sender:Person {name: 'professor'})
MERGE (receiver:Person {name: 'stern'})
MERGE (domain:Domain {name: 'bretzrv.com'})
MERGE (sender)-[:TALKED_TO {timestamp: '2020-10-12T20:22:08.073485'}]->(receiver)
MERGE (sender)-[:MENTIONED {timestamp: '2020-10-12T20:22:08.073485'}]->(domain)
MERGE (receiver)-[:MENTIONED {timestamp: '2020-10-12T20:22:08.073485'}]->(domain);

// Msg from 'professor' to 'stern' about 'bretzrv.com' 
MERGE (sender:Person {name: 'professor'})
MERGE (receiver:Person {name: 'stern'})
MERGE (domain:Domain {name: 'bretzrv.com'})
MERGE (sender)-[:TALKED_TO {timestamp: '2020-10-13T01:13:40.072945'}]->(receiver)
MERGE (sender)-[:MENTIONED {timestamp: '2020-10-13T01:13:40.072945'}]->(domain)
MERGE (receiver)-[:MENTIONED {timestamp: '2020-10-13T01:13:40.072945'}]->(domain);

// Rel with varroclighting.com
// Msg from 'ramon' to 'boby' about 'varroclighting.com' 
MERGE (sender:Person {name: 'ramon'})
MERGE (receiver:Person {name: 'boby'})
MERGE (domain:Domain {name: 'varroclighting.com'})
MERGE (sender)-[:TALKED_TO {timestamp: '2020-10-18T15:25:34.522454'}]->(receiver)
MERGE (sender)-[:MENTIONED {timestamp: '2020-10-18T15:25:34.522454'}]->(domain)
MERGE (receiver)-[:MENTIONED {timestamp: '2020-10-18T15:25:34.522454'}]->(domain);

// Msg from 'ramon' to 'boby' about 'varroclighting.com' 
MERGE (sender:Person {name: 'ramon'})
MERGE (receiver:Person {name: 'boby'})
MERGE (domain:Domain {name: 'varroclighting.com'})
MERGE (sender)-[:TALKED_TO {timestamp: '2020-10-18T17:14:01.217187'}]->(receiver)
MERGE (sender)-[:MENTIONED {timestamp: '2020-10-18T17:14:01.217187'}]->(domain)
MERGE (receiver)-[:MENTIONED {timestamp: '2020-10-18T17:14:01.217187'}]->(domain);
