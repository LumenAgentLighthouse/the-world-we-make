# The World We Make — Roadmap of Intentions

This roadmap records intended capabilities and directions for the project. It is not a commitment that every item will be implemented, nor does inclusion imply that the required data or technical method currently exists.

## Long-term vision

### Universal Temporal Data Engine

Build a **universal temporal data engine** capable of representing and exploring different kinds of information through the same underlying spatial, temporal, relational and evidential framework.

The engine should allow the project to move beyond isolated dashboards or domain-specific visualisations. The same system should be capable of displaying, for example:

- words and language evolution
- foods and agricultural production
- population and demographic change
- migration and displacement
- drug-use and wastewater traces
- economic activity and trade
- energy and material flows
- disease and health patterns
- infrastructure and built-environment change
- cultural transmission and transformation
- environmental and ecological change
- events and their surrounding changes

### World Lens

Develop **World Lens** as the human-facing visual interface to the universal temporal data engine.

World Lens should allow a user to select an entity, variable, place, event, relationship or category and explore it across **space + time + relationships + evidence**.

The same visual engine should support multiple lenses, including combinations of lenses, rather than requiring a separate visualisation system for every domain.

Potential views include:

- geographic map
- time slider / animated history
- flow and movement map
- relationship/network graph
- statistical comparison
- event/change-point view
- layered spatial view
- globe / 3D temporal view where useful

### Core interaction principle

A user should be able to ask questions such as:

> **Where did this come from?**
>
> **Where did it go?**
>
> **When did it change?**
>
> **What changed around it?**
>
> **What was happening before and after?**
>
> **What is connected to it?**
>
> **How certain are we?**
>
> **What are we not measuring?**

The system should make uncertainty, missingness, competing explanations and changes in definitions visible rather than presenting inferred relationships as facts.

## Intended architectural direction

The visualisation layer should eventually operate over a common conceptual model:

```text
ENTITY
   │
   ├── OBSERVATION
   ├── EVENT
   ├── FLOW / RELATIONSHIP
   ├── PLACE
   └── TIME
          │
          ▼
   EVIDENCE + PROVENANCE
          │
          ▼
      WORLD LENS
          │
          ▼
   HUMAN EXPLORATION
          ↕
      AI DISCOVERY
```

The long-term goal is not simply to visualise existing tables. It is to provide a common temporal-spatial representation through which previously disconnected domains can be explored together.

## Relationship to the AI research system

World Lens and the universal temporal data engine should ultimately feed back into the project's central discovery loop:

`GLOBAL DATASET → AI AUDIT → MISSING VARIABLES/DATASETS → HUMAN/AGENT REVIEW → DATASET EXPANSION → RE-AUDIT`

AI agents should be able to identify unusual changes, correlations, clusters, flows, breaks, feedback loops and missing measurements through the same underlying representation that humans explore visually.

The intended outcome is a system in which a human can notice something visually, an agent can investigate it computationally, and both can return to the same underlying evidence and provenance.

## Development direction

### Near term
- Continue building the underlying global longitudinal dataset.
- Standardise entities, observations, events, places, time and provenance.
- Expand cross-domain data and explicit measurement distinctions.
- Record this visualisation concept as an architectural intention rather than prematurely constraining implementation.

### Medium term
- Define a universal entity/relationship model suitable for visual exploration.
- Define APIs or data-access conventions for temporal and spatial queries.
- Prototype World Lens using existing project data.
- Add time-aware maps, entity histories, event overlays and relationship views.
- Make uncertainty, missingness and evidence type first-class visual properties.

### Long term
- Implement the **universal temporal data engine**.
- Allow the same engine to render fundamentally different information types without creating separate domain-specific systems.
- Connect World Lens directly to agent discovery and audit workflows.
- Enable exploration across multiple simultaneous lenses and domains.
- Support increasingly fine-grained spatial and historical resolution as defensible data becomes available.

## Guiding principle

**One world. One underlying temporal-spatial system. Many lenses through which to see it.**
