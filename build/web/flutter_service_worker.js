'use strict';
const MANIFEST = 'flutter-app-manifest';
const TEMP = 'flutter-temp-cache';
const CACHE_NAME = 'flutter-app-cache';

const RESOURCES = {"assets/AssetManifest.bin": "d053e2d6cd824cc59c6e6f9331711ab2",
"assets/AssetManifest.bin.json": "109f27f26da3746bbdc74acc1c1d31a1",
"assets/AssetManifest.json": "652ef95ce4406aa361a51d2b49f1f8ce",
"assets/assets/images/about/about.png": "80164b21b72ad409e8f9024f8c30ace0",
"assets/assets/images/about/hse.png": "1a1a10538f0f27e23f1d6ba137ee731e",
"assets/assets/images/about/org.png": "97954bd81ec5712c75803a85efb17ae9",
"assets/assets/images/about/safety.png": "3725e07549914cbb07538d0eb67d110c",
"assets/assets/images/automation/automation1.png": "7c961c7e984c35439cc8c1df9531d3df",
"assets/assets/images/automation/automation2.jpg": "ec910a27cf314dc6a02a2f660c3b9f9a",
"assets/assets/images/automation/automation3.jpg": "d1b8590d9c9ad89d60d0a5ffc80690cd",
"assets/assets/images/automation/automation4.png": "ad47e9be0f99bb6c118df3d7ef758f33",
"assets/assets/images/automation/automation5.jpg": "2187d5539e94907bce7e7cb60db48c7a",
"assets/assets/images/electrical/slider1.jpg": "e9d9e142e537c74edb603a0287294beb",
"assets/assets/images/electrical/slider2.jpg": "ef6e987fa1d95b709495e59374186c47",
"assets/assets/images/electrical/slider3.jpg": "3b5159f6013a4a55d9f666162a891d90",
"assets/assets/images/electrical/slider4.png": "e66ec6b457dbfdc98d33579753cdde79",
"assets/assets/images/electrical/slider5.jpg": "a7a16c5fa514747ff3dd02c21e9ee94f",
"assets/assets/images/electrical/slider6.jpg": "d624509dcf397f6b562e968fccb2a9f3",
"assets/assets/images/header/logo.png": "287da8c4ca97cad8fd896df3c2676ddd",
"assets/assets/images/manufacturers/ABB.png": "8a272f11a6b18127a5e578a23ab7e77a",
"assets/assets/images/manufacturers/audco_logo.jpg": "d636b1c51b273d5bc410fa62734927de",
"assets/assets/images/manufacturers/nirmal_logo.png": "ffce83a8196f34b31cd6cfdf111505f2",
"assets/assets/images/manufacturers/OMC.jpg": "f51f95f88689957469cf383b4db58e7e",
"assets/assets/images/manufacturers/schneider.png": "f2b8541aaf7aa93f4da3db715061e7ef",
"assets/assets/images/manufacturers/siemens_logo.png": "dbf2f5c5481d7febdce58964649dae04",
"assets/assets/images/manufacturers/VEGA.png": "9120622c21fa68761a7630ddbc8b52d1",
"assets/assets/images/manufacturers/wika_logo.png": "75410ccb05d67d89770b9f62718d21ed",
"assets/assets/images/slider/home-slider4.jpg": "400eaed4e8c9b705b24793e7189e0b9c",
"assets/assets/images/solution/steam1.png": "017d99df5acaf7a30da68ace64d9e3dc",
"assets/assets/images/solution/steam2.png": "03b0ffbc921f296a78ef08fe982daf4f",
"assets/assets/images/solution/steam3.jpg": "3abdb2ff97744521df8da25827f80e58",
"assets/assets/images/solution/tank_1.jpg": "244d007144d6ddd7559ad27e9761c9c6",
"assets/assets/images/solution/tank_2.jpg": "e63dfdcaf71608570e1287b692ad2b9a",
"assets/assets/images/solution/tank_3.png": "c3af8e22e62636408968113687dfc5ee",
"assets/assets/images/solution/tank_4.png": "b4c04e02658a50acef7f87f3214a1e7d",
"assets/FontManifest.json": "dc3d03800ccca4601324923c0b1d6d57",
"assets/fonts/MaterialIcons-Regular.otf": "b4710c09fab390110b2aff70e38dcd93",
"assets/NOTICES": "6265024af7350cf69b53a59a383c07b0",
"assets/packages/cupertino_icons/assets/CupertinoIcons.ttf": "e986ebe42ef785b27164c36a9abc7818",
"assets/shaders/ink_sparkle.frag": "ecc85a2e95f5e9f53123dcaf8cb9b6ce",
"canvaskit/canvaskit.js": "66177750aff65a66cb07bb44b8c6422b",
"canvaskit/canvaskit.js.symbols": "48c83a2ce573d9692e8d970e288d75f7",
"canvaskit/canvaskit.wasm": "1f237a213d7370cf95f443d896176460",
"canvaskit/chromium/canvaskit.js": "671c6b4f8fcc199dcc551c7bb125f239",
"canvaskit/chromium/canvaskit.js.symbols": "a012ed99ccba193cf96bb2643003f6fc",
"canvaskit/chromium/canvaskit.wasm": "b1ac05b29c127d86df4bcfbf50dd902a",
"canvaskit/skwasm.js": "694fda5704053957c2594de355805228",
"canvaskit/skwasm.js.symbols": "262f4827a1317abb59d71d6c587a93e2",
"canvaskit/skwasm.wasm": "9f0c0c02b82a910d12ce0543ec130e60",
"canvaskit/skwasm.worker.js": "89990e8c92bcb123999aa81f7e203b1c",
"favicon.png": "5dcef449791fa27946b3d35ad8803796",
"flutter.js": "f393d3c16b631f36852323de8e583132",
"flutter_bootstrap.js": "2150713c3dbdd9562a97a45bf11670cc",
"icons/Icon-192.png": "ac9a721a12bbc803b44f645561ecb1e1",
"icons/Icon-512.png": "96e752610906ba2a93c65f8abe1645f1",
"icons/Icon-maskable-192.png": "c457ef57daa1d16f64b27b786ec2ea3c",
"icons/Icon-maskable-512.png": "301a7604d45b3e739efc881eb04896ea",
"index.html": "93b826fb2d5df95f1b1a907323ab71dc",
"/": "93b826fb2d5df95f1b1a907323ab71dc",
"main.dart.js": "4c68f783c13f26c5ac85c4e91db070a1",
"manifest.json": "fc778832f8c47c76fe29b77b916d712d",
"version.json": "3177a24b25f0c77dc2efc719a87bad3f"};
// The application shell files that are downloaded before a service worker can
// start.
const CORE = ["main.dart.js",
"index.html",
"flutter_bootstrap.js",
"assets/AssetManifest.bin.json",
"assets/FontManifest.json"];

