# Doom

[Link zu Projekt-ZIP](https://drive.google.com/file/d/1-YhK5-29c8zHMPKiEYqrhWaZnCrmTPML/view)

<iframe width="560" height="315" src="https://www.youtube.com/embed/tEITyKpA7VI?si=tzejIhyTG8GmEAuJ" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share" referrerpolicy="strict-origin-when-cross-origin" allowfullscreen></iframe>

## Umgesetzte Features:

### Spielmechanik A: High Mobility
- Double Jump
- Dash
- Grappling Hook (mit Air-Movement)
- Trampoline / Jump Pad (schleudert Spieler in angegebene Richtung)
- Klettern und Wall Movement

### Einzelspieler A: Animierte Bots
- Verschiedenste Animationen (Movement mit Blend Tree)
- Nutzung von Navmesh und Navmesh-Agent (Tracking von Spieler wenn in Reichweite)
    (Anmerkung: Das Tracking des Navmesh lässt zu wünchen übrig, aber ich konnte nicht wirklich
    Verbesserungen vornehmen, da mein PC in 9/10 Fällen beim baken des Navmeshs abstürzt)
- Zielen auf den Spieler mittels IK
- Bot kann Spieler schaden zufügen und Spieler Bot (beide können sterben)
- 2 verschiedene Waffen mit jeweils zwei Modis
    - Rifle (schießt Projektile und eine Granate)
    - Shotgun (schießt mehrere Raycasts und den Grappling Hook)

PS: Ich hatte auch angefangen einen weiteren Gegner zu erstellen, 
jedoch hat die Zeit nicht mehr gereicht diesen fertig zu stellen, 
aber ich gebe das dafür benutzte Asset unten trotzdem an.

## Benutzte Assets:
- Mixamo Animationen und Models
- <https://assetstore.unity.com/packages/3d/props/guns/shotgun-26685>
- <https://assetstore.unity.com/packages/3d/props/guns/sci-fi-gun-light-87916>
- <https://assetstore.unity.com/packages/3d/characters/humanoids/sci-fi/free-biomechanical-mutant-166330>
- <https://assetstore.unity.com/packages/2d/textures-materials/sky/animated-sun-skybox-98447>
- <https://assetstore.unity.com/packages/3d/characters/creatures/demon-horror-creature-with-weapon-247792>
