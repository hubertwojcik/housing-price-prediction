# Housing price prediction

## Uruchomienie JupyterLab lokalnie

Projekt wymaga Pythona 3.12 lub 3.13. Na macOS możesz sprawdzić wersję poleceniem:

```bash
python3 --version
```

Utwórz środowisko i zainstaluj zależności:

```bash
make setup
```

Następnie uruchom JupyterLab:

```bash
make jupyter
```

Przeglądarka powinna otworzyć adres wyświetlony w terminalu. Zatrzymasz serwer
skrótami `Ctrl+C`, a środowisko możesz aktywować ręcznie poleceniem:

```bash
source .venv/bin/activate
```

## Uruchomienie przez Docker

Jeśli nie chcesz instalować lokalnego Pythona:

```bash
make docker-build
make docker-jupyter
```

Notebooki zapisują się w bieżącym katalogu projektu. JupyterLab będzie dostępny
pod adresem podanym w terminalu, zwykle `http://localhost:8888/lab?token=...`.
