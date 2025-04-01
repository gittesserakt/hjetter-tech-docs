# Project AWS

## Projektbeschreibung

Das Ziel dieses Projekts ist es, die Grundlagen der Amazon Web Services (AWS) zu erlernen, zu verstehen und praxisnah anzuwenden. Hierzu sollen verschiedene Cloud-Services von AWS eingesetzt werden, um eine vollständige Unternehmensinfrastruktur aufzubauen.

In diesem Zusammenhang werden unter anderem die folgenden Service-Bereiche betrachtet und genutzt werden:

__Compute__: Bereitstellung und Verwaltung von virtuellen Maschinen (Amazon EC2).

__Storage__: Speicherung von Daten in Objektspeichern (Amazon S3), Blockspeichern (Amazon EBS).

__Security__: Implementierung von IAM-Rollen und -Berechtigungen, Netzwerk-Security-Gruppen sowie Verschlüsselungstechnologien.

__Networking__: Einrichtung und Verwaltung von VPCs (Virtual Private Cloud), Load Balancing und VPN-Verbindungen.

__Monitoring__: Überwachung der Infrastruktur mit Amazon Grafana Logging- und Alerting-Diensten.

Ein zentrales technisches Ziel des Projekts ist die Bereitstellung eines Kubernetes Clusters auf AWS. Dies ermöglicht den Betrieb einer containerisierten Anwendung in einer hochverfügbaren, skalierbaren und resilienten Umgebung. Das Kubernetes-Cluster wird mit AWS-Services integriert, um automatisiertes Scaling, Load Balancing und resiliente Deployments zu ermöglichen.

### Erweiterte Zielsetzung: Hybrid-Cloud-Ansatz

Zusätzlich soll ein Kubernetes Cluster auf On-Premise Hardware aufgesetzt werden. Dieses On-Premise Cluster wird mit dem AWS Kubernetes Cluster verbunden, um eine Hybrid-Cloud-Infrastruktur zu realisieren. Ziel dieser Erweiterung ist es, eine flexible, hybride Umgebung zu schaffen, die sowohl lokale als auch Cloud-Ressourcen nutzt. Dies ermöglicht unter anderem:

Reduzierung der Latenzzeiten durch lokale Verarbeitung von Daten.

Kosteneffiziente Nutzung von Cloud-Ressourcen für skalierbare Workloads.

Failover-Mechanismen zwischen On-Premise- und Cloud-Infrastruktur.

## Data-Science-Bezug

Im Rahmen dieses Projekts soll ein beispielhafter Service deployed werden, bei dessen Bereitstellung und Betrieb kontinuierlich Daten anfallen. Diese Daten bestehen unter anderem aus Logs, Metriken und Systemzuständen, die für Analyse- und Visualisierungszwecke gespeichert und aufbereitet werden.

Die anfallenden Daten werden sowohl strukturiert als auch unstrukturiert gespeichert, sodass sie für verschiedene Data-Science- und Machine-Learning-Anwendungen genutzt werden könnten.

## Meilensteine

#### Infrastruktur
- [ ] AWS Udemey Kurs abschließen
- [ ] Grundlegende Netzwerkstruktur / Unternehmensinfrastruktur auf AWS aufbauen
    - [ ] VPCs, Subnetze, Gateways, Security Groups
    - [ ] IAM-Rollen und -Berechtigungen
- [ ] Kubernetes Cluster auf AWS aufsetzen
    - [ ] Auto Scaling Group
    - [ ] Deploy Talos Linux
- [ ] Kubernetes Cluster auf On-Premise Hardware aufsetzen
    - [ ] Talos Linux

#### Service Deployment
- [ ] Beispiel Service deployen
    - [ ] Beispiel Service mit Golang in Container
- [ ] Daten sammeln und speichern
    - [ ] Logs, Metriken, Systemzustände
    - [ ] Speicherung in S3 und Prometheus
- [ ] Daten analysieren und visualisieren
    - [ ] Amazon Grafana
