import pandas as pd
import requests
from urllib.parse import urlparse, parse_qs

# ==============================
# CONFIGURACIÓN
# ==============================

API_KEY = ""

ARCHIVO_ENTRADA = "datos.csv"
ARCHIVO_SALIDA = "youtube_completo.csv"

# ==============================
# FUNCIONES
# ==============================

def obtener_video_id(url):

    if pd.isna(url):
        return None

    url = str(url).strip()

    try:

        if "youtu.be/" in url:
            return url.split("youtu.be/")[1].split("?")[0]

        if "youtube.com" in url:

            parsed = urlparse(url)

            if parsed.path == "/watch":
                return parse_qs(parsed.query).get("v", [None])[0]

            if "/shorts/" in parsed.path:
                return parsed.path.split("/shorts/")[1].split("/")[0]

            if "/live/" in parsed.path:
                return parsed.path.split("/live/")[1].split("/")[0]

    except:
        return None

    return None


def obtener_estadisticas(video_id):

    if video_id is None:
        return None, None

    endpoint = (
        "https://www.googleapis.com/youtube/v3/videos"
        f"?part=statistics&id={video_id}&key={API_KEY}"
    )

    r = requests.get(endpoint)
    print(r)
    if r.status_code != 200:
        return None, None

    datos = r.json()
    print(datos)

    if len(datos["items"]) == 0:
        return None, None

    stats = datos["items"][0]["statistics"]

    likes = stats.get("likeCount", "")

    comentarios = stats.get("commentCount", "")

    return likes, comentarios


# ==============================
# LEER CSV
# ==============================

df = pd.read_csv(ARCHIVO_ENTRADA)

# Buscar automáticamente la columna con URL

columna_url = None

for c in df.columns:

    nombre = c.lower()

    if "youtube" in nombre or "video" in nombre or "link" in nombre or "url" in nombre:
        columna_url = c
        break

if columna_url is None:
    raise Exception("No encontré la columna con el enlace del video.")

print(f"Usando columna: {columna_url}")

likes_lista = []
comentarios_lista = []

for i, url in enumerate(df[columna_url], start=1):

    video_id = obtener_video_id(url)

    likes, comentarios = obtener_estadisticas(video_id)

    likes_lista.append(likes)
    comentarios_lista.append(comentarios)

    print(f"{i}/{len(df)}")

df["Cantidad de likes"] = likes_lista
df["Cantidad de comentarios"] = comentarios_lista

df.to_csv(ARCHIVO_SALIDA, index=False, encoding="utf-8-sig")

print("===================================")
print("Archivo generado:")
print(ARCHIVO_SALIDA)
print("===================================")