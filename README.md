# ⚡ Windows Terminal Neo

**Windows Terminal Neo** — ультрасовременный терминал нового поколения для Windows, объединяющий эстетику Windows 11 Mica / Acrylic с мощью и функционалом Warp, Oh My Posh и Starship.

---

## ✨ Основные возможности

* **Дизайн Windows 11 Acrylic & Mica:** стеклянный интерфейс с аппаратным ускорением, настраиваемой прозрачностью и поддержкой тем (Mica Dark, Tokyo Night, Dracula, Cyberpunk, Matrix).
* **Аппаратный датчик реального железа:** автоматическое определение вашей видеокарты, процессора, количества ядер, оперативной памяти и дискового пространства через Win32 API и системный реестр (`winfetch`).
* **Starship / Powerline Prompt:** умная строка ввода со статусом веток Git (`main ✔`), временем выполнения команд (`⚡ 12ms`) и каталогом.
* **Интерактивные утилиты:**
  * `winfetch` — детальная спецификация компонентов системы
  * `top` — мониторинг загрузки ядер CPU, памяти и реальных процессов Windows
  * `speedtest` — интерактивный тест скорости сети и задержки (ping)
  * `matrix` — анимация цифрового дождя Matrix
  * `weather <город>` — сводка погоды и прогноз
  * `ai <вопрос>` — локальный автономный AI Copilot (offline)
  * `ai download <модель>` — скачивание локальной нейросети (Qwen 2.5 Coder, Llama 3.2, DeepSeek R1)
  * `ai models` — каталог доступных легковесных GGUF моделей
  * `ai status` — статус локального инференса и выделенной VRAM
  * `tree`, `ls`, `cd`, `cat`, `calc` — виртуальная файловая система и калькулятор
* **Синтез звука:** мягкие клики механической клавиатуры через Web Audio API.

---

## 🚀 Быстрый старт

### Запуск из исходников:
```cmd
pip install -r requirements.txt
python main.py
```

### Сборка в автономный `.exe`:
```cmd
python -m PyInstaller --noconsole --onefile --name "WindowsTerminalNeo" --add-data "index.html;." main.py
```
Скомпилированный бинарник появится в папке `dist\WindowsTerminalNeo.exe`.
