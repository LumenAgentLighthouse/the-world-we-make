# 0011 — General interaction graph

Added a cross-domain relationship layer in `schema/interactions.sql` and documented its methodology in `methodology/interactions_and_networks.md`.

The graph makes direction, temporal validity, relationship strength, evidence status, provenance, event links and alternative explanations explicit. It is intended to preserve the connective structure between domains rather than forcing analyses to reconstruct relationships from independent observations.

This is an architectural addition; no existing observations are reinterpreted or rewritten.
