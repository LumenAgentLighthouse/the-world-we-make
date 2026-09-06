# Geographies

A national statistic, city statistic, and neighbourhood statistic are not interchangeable. Geographic systems and boundaries must be documented and versioned.

## Hierarchy

Global; continent/region; country; admin1; admin2; city/town; village/suburb; rural; custom/transnational areas.

## Place types

`country`, `admin1`, `admin2`, `city`, `town`, `village`, `suburb`, `rural`, `island`, `archipelago`, `special_zone`, `disputed`, `transnational`.

## Boundary management

Every place record should include `boundary_version`. When boundaries change, preserve the old and new versions, date the change, provide a crosswalk where possible, and never silently merge or split places.

Boundary changes may be administrative, sovereign, de facto, or statistical.

## Native systems

Do not assume national definitions or geographies are directly comparable. Preserve native systems and crosswalk only where defensible.

## Standing question

> What geographic systems, resolutions, and boundary definitions are we missing?
