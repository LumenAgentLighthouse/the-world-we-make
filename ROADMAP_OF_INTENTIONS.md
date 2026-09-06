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

## Current prototype status

### World Lens prototype — implemented

A first **World Lens visualisation prototype now exists** as `visualization.html` and represents the first concrete implementation of the visualisation direction described above.

The prototype is an experimental implementation rather than a final architectural commitment. Its purpose is to test how existing project data can be explored spatially and visually, and to provide a foundation for the eventual universal temporal data engine.

The roadmap therefore treats World Lens as **implemented prototype / active development**, rather than an entirely future concept.

> **Prototype:** [`visualization.html`](./visualization.html)

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
- ~~Prototype World Lens using existing project data.~~ **Completed as an initial prototype in `visualization.html`; continue iterating from this implementation.**
- Use the visualisation to expose geographic coverage gaps, dense clusters, missing regions and uneven data availability as part of the project-wide audit.

### Medium term
- Define a universal entity/relationship model suitable for visual exploration.
- Define APIs or data-access conventions for temporal and spatial queries.
- Expand the World Lens prototype into time-aware maps, entity histories, event overlays and relationship views.
- Make uncertainty, missingness and evidence type first-class visual properties.
- Turn visually identified coverage gaps into explicit entries in the project's gap/missing-measurement workflow.

### Long term
- Implement the **universal temporal data engine**.
- Allow the same engine to render fundamentally different information types without creating separate domain-specific systems.
- Connect World Lens directly to agent discovery and audit workflows.
- Enable exploration across multiple simultaneous lenses and domains.
- Support increasingly fine-grained spatial and historical resolution as defensible data becomes available.

## Project-wide audit: what are we forgetting?

The visualisation is now part of the answer to the project's open audit question, **"What are we forgetting?"**

World Lens can reveal classes of missingness that are difficult to see in tables alone, including:

- geographic areas with little or no coverage
- countries or regions overrepresented relative to the rest of the world
- dense data clusters surrounded by sparse coverage
- domains with strong temporal histories but weak spatial coverage
- spatially covered variables with large temporal gaps
- places where one lens has rich observations but related phenomena are unmeasured
- apparent patterns that may be artefacts of uneven measurement rather than real-world differences

These visual gaps should not automatically be treated as evidence that the underlying phenomenon is absent. They are evidence about **measurement coverage** and should feed into the gap register and future data-hunting work.

This creates an additional audit loop:

`VISUAL COVERAGE → IDENTIFY GAP/BIAS → GAP REGISTER → DATA HUNT → DATASET EXPANSION → RE-VISUALISE`

## Guiding principle

**One world. One underlying temporal-spatial system. Many lenses through which to see it.**
