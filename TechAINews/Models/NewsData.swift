//
//  NewsData.swift
//  TechAINews
//
//  Created by Swapnil Dhiman on 21/07/25.
//

import Foundation

struct NewsData: Decodable {
    let hits: [Hit]
}

struct Hit: Identifiable, Decodable {
    let objectID: String // Will use as id
    let title: String?
    let url: String?

    var id: String { objectID } // Allows SwiftUI List to track each story
}


/*
 Sample response JSON structure:
 {
 "exhaustive": {
 "nbHits": true,
 "typo": true
 },
 "exhaustiveNbHits": true,
 "exhaustiveTypo": true,
 "hits": [
 {},
 {
 "_highlightResult": {
 "author": {
 "matchLevel": "none",
 "matchedWords": [],
 "value": "antirez"
 },
 "title": {
 "matchLevel": "none",
 "matchedWords": [],
 "value": "Coding with LLMs in the summer of 2025 – an update"
 },
 "url": {
 "matchLevel": "none",
 "matchedWords": [],
 "value": "https://antirez.com/news/154"
 }
 },
 "_tags": [
 "story",
 "author_antirez",
 "story_44623953",
 "front_page"
 ],
 "author": "antirez",
 "children": [
 44625055,
 44625068,
 44625075,
 44625088,
 44625120,
 44625126,
 44625227,
 44625261,
 44625279,
 44625412,
 44625484,
 44625519,
 44625561,
 44625676,
 44625723,
 44625889,
 44626063,
 44626096,
 44626269,
 44626361,
 44626470,
 44627020,
 44627035,
 44627089,
 44627207,
 44627673,
 44627856,
 44627934,
 44627987,
 44628352,
 44628389,
 44628680,
 44629010,
 44629027,
 44629309,
 44630105,
 44630372,
 44630878,
 44630904,
 44631284,
 44631313,
 44632015,
 44632266,
 44632952,
 44633277,
 44633984,
 44634000,
 44634200
 ],
 "created_at": "2025-07-20T11:04:02Z",
 "created_at_i": 1753009442,
 "num_comments": 366,
 "objectID": "44623953",
 "points": 543,
 "story_id": 44623953,
 "title": "Coding with LLMs in the summer of 2025 – an update",
 "updated_at": "2025-07-21T13:28:52Z",
 "url": "https://antirez.com/news/154"
 },
 {},
 {},
 {},
 {},
 {
 "_highlightResult": {
 "author": {
 "matchLevel": "none",
 "matchedWords": [],
 "value": "camillovisini"
 },
 "title": {
 "matchLevel": "none",
 "matchedWords": [],
 "value": "Simulating hand-drawn motion with SVG filters"
 },
 "url": {
 "matchLevel": "none",
 "matchedWords": [],
 "value": "https://camillovisini.com/coding/simulating-hand-drawn-motion-with-svg-filters"
 }
 },
 "_tags": [
 "story",
 "author_camillovisini",
 "story_44591305",
 "front_page"
 ],
 "author": "camillovisini",
 "children": [],
 "created_at": "2025-07-17T09:12:26Z",
 "created_at_i": 1752743546,
 "num_comments": 17,
 "objectID": "44591305",
 "points": 251,
 "story_id": 44591305,
 "title": "Simulating hand-drawn motion with SVG filters",
 "updated_at": "2025-07-21T13:28:52Z",
 "url": "https://camillovisini.com/coding/simulating-hand-drawn-motion-with-svg-filters"
 },
 {
 "_highlightResult": {
 "author": {
 "matchLevel": "none",
 "matchedWords": [],
 "value": "saikatsg"
 },
 "title": {
 "matchLevel": "none",
 "matchedWords": [],
 "value": "Speeding up my ZSH shell"
 },
 "url": {
 "matchLevel": "none",
 "matchedWords": [],
 "value": "https://scottspence.com/posts/speeding-up-my-zsh-shell"
 }
 },
 "_tags": [
 "story",
 "author_saikatsg",
 "story_44626363",
 "front_page"
 ],
 "author": "saikatsg",
 "children": [
 44627294,
 44627354,
 44627357,
 44627425,
 44627607,
 44627713,
 44627822,
 44627854,
 44627902,
 44628086,
 44628160,
 44628450,
 44628607,
 44628869,
 44628944,
 44629060,
 44629231,
 44629272,
 44629905,
 44630061,
 44630490,
 44630632,
 44630783,
 44631642,
 44631834,
 44632961,
 44633342
 ],
 "created_at": "2025-07-20T15:51:44Z",
 "created_at_i": 1753026704,
 "num_comments": 102,
 "objectID": "44626363",
 "points": 206,
 "story_id": 44626363,
 "title": "Speeding up my ZSH shell",
 "updated_at": "2025-07-21T13:29:07Z",
 "url": "https://scottspence.com/posts/speeding-up-my-zsh-shell"
 },
 {
 "_highlightResult": {
 "author": {
 "matchLevel": "none",
 "matchedWords": [],
 "value": "Charlieholtz"
 },
 "story_text": {
 "matchLevel": "none",
 "matchedWords": [],
 "value": "<a href=\"https://threadreaderapp.com/thread/1945870105109246401.html\" rel=\"nofollow\">https://threadreaderapp.com/thread/1945870105109246401.html</a><p><a href=\"https://x.com/charliebholtz/status/1945870105109246401\" rel=\"nofollow\">https://x.com/charliebholtz/status/1945870105109246401</a>"
 },
 "title": {
 "matchLevel": "none",
 "matchedWords": [],
 "value": "Show HN: Conductor, a Mac app that lets you run a bunch of Claude Codes at once"
 },
 "url": {
 "matchLevel": "none",
 "matchedWords": [],
 "value": "https://conductor.build/"
 }
 },
 "_tags": [
 "story",
 "author_Charlieholtz",
 "story_44594584",
 "show_hn",
 "front_page"
 ],
 "author": "Charlieholtz",
 "children": [
 44594787,
 44594840,
 44595067,
 44598761,
 44615170,
 44627021,
 44627423,
 44627533,
 44627671,
 44627696,
 44627769,
 44627808,
 44627897,
 44627953,
 44628011,
 44628912,
 44628934,
 44629693,
 44629773,
 44630138,
 44630140,
 44630718,
 44630721,
 44631027,
 44631387,
 44631446,
 44631694,
 44632132,
 44632152,
 44632315,
 44633318,
 44633563,
 44634185
 ],
 "created_at": "2025-07-17T15:43:04Z",
 "created_at_i": 1752766984,
 "num_comments": 88,
 "objectID": "44594584",
 "points": 206,
 "story_id": 44594584,
 "story_text": "<a href=\"https:&#x2F;&#x2F;threadreaderapp.com&#x2F;thread&#x2F;1945870105109246401.html\" rel=\"nofollow\">https:&#x2F;&#x2F;threadreaderapp.com&#x2F;thread&#x2F;1945870105109246401.html</a><p><a href=\"https:&#x2F;&#x2F;x.com&#x2F;charliebholtz&#x2F;status&#x2F;1945870105109246401\" rel=\"nofollow\">https:&#x2F;&#x2F;x.com&#x2F;charliebholtz&#x2F;status&#x2F;1945870105109246401</a>",
 "title": "Show HN: Conductor, a Mac app that lets you run a bunch of Claude Codes at once",
 "updated_at": "2025-07-21T13:24:49Z",
 "url": "https://conductor.build/"
 },
 {
 "_highlightResult": {
 "author": {
 "matchLevel": "none",
 "matchedWords": [],
 "value": "diodorus"
 },
 "title": {
 "matchLevel": "none",
 "matchedWords": [],
 "value": "The Daily Life of a Medieval King"
 },
 "url": {
 "matchLevel": "none",
 "matchedWords": [],
 "value": "https://www.medievalists.net/2025/07/medieval-king-daily-life/"
 }
 },
 "_tags": [
 "story",
 "author_diodorus",
 "story_44598090",
 "front_page"
 ],
 "author": "diodorus",
 "children": [
 44632176,
 44632386,
 44632718,
 44632834,
 44632860,
 44632883,
 44633065,
 44633198,
 44633250,
 44633459,
 44633581,
 44633661,
 44633975,
 44634213,
 44634694,
 44634776
 ],
 "created_at": "2025-07-17T20:54:02Z",
 "created_at_i": 1752785642,
 "num_comments": 95,
 "objectID": "44598090",
 "points": 166,
 "story_id": 44598090,
 "title": "The Daily Life of a Medieval King",
 "updated_at": "2025-07-21T13:29:07Z",
 "url": "https://www.medievalists.net/2025/07/medieval-king-daily-life/"
 },
 {
 "_highlightResult": {
 "author": {
 "matchLevel": "none",
 "matchedWords": [],
 "value": "h2337"
 },
 "title": {
 "matchLevel": "none",
 "matchedWords": [],
 "value": "Show HN: X11 desktop widget that shows location of your network peers on a map"
 },
 "url": {
 "matchLevel": "none",
 "matchedWords": [],
 "value": "https://github.com/h2337/connmap"
 }
 },
 "_tags": [
 "story",
 "author_h2337",
 "story_44630648",
 "show_hn",
 "front_page"
 ],
 "author": "h2337",
 "children": [
 44630712,
 44630759,
 44630792,
 44630940,
 44631076,
 44631095,
 44631185,
 44631262,
 44631658,
 44631929,
 44631933,
 44631975,
 44632004,
 44632630,
 44632677,
 44632753,
 44633090,
 44633370,
 44633396,
 44633741,
 44633801
 ],
 "created_at": "2025-07-21T00:16:25Z",
 "created_at_i": 1753056985,
 "num_comments": 67,
 "objectID": "44630648",
 "points": 165,
 "story_id": 44630648,
 "title": "Show HN: X11 desktop widget that shows location of your network peers on a map",
 "updated_at": "2025-07-21T13:28:22Z",
 "url": "https://github.com/h2337/connmap"
 },
 {
 "_highlightResult": {
 "author": {
 "matchLevel": "none",
 "matchedWords": [],
 "value": "JohnScolaro"
 },
 "title": {
 "matchLevel": "none",
 "matchedWords": [],
 "value": "Log by time, not by count"
 },
 "url": {
 "matchLevel": "none",
 "matchedWords": [],
 "value": "https://johnscolaro.xyz/blog/log-by-time-not-by-count"
 }
 },
 "_tags": [
 "story",
 "author_JohnScolaro",
 "story_44630927",
 "front_page"
 ],
 "author": "JohnScolaro",
 "children": [
 44631178,
 44631189,
 44631192,
 44631221,
 44631412,
 44631548,
 44631737,
 44631742,
 44632088,
 44632163,
 44632738,
 44633043,
 44633380,
 44633998,
 44634053,
 44634239,
 44634299
 ],
 "created_at": "2025-07-21T01:15:55Z",
 "created_at_i": 1753060555,
 "num_comments": 52,
 "objectID": "44630927",
 "points": 165,
 "story_id": 44630927,
 "title": "Log by time, not by count",
 "updated_at": "2025-07-21T13:29:07Z",
 "url": "https://johnscolaro.xyz/blog/log-by-time-not-by-count"
 },
 {
 "_highlightResult": {
 "author": {
 "matchLevel": "none",
 "matchedWords": [],
 "value": "gslin"
 },
 "title": {
 "matchLevel": "none",
 "matchedWords": [],
 "value": "Stdio(3) change: FILE is now opaque"
 },
 "url": {
 "matchLevel": "none",
 "matchedWords": [],
 "value": "https://undeadly.org/cgi?action=article;sid=20250717103345"
 }
 },
 "_tags": [
 "story",
 "author_gslin",
 "story_44627793",
 "front_page"
 ],
 "author": "gslin",
 "children": [
 44628110,
 44628121,
 44628412,
 44628639,
 44629035,
 44629130,
 44629417,
 44629798,
 44630983,
 44631336,
 44632770
 ],
 "created_at": "2025-07-20T18:18:40Z",
 "created_at_i": 1753035520,
 "num_comments": 76,
 "objectID": "44627793",
 "points": 153,
 "story_id": 44627793,
 "title": "Stdio(3) change: FILE is now opaque",
 "updated_at": "2025-07-21T13:24:49Z",
 "url": "https://undeadly.org/cgi?action=article;sid=20250717103345"
 },
 {
 "_highlightResult": {
 "author": {
 "matchLevel": "none",
 "matchedWords": [],
 "value": "summarity"
 },
 "title": {
 "matchLevel": "none",
 "matchedWords": [],
 "value": "Agents built from alloys"
 },
 "url": {
 "matchLevel": "none",
 "matchedWords": [],
 "value": "https://xbow.com/blog/alloy-agents/"
 }
 },
 "_tags": [
 "story",
 "author_summarity",
 "story_44630724",
 "front_page"
 ],
 "author": "summarity",
 "children": [
 44630948,
 44631050,
 44631057,
 44631067,
 44631093,
 44631243,
 44631298,
 44631351,
 44631544,
 44631660,
 44631785,
 44631814,
 44631891,
 44631905,
 44631916,
 44631948,
 44632106,
 44632714,
 44633097,
 44634123,
 44634124,
 44634837
 ],
 "created_at": "2025-07-21T00:33:04Z",
 "created_at_i": 1753057984,
 "num_comments": 66,
 "objectID": "44630724",
 "points": 135,
 "story_id": 44630724,
 "title": "Agents built from alloys",
 "updated_at": "2025-07-21T13:28:22Z",
 "url": "https://xbow.com/blog/alloy-agents/"
 },
 {
 "_highlightResult": {
 "author": {
 "matchLevel": "none",
 "matchedWords": [],
 "value": "nromiun"
 },
 "title": {
 "matchLevel": "none",
 "matchedWords": [],
 "value": "How to handle people dismissing io_uring as insecure? (2024)"
 },
 "url": {
 "matchLevel": "none",
 "matchedWords": [],
 "value": "https://github.com/axboe/liburing/discussions/1047"
 }
 },
 "_tags": [
 "story",
 "author_nromiun",
 "story_44632240",
 "front_page"
 ],
 "author": "nromiun",
 "children": [
 44632294,
 44632346,
 44632387,
 44632398,
 44632469,
 44632483,
 44632571,
 44632694,
 44632764,
 44632998,
 44633003,
 44634621,
 44634836
 ],
 "created_at": "2025-07-21T06:15:05Z",
 "created_at_i": 1753078505,
 "num_comments": 92,
 "objectID": "44632240",
 "points": 98,
 "story_id": 44632240,
 "title": "How to handle people dismissing io_uring as insecure? (2024)",
 "updated_at": "2025-07-21T13:28:22Z",
 "url": "https://github.com/axboe/liburing/discussions/1047"
 },
 {
 "_highlightResult": {
 "author": {
 "matchLevel": "none",
 "matchedWords": [],
 "value": "todsacerdoti"
 },
 "title": {
 "matchLevel": "none",
 "matchedWords": [],
 "value": "ESP32-Faikin: ESP32 based module to control Daikin aircon units"
 },
 "url": {
 "matchLevel": "none",
 "matchedWords": [],
 "value": "https://github.com/revk/ESP32-Faikin"
 }
 },
 "_tags": [
 "story",
 "author_todsacerdoti",
 "story_44631594",
 "front_page"
 ],
 "author": "todsacerdoti",
 "children": [
 44632158,
 44632195,
 44632265,
 44632274,
 44632576,
 44632670,
 44632735,
 44634178,
 44634389,
 44634528,
 44634747
 ],
 "created_at": "2025-07-21T03:41:23Z",
 "created_at_i": 1753069283,
 "num_comments": 35,
 "objectID": "44631594",
 "points": 82,
 "story_id": 44631594,
 "title": "ESP32-Faikin: ESP32 based module to control Daikin aircon units",
 "updated_at": "2025-07-21T13:27:35Z",
 "url": "https://github.com/revk/ESP32-Faikin"
 },
 {
 "_highlightResult": {
 "author": {
 "matchLevel": "none",
 "matchedWords": [],
 "value": "ibobev"
 },
 "title": {
 "matchLevel": "none",
 "matchedWords": [],
 "value": "Using the Matrix Cores of AMD RDNA 4 architecture GPUs"
 },
 "url": {
 "matchLevel": "none",
 "matchedWords": [],
 "value": "https://gpuopen.com/learn/using_matrix_core_amd_rdna4/"
 }
 },
 "_tags": [
 "story",
 "author_ibobev",
 "story_44604311",
 "front_page"
 ],
 "author": "ibobev",
 "children": [
 44631728,
 44634093
 ],
 "created_at": "2025-07-18T13:13:33Z",
 "created_at_i": 1752844413,
 "num_comments": 4,
 "objectID": "44604311",
 "points": 70,
 "story_id": 44604311,
 "title": "Using the Matrix Cores of AMD RDNA 4 architecture GPUs",
 "updated_at": "2025-07-21T13:28:22Z",
 "url": "https://gpuopen.com/learn/using_matrix_core_amd_rdna4/"
 },
 {
 "_highlightResult": {
 "author": {
 "matchLevel": "none",
 "matchedWords": [],
 "value": "gfalcao"
 },
 "title": {
 "matchLevel": "none",
 "matchedWords": [],
 "value": "Debugging Bash Like a Sire (2023)"
 },
 "url": {
 "matchLevel": "none",
 "matchedWords": [],
 "value": "https://blog.brujordet.no/post/bash/debugging_bash_like_a_sire/"
 }
 },
 "_tags": [
 "story",
 "author_gfalcao",
 "story_44592797",
 "front_page"
 ],
 "author": "gfalcao",
 "children": [
 44593153,
 44632499,
 44632637,
 44632959,
 44633203,
 44633252,
 44633906,
 44633987,
 44634348,
 44634690
 ],
 "created_at": "2025-07-17T12:51:28Z",
 "created_at_i": 1752756688,
 "num_comments": 32,
 "objectID": "44592797",
 "points": 62,
 "story_id": 44592797,
 "title": "Debugging Bash Like a Sire (2023)",
 "updated_at": "2025-07-21T13:29:07Z",
 "url": "https://blog.brujordet.no/post/bash/debugging_bash_like_a_sire/"
 },
 {
 "_highlightResult": {
 "author": {
 "matchLevel": "none",
 "matchedWords": [],
 "value": "pseudolus"
 },
 "title": {
 "matchLevel": "none",
 "matchedWords": [],
 "value": "NIH limits scientists to six applications per year"
 },
 "url": {
 "matchLevel": "none",
 "matchedWords": [],
 "value": "https://www.science.org/content/article/fearful-ai-generated-grant-proposals-nih-limits-scientists-six-applications-year"
 }
 },
 "_tags": [
 "story",
 "author_pseudolus",
 "story_44633562",
 "front_page"
 ],
 "author": "pseudolus",
 "children": [
 44633731,
 44633773,
 44633796,
 44633799,
 44633840,
 44633879,
 44633966,
 44633969,
 44633993,
 44634002,
 44634071
 ],
 "created_at": "2025-07-21T10:23:40Z",
 "created_at_i": 1753093420,
 "num_comments": 61,
 "objectID": "44633562",
 "points": 42,
 "story_id": 44633562,
 "title": "NIH limits scientists to six applications per year",
 "updated_at": "2025-07-21T13:29:07Z",
 "url": "https://www.science.org/content/article/fearful-ai-generated-grant-proposals-nih-limits-scientists-six-applications-year"
 },
 {
 "_highlightResult": {
 "author": {
 "matchLevel": "none",
 "matchedWords": [],
 "value": "RGBCube"
 },
 "title": {
 "matchLevel": "none",
 "matchedWords": [],
 "value": "Perl Versioning Scheme and Gentoo"
 },
 "url": {
 "matchLevel": "none",
 "matchedWords": [],
 "value": "https://wiki.gentoo.org/wiki/Project:Perl/Version-Scheme"
 }
 },
 "_tags": [
 "story",
 "author_RGBCube",
 "story_44619709",
 "front_page"
 ],
 "author": "RGBCube",
 "children": [
 44633749,
 44633907,
 44634562,
 44634774
 ],
 "created_at": "2025-07-19T21:44:30Z",
 "created_at_i": 1752961470,
 "num_comments": 26,
 "objectID": "44619709",
 "points": 41,
 "story_id": 44619709,
 "title": "Perl Versioning Scheme and Gentoo",
 "updated_at": "2025-07-21T13:29:07Z",
 "url": "https://wiki.gentoo.org/wiki/Project:Perl/Version-Scheme"
 }
 ],
 "hitsPerPage": 20,
 "nbHits": 30,
 "nbPages": 2,
 "page": 0,
 "params": "tags=front_page&advancedSyntax=true&analyticsTags=backend",
 "processingTimeMS": 2,
 "processingTimingsMS": {},
 "query": "",
 "serverTimeMS": 2
 }
 */
