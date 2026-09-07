# Location Exploration Interface

## Purpose

The spherical map is not only a geographic display. It is an entry point into the dataset. A user should be able to select a country or other represented area and move from geography into the variables, observations, events and relationships associated with that place.

## Interaction model

1. Select a location from the map or location selector.
2. Open a floating information panel for that location.
3. Present available topic domains without implying that an unrepresented topic is absent from the real world.
4. Selecting a topic reveals the observations currently loaded for that location and topic.
5. Present related topics as selectable links so exploration can continue without returning to the map.
6. Preserve the current time/filter context where possible.

## Information semantics

The interface must distinguish:

- directly observed information;
- inferred or derived information;
- missing information;
- unknown information;
- information that is unavailable because the current release does not contain it.

A missing topic must never be rendered as proof of absence.

## Related-topic navigation

Related topics are navigation suggestions derived from the project's domain structure and relationship graph. They are not claims that two domains are causally related. When relationship metadata becomes available, the UI may prefer evidence-backed relationships over generic domain adjacency.

## Geographic scope

The same interaction pattern should eventually support countries, administrative regions, cities, settlements, ecological areas, resource regions, transport corridors and other place entities. The visual marker, selector and information panel should therefore use `place_id` rather than assuming every location is a country.

## Design principle

**The map answers “where?”; the information panel answers “what is known here?”; related topics answer “what else might be worth exploring?”**