// During install, the TEMP cache is populated with the application shell files.
self.addEventListener("install", (event) => {
  self.skipWaiting();
  return event.waitUntil(
    caches.open(TEMP).then((cache) => {
      return cache.addAll(
        CORE.map((value) => new Request(value, {'cache': 'reload'})));
    })
  );
});
// During activate, the cache is populated with the temp files downloaded in
// install. If this service worker is upgrading from one with a saved
// MANIFEST, then use this to retain unchanged resource files.
self.addEventListener("activate", function(event) {
  return event.waitUntil(async function() {
    try {
      var contentCache = await caches.open(CACHE_NAME);
      var tempCache = await caches.open(TEMP);
      var manifestCache = await caches.open(MANIFEST);
      var manifest = await manifestCache.match('manifest');
      // When there is no prior manifest, clear the entire cache.
      if (!manifest) {
        await caches.delete(CACHE_NAME);
        contentCache = await caches.open(CACHE_NAME);
        for (var request of await tempCache.keys()) {
          var response = await tempCache.match(request);
          await contentCache.put(request, response);
        }
        await caches.delete(TEMP);
        // Save the manifest to make future upgrades efficient.
        await manifestCache.put('manifest', new Response(JSON.stringify(RESOURCES)));
        // Claim client to enable caching on first launch
        self.clients.claim();
        return;
      }
      var oldManifest = await manifest.json();
      var origin = self.location.origin;
      for (var request of await contentCache.keys()) {
        var key = request.url.substring(origin.length + 1);
        if (key == "") {
          key = "/";
        }
        // If a resource from the old manifest is not in the new cache, or if
        // the MD5 sum has changed, delete it. Otherwise the resource is left
        // in the cache and can be reused by the new service worker.
        if (!RESOURCES[key] || RESOURCES[key] != oldManifest[key]) {
          await contentCache.delete(request);
        }
      }
      // Populate the cache with the app shell TEMP files, potentially overwriting
      // cache files preserved above.
      for (var request of await tempCache.keys()) {
        var response = await tempCache.match(request);
        await contentCache.put(request, response);
      }
      await caches.delete(TEMP);
      // Save the manifest to make future upgrades efficient.
      await manifestCache.put('manifest', new Response(JSON.stringify(RESOURCES)));
      // Claim client to enable caching on first launch
      self.clients.claim();
      return;
    } catch (err) {
      // On an unhandled exception the state of the cache cannot be guaranteed.
      console.error('Failed to upgrade service worker: ' + err);
      await caches.delete(CACHE_NAME);
      await caches.delete(TEMP);
      await caches.delete(MANIFEST);
    }
  }());
});
// The fetch handler redirects requests for RESOURCE files to the service
// worker cache.
self.addEventListener("fetch", (event) => {
  if (event.request.method !== 'GET') {
    return;
  }
  var origin = self.location.origin;
  var key = event.request.url.substring(origin.length + 1);
  // Redirect URLs to the index.html
  if (key.indexOf('?v=') != -1) {
    key = key.split('?v=')[0];
  }
  if (event.request.url == origin || event.request.url.startsWith(origin + '/#') || key == '') {
    key = '/';
  }
  // If the URL is not the RESOURCE list then return to signal that the
  // browser should take over.
  if (!RESOURCES[key]) {
    return;
  }
  // If the URL is the index.html, perform an online-first request.
  if (key == '/') {
    return onlineFirst(event);
  }
  event.respondWith(caches.open(CACHE_NAME)
    .then((cache) =>  {
      return cache.match(event.request).then((response) => {
        // Either respond with the cached resource, or perform a fetch and
        // lazily populate the cache only if the resource was successfully fetched.
        return response || fetch(event.request).then((response) => {
          if (response && Boolean(response.ok)) {
            cache.put(event.request, response.clone());
          }
          return response;
        });
      })
    })
  );
});
self.addEventListener('message', (event) => {
  // SkipWaiting can be used to immediately activate a waiting service worker.
  // This will also require a page refresh triggered by the main worker.
  if (event.data === 'skipWaiting') {
    self.skipWaiting();
    return;
  }
  if (event.data === 'downloadOffline') {
    downloadOffline();
    return;
  }
});
// Download offline will check the RESOURCES for all files not in the cache
// and populate them.
async function downloadOffline() {
  var resources = [];
  var contentCache = await caches.open(CACHE_NAME);
  var currentContent = {};
  for (var request of await contentCache.keys()) {
    var key = request.url.substring(origin.length + 1);
    if (key == "") {
      key = "/";
    }
    currentContent[key] = true;
  }
  for (var resourceKey of Object.keys(RESOURCES)) {
    if (!currentContent[resourceKey]) {
      resources.push(resourceKey);
    }
  }
  return contentCache.addAll(resources);
}
// Attempt to download the resource online before falling back to
// the offline cache.
function onlineFirst(event) {
  return event.respondWith(
    fetch(event.request).then((response) => {
      return caches.open(CACHE_NAME).then((cache) => {
        cache.put(event.request, response.clone());
        return response;
      });
    }).catch((error) => {
      return caches.open(CACHE_NAME).then((cache) => {
        return cache.match(event.request).then((response) => {
          if (response != null) {
            return response;
          }
          throw error;
        });
      });
    })
  );
}
