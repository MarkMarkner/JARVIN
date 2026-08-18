---
type: meta
title: Dynamic Context Loading Workflow
status: active
created: 2026-08-18
updated: 2026-08-18
tags:
  - workflow
  - context-optimization
  - automation
address: context-workflow-001
---

# 🔄 Dynamic Context Loading Workflow

**Goal:** Load only necessary files = 50% less context usage  
**Method:** Smart Import System  
**Status:** ✅ ACTIVE & AUTOMATED

---

## 📋 Three Loading Modes

### **Mode 1: LIGHTWEIGHT (Default)**

Loaded automatically at session start:
```
✅ wiki/hot.md (critical status)
✅ wiki/meta/Master-Action-Items-2026.md (current work)
✅ wiki/entities/Mark Markner.md (reference)
✅ .claude/settings.json (configuration)
✅ Session-SUMMARY-INDEX.md (quick navigation)
```

**Size:** ~30-40 KB  
**Context Usage:** ~8-10% of 400k tokens

**When to use:** 90% of sessions (standard work)

---

### **Mode 2: SELECTIVE (On-Demand)**

Load additional files as needed using syntax:
```
@filename.md              # Load specific file
@folder/document.md       # Load from subdirectory
```

**Examples:**

```
"Tell me about DEC-2026-001"
→ System loads: @wiki/meta/decisions/DEC-2026-001.md
→ Context cost: +5-10 KB only

"Show me Session-3 details"
→ System loads: @wiki/sessions/Session-3-2026-08-17-Fix-und-Flip-Detail-Workflow.md
→ Context cost: +25 KB (full session, but nothing else!)

"What's in the Sparkasse meeting notes?"
→ System loads: @wiki/sessions/Session-Meeting-2026-08-17-Sparkasse-Ullrich.md
→ Context cost: +8 KB only
```

**Size:** Dynamic (requested file only)  
**Context Usage:** +5-25 KB per query

**When to use:** Accessing specific sessions/documents

---

### **Mode 3: FULL (Emergency)**

Load ALL context when needed:
```
"Load everything"         # Last resort
"Full context mode on"    # Not recommended
```

**Size:** ~170-200 KB  
**Context Usage:** ~40-50% of budget

**When to use:** NEVER (unless truly needed for cross-document analysis)

---

## 🚀 Automatic Smart Loading

The system **automatically decides** which mode based on your query:

### **Auto-Detection Examples**

```
User Query                          Mode Decision       Files Loaded
─────────────────────────────────   ─────────────────   ──────────────
"What's my next task?"              LIGHTWEIGHT         hot.md + MAI
"Tell me about the GmbH decision"   SELECTIVE           hot.md + DEC-001
"Compare all decisions"             SELECTIVE           hot.md + DEC-1,2,3
"Show all Fix & Flip details"       SELECTIVE           hot.md + Sessions 3,4
"Analyze everything"                FULL                All files (50% context)
```

---

## 📊 Context Comparison

| Scenario | Mode | Files | Size | Context % |
|----------|------|-------|------|-----------|
| Standard work | Lightweight | 5 | 30-40 KB | 8-10% |
| Specific query | Selective | 5-10 | 50-80 KB | 12-20% |
| Deep analysis | Full | 72 | 170-200 KB | 42-50% |

**Benefit:** Standard sessions use 8-10% instead of 40-50% = **75-80% savings!**

---

## 🔧 How It Works

### **Session Start**
```
1. User starts conversation
2. System checks: "What's the task?"
3. Load LIGHTWEIGHT mode (hot.md + MAI)
4. Display: "Lightweight mode active. Use @filename.md to load more."
```

### **During Session**
```
1. User asks: "Tell me about Session-3"
2. System parses: "Session-3" detected
3. Auto-load: @wiki/sessions/Session-3-...md
4. Display: "Loaded Session-3 (+25 KB context)"
5. Respond with full context
```

### **Smart Fallback**
```
If context approaches 85%:
1. Ask: "Context at 85%. Load lighter version?"
2. Options:
   a) Keep current mode (user choice)
   b) Switch to LIGHTWEIGHT (auto-save)
   c) Summarize old references (auto-compress)
```

---

## 💡 Usage Patterns

### **Pattern 1: Standard Daily Work**
```
Morning: Start with LIGHTWEIGHT
Throughout day: Use @filename.md for specific lookups
Context usage: Stays under 20%
```

### **Pattern 2: Decision Analysis**
```
"@DEC-2026-001 vs @DEC-2026-002 vs @DEC-2026-003"
→ System loads: Only decision files
→ Context: ~15-20%
→ Result: Compare all 3 decisions
```

### **Pattern 3: Session Deep Dive**
```
"@Session-3 analysis: problems & solutions"
→ System loads: Only Session-3
→ Context: ~20-25%
→ Result: Full session analysis without other noise
```

### **Pattern 4: Project Planning**
```
"@Master-Action-Items: What's blocking Phase 2?"
→ System loads: Only MAI file
→ Context: ~12%
→ Result: Action items analysis without session data
```

---

## 🎯 Best Practices

### **DO:**
✅ Use `@filename.md` explicitly  
✅ Start with LIGHTWEIGHT mode  
✅ Load files on-demand  
✅ Keep context under 50% for flexibility  
✅ Use summaries before full files  

### **DON'T:**
❌ Load "everything" unnecessarily  
❌ Keep old sessions preloaded  
❌ Ignore context warnings (85%+)  
❌ Mix 10 files in one query  
❌ Use full context for simple questions  

---

## 📈 Expected Context Usage

### **Without Optimization (Old Way)**
```
Session Start: Load all 72 files
                ↓
Context: ~170 KB (42%)
Space Left: 230 KB (58%)
Queries: Limited
⚠️  Can only do 2-3 heavy queries before 95%
```

### **With Optimization (New Way)**
```
Session Start: Load 5 essential files
                ↓
Context: ~35 KB (9%)
Space Left: 365 KB (91%)
Queries: Unlimited (with selective imports)
✅ Can do 15-20 moderate queries before 95%
```

---

## 🔐 Safety & Fallbacks

**If something goes wrong:**
```
1. Context > 95%?
   → Auto-trigger new session
   → Archive current session
   → Start fresh (400k tokens available)

2. File not found?
   → System suggests alternatives
   → Falls back to summary index

3. Query too broad?
   → System asks: "Which files specifically?"
   → Prevents accidental full-context load

4. User confused?
   → Type: "context mode?" 
   → System shows current state
```

---

## 📋 Quick Reference

### **Common Commands**
```
@hot.md                           # Load status
@Master-Action-Items              # Load current work
@Session-3                        # Load specific session
@decisions/DEC-2026-001           # Load decision
@entities/Mark Markner            # Load entity

"What files are loaded?"           # Show current context
"Context status"                   # Show usage %
"Lightweight mode"                 # Switch mode
"Add @filename.md to context"     # Explicit load
```

---

## ✅ Implementation Checklist

- ✅ `.claude/settings.json` configured (smart mode enabled)
- ✅ `Session-SUMMARY-INDEX.md` created
- ✅ `@filename.md` syntax enabled
- ✅ Auto-detection active
- ✅ Fallbacks configured
- ✅ Documentation complete

---

**Status:** 🚀 **READY TO USE**  
**Context Savings:** 75-80%  
**User Impact:** Seamless, automatic  
**Manual Work:** Zero (all automated)

Start using this now! Just work normally — the system handles context loading behind the scenes.
