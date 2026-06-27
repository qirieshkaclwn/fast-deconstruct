# Fast Deconstruct (Быстрое удаление)

A Factorio mod that adds a custom deconstruction tool to instantly delete (void) selected entities and all their contents, without using construction robots and without leaving any items or corpses on the ground.

Мод для Factorio, добавляющий специальный инструмент удаления, который моментально стирает выбранные постройки и все ресурсы внутри них, не требуя строительных роботов и не оставляя предметов или трупов на земле.

---

## Features / Возможности

* **Instant Destruction / Мгновенное удаление**: Entities in the selected area are deleted instantly on the same tick. / Выбранные объекты исчезают мгновенно на том же тике.
* **Void Contents / Полное удаление ресурсов**: All items inside chests, assembly machines, fuel slots, or fluid boxes are deleted without dropping to the ground. / Все ресурсы внутри сундуков, заводов, баков и топливных слотов стираются и не выпадают на землю.
* **Protected Entities / Защищённые объекты**:
  * Character / Игровой персонаж (игрок)
  * Cliffs / Скалы
  * Trees / Деревья
  * Space Platform Hubs / Хаб космической платформы (из Space Age)
  * *These entities will not be deleted, and their deconstruction markers will be automatically cancelled.* / *Эти объекты защищены от удаления, и маркеры разборки с них снимаются автоматически.*
* **Filter Configuration / Настройка фильтров**: Fully supports whitelists and blacklists. Right-click the tool to configure it just like a normal deconstruction planner. / Полностью поддерживает белые и чёрные списки. Нажмите правой кнопкой мыши по инструменту, чтобы настроить его как обычный планировщик деконструкции.
* **Shortcut / Быстрый доступ**: Available right from the shortcut bar from the start of the game (no research required). / Кнопка быстрого доступа доступна на панели инструментов с самого начала игры (исследования не требуются).

---

## Installation / Установка

1. Copy the folder `fast-deconstruct_1.0.0` into your Factorio `mods` directory.
2. Enable the mod in the in-game mod manager (or edit `mod-list.json`).
3. Start or load a game.

---

## How to Use / Как использовать

1. Click the **Get Fast Deconstruct** (Получить быстрое удаление) button in your shortcut bar (bottom right, next to blueprints).
2. Drag and select the area you want to clean up.
3. To configure filters, right-click the planner in your hand or inventory.

---

## Technical Details / Технические детали

* **Mod Name**: `fast-deconstruct`
* **Factorio Version**: `2.1`
* **Item Type**: `deconstruction-item`
* **Events Used**: `on_player_deconstructed_area` to detect selection and apply `entity.destroy()`.

---

## License / Лицензия

MIT License. Feel free to modify and share! / Лицензия MIT. Вы можете свободно изменять и распространять этот мод!
