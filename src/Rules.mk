sp := $(sp).x
dirstack_$(sp) := $(d)
d := $(dir)

dir := $(d)/fillAIDangerMap
include $(dir)/Rules.mk

dir := $(d)/progressiveCaps
include $(dir)/Rules.mk

dir := $(d)/archipelago
include $(dir)/Rules.mk

dir := $(d)/ExpandedModularSave
include $(dir)/Rules.mk

dir := $(d)/events
include $(dir)/Rules.mk

dir := $(d)/giveItemHook
include $(dir)/Rules.mk

dir := $(d)/superFormortiis
include $(dir)/Rules.mk

dir := $(d)/moveCostFix
include $(dir)/Rules.mk

dir := $(d)/DangerZone
include $(dir)/Rules.mk

dir := $(d)/HpBars
include $(dir)/Rules.mk

dir := $(d)/LToggle
include $(dir)/Rules.mk

EVENTS_$(d) := $(d)/_FE8EssentialFixes.event $(d)/main.event

EVENTS := $(EVENTS) $(EVENTS_$(d))

d := $(dirstack_$(sp))
sp := $(basename $(sp))
