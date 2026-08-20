# Graph Report - mcp-remnawave  (2026-06-15)

## Corpus Check
- 26 files · ~14,232 words
- Verdict: corpus is large enough that graph structure adds value.

## Summary
- 215 nodes · 432 edges · 3 communities detected
- Extraction: 95% EXTRACTED · 5% INFERRED · 0% AMBIGUOUS · INFERRED: 20 edges (avg confidence: 0.8)
- Token cost: 0 input · 0 output

## Community Hubs (Navigation)
- [[_COMMUNITY_Community 1|Community 1]]
- [[_COMMUNITY_Community 3|Community 3]]
- [[_COMMUNITY_Community 6|Community 6]]

## God Nodes (most connected - your core abstractions)
1. `RemnawaveClient` - 165 edges
2. `registerAllTools()` - 19 edges
3. `createServer()` - 4 edges
4. `registerNodeTools()` - 2 edges
5. `registerKeygenTools()` - 2 edges
6. `registerSnippetTools()` - 2 edges
7. `registerSettingsTools()` - 2 edges
8. `registerInboundTools()` - 2 edges
9. `registerSquadTools()` - 2 edges
10. `registerIpControlTools()` - 2 edges

## Surprising Connections (you probably didn't know these)
- `createServer()` --calls--> `registerAllTools()`  [INFERRED]
  src/server.ts → src/tools/index.ts
- `registerNodeTools()` --calls--> `registerAllTools()`  [INFERRED]
  src/tools/nodes.ts → src/tools/index.ts
- `registerKeygenTools()` --calls--> `registerAllTools()`  [INFERRED]
  src/tools/keygen.ts → src/tools/index.ts
- `registerSnippetTools()` --calls--> `registerAllTools()`  [INFERRED]
  src/tools/snippets.ts → src/tools/index.ts
- `registerSettingsTools()` --calls--> `registerAllTools()`  [INFERRED]
  src/tools/settings.ts → src/tools/index.ts

## Communities

### Community 1 - "Community 1"
Cohesion: 0.11
Nodes (18): registerExternalSquadTools(), registerHostTools(), registerHwidTools(), registerInboundTools(), registerAllTools(), registerInfraBillingTools(), registerIpControlTools(), registerKeygenTools() (+10 more)

### Community 3 - "Community 3"
Cohesion: 0.06
Nodes (1): RemnawaveClient

### Community 6 - "Community 6"
Cohesion: 0.31
Nodes (3): registerAllPrompts(), registerAllResources(), createServer()

## Knowledge Gaps
- **Thin community `Community 3`** (36 nodes): `RemnawaveClient`, `.constructor()`, `.getAllInbounds()`, `.getApiTokens()`, `.getAuthStatus()`, `.getBandwidthStats()`, `.getBillingProviders()`, `.getComputedConfigByProfileUuid()`, `.getExternalSquadByUuid()`, `.getExternalSquads()`, `.getFetchUsersIpsResult()`, `.getHwidStats()`, `.getInboundsByProfileUuid()`, `.getInternalSquads()`, `.getKeygen()`, `.getNodeByUuid()`, `.getNodeMetadata()`, `.getNodePlugin()`, `.getNodes()`, `.getNodesBandwidth()`, `.getNodesMetrics()`, `.getNodesStatistics()`, `.getStats()`, `.getSubscriptionByShortUuid()`, `.getSubscriptionByUsername()`, `.getSubscriptionPageConfig()`, `.getSubscriptionPageConfigs()`, `.getSubscriptionRequestHistory()`, `.getSubscriptionRequestHistoryStats()`, `.getSubscriptions()`, `.getSubscriptionSubpageConfig()`, `.getSystemMetadata()`, `.getUserBandwidthByUuid()`, `.getUserBySubscriptionUuid()`, `.getUserByTelegramId()`, `.getUserByUsername()`
  Too small to be a meaningful cluster - may be noise or needs more connections extracted.

## Suggested Questions
_Questions this graph is uniquely positioned to answer:_

- **Why does `RemnawaveClient` connect `Community 3` to `Community 0`, `Community 1`, `Community 2`, `Community 4`, `Community 5`?**
  _High betweenness centrality (0.832) - this node is a cross-community bridge._
- **Why does `registerAllTools()` connect `Community 1` to `Community 6`?**
  _High betweenness centrality (0.015) - this node is a cross-community bridge._
- **Why does `createServer()` connect `Community 6` to `Community 1`?**
  _High betweenness centrality (0.007) - this node is a cross-community bridge._
- **Are the 18 inferred relationships involving `registerAllTools()` (e.g. with `createServer()` and `registerUserTools()`) actually correct?**
  _`registerAllTools()` has 18 INFERRED edges - model-reasoned connections that need verification._
- **Are the 3 inferred relationships involving `createServer()` (e.g. with `registerAllTools()` and `registerAllResources()`) actually correct?**
  _`createServer()` has 3 INFERRED edges - model-reasoned connections that need verification._
- **Should `Community 0` be split into smaller, more focused modules?**
  _Cohesion score 0.03 - nodes in this community are weakly interconnected._
- **Should `Community 1` be split into smaller, more focused modules?**
  _Cohesion score 0.11 - nodes in this community are weakly interconnected._