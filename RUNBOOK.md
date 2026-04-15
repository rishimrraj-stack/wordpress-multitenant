
---

# 📘 🧾 2. RUNBOOK.md (FINAL)

```md
# RUNBOOK

## 🚀 Start
docker-compose up -d

## 🛑 Stop
docker-compose down

---

## 🔍 Check Containers
docker ps

---

## 📜 Logs
docker logs nginx
docker logs tenant1

---

## 💾 Backup
./scripts/backup.sh

---

## 🔁 Restore
docker exec -i mysql mysql -uroot -p$MYSQL_ROOT_PASSWORD < backup.sql

---

## 🌐 Access
- Grafana → http://IP:3000
- Prometheus → http://IP:9090

---

## ⚠️ Troubleshooting

### Site not loading
- Check nginx logs
- Check container status

### DB issue
- Restart MySQL container