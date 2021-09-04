-- Up
-- Unique Sources
CREATE TABLE datasources (
  id INTEGER PRIMARY KEY,
  hardwareAddress BLOB,
  primaryAddress TEXT,
  interfaceName TEXT,
  hostName TEXT,
  description TEXT,
  UNIQUE(hardwareAddress, primaryAddress, interfaceName, hostName)
);

CREATE TABLE dnsReplies (
  id INTEGER PRIMARY KEY,
  parentBiflowId INTEGER,
  responseCode TEXT,
  questions TEXT,
  answers TEXT,
  FOREIGN KEY(parentBiflowId) REFERENCES biflows(id)
);

CREATE TABLE tlsClientFingerprints (
  id INTEGER PRIMARY KEY,
  parentBiflowId INTEGER,
  fingerprint TEXT,
  fingerprintMD5 TEXT,
  FOREIGN KEY(parentBiflowId) REFERENCES biflows(id)
);

CREATE TABLE tlsServerFingerprints (
  id INTEGER PRIMARY KEY,
  parentBiflowId INTEGER,
  fingerprint TEXT,
  fingerprintMD5 TEXT,
  FOREIGN KEY(parentBiflowId) REFERENCES biflows(id)
);
-- Down
