# WordPress Multi-Tenant Platform

## Setup
docker-compose up -d

## Tenants
tenant1.local
tenant2.local
tenant3.local

## CI/CD
- PR: validation
- Merge: tenant-based artifact build
- Deployment: simulated

## Monitoring
Prometheus + Grafana

## Architecture
User → Nginx → WordPress → MySQL
                  ↓
           Prometheus + Grafana

## Onboarding Tenant
1. Create DB
2. Add container
3. Add theme/plugin
4. Update nginx