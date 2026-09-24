# P-002 · Registros DNS de clicshopcr.com para Omnisend

Administrador DNS: GoDaddy. Todos los valores de esta página son públicos por naturaleza (se consultan en el DNS); no contienen credenciales.

| Acción | Tipo | Nombre | Valor | Estado |
|---|---|---|---|---|
| **Editar** el SPF existente (no crear otro) | TXT | `@` | `v=spf1 include:dc-aa8e722993._spfm.clicshopcr.com include:mailgun.org ~all` | Preparado; pendiente de verificación SMS en GoDaddy |
| Crear | TXT | `mailo._domainkey` | `k=rsa; p=MIGfMA0GCSqGSIb3DQEBAQUAA4GNADCBiQKBgQDDhT+CZjwomH9LImMwMnkRnVlBmp/t1V9uYyynw33ZlLECOdXPk1eA85b7SJikLBb9sJv4/O9znZmo9NFPU2vULjn9dqdjgtYWMHh8uaZBo9S60d85MqGb0YZXMzb35y7i+pBGRMei+vqjk1TpuPnhprLM03FvQG8EZ9C3NfF5jQIDAQAB` | Pendiente |
| No tocar | TXT | `_dmarc` | Ya existe con la política que Omnisend requiere (`p=quarantine`) | Correcto |

## Registros existentes que no se deben alterar
- MX de Google Workspace (`aspmx.l.google.com` y alternos).
- `dc-aa8e722993._spfm` → `v=spf1 include:_spf.google.com ~all` (SPF de Google, referenciado por el SPF raíz).
- `google._domainkey` (DKIM de Google Workspace).
- `A @` y `CNAME www` hacia Shopify.

## Verificación posterior
1. Consultar TXT de `clicshopcr.com`: debe haber **un solo** registro que empiece con `v=spf1`.
2. Consultar TXT de `mailo._domainkey.clicshopcr.com`: debe coincidir carácter por carácter con el valor de Omnisend → Store settings → Domains.
3. En Omnisend, pulsar la verificación del dominio y asignarlo a campañas, automatizaciones y doble opt-in.
