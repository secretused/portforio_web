'use strict';
const MANIFEST = 'flutter-app-manifest';
const TEMP = 'flutter-temp-cache';
const CACHE_NAME = 'flutter-app-cache';
const RESOURCES = {
  "main.dart.js": "23ac8aac0bfcd732e1a2e7519f5f0fac",
"canvaskit/canvaskit.wasm": "bf50631470eb967688cca13ee181af62",
"canvaskit/profiling/canvaskit.wasm": "95a45378b69e77af5ed2bc72b2209b94",
"canvaskit/profiling/canvaskit.js": "38164e5a72bdad0faa4ce740c9b8e564",
"canvaskit/canvaskit.js": "2bc454a691c631b07a9307ac4ca47797",
"manifest.json": "314a2993bf7a8a606a639502e9b9b2c9",
"icons/Icon-maskable-512.png": "301a7604d45b3e739efc881eb04896ea",
"icons/Icon-maskable-192.png": "c457ef57daa1d16f64b27b786ec2ea3c",
"icons/Icon-512.png": "96e752610906ba2a93c65f8abe1645f1",
"icons/Icon-192.png": "ac9a721a12bbc803b44f645561ecb1e1",
"flutter.js": "f85e6fb278b0fd20c349186fb46ae36d",
"assets/AssetManifest.json": "d923e22d00d0ed0d7822ab8df50a6058",
"assets/shaders/ink_sparkle.frag": "649a9e0c077e69b83d585e4c89d16f04",
"assets/packages/cupertino_icons/assets/CupertinoIcons.ttf": "6d342eb68f170c97609e9da345464e5e",
"assets/FontManifest.json": "dc3d03800ccca4601324923c0b1d6d57",
"assets/fonts/MaterialIcons-Regular.otf": "95db9098c58fd6db106f1116bae85a0b",
"assets/assets/pochipochi/pochipochi_stage3.png": "c9484b9a61f1a3c2206620424cf87b5c",
"assets/assets/pochipochi/pochipochi_notion.png": "9bfcd41ab23bf6e2a257d6ab9db5d0d4",
"assets/assets/pochipochi/pochipochi_interview3.png": "8888329918322308f25f19e609cbabf2",
"assets/assets/pochipochi/pochipochi_youtube.png": "d2d0c76f18565834f043777806b5e7be",
"assets/assets/pochipochi/pochipochi_persona2.png": "7e6579db0e765914ec18d437c26e5e4f",
"assets/assets/pochipochi/pochipochi_overview.png": "6d187510cdb8ee4ca23afb62823013be",
"assets/assets/pochipochi/pochipochi_interview2.png": "c5b5af8a8d2113b01d0d6fa9502bce43",
"assets/assets/pochipochi/pochipochi_persona1.png": "4e7768d50e73ca416765e9c60bdc1b1b",
"assets/assets/pochipochi/pochipochi_timer.png": "d0cc13f5cdab6ce59d3dec67624f5d0e",
"assets/assets/pochipochi/pochipochi_iconList.png": "256f7b03a3277189033176edd41da320",
"assets/assets/pochipochi/pochipochi_concept.png": "17d0b3afb3ba1a7b3a6e015d77c329b4",
"assets/assets/pochipochi/pochipochi_setting.png": "cd9e7b1e156dbbbbb6adc358e7e164b8",
"assets/assets/pochipochi/pochipochi_stage2.png": "1160ee29c585d70f1a5bc1e22fc2adcc",
"assets/assets/pochipochi/pochipochi_movieEdit.png": "a4572a3baeb67b4b90dc725960743afa",
"assets/assets/pochipochi/pochipochi_stage1.png": "17d0b3afb3ba1a7b3a6e015d77c329b4",
"assets/assets/pochipochi/pochipochi_premiumPlan.png": "f23f58ed14212971f1aea8ea98c2c124",
"assets/assets/pochipochi/pochipochi_iconEdit.png": "d3ce841c880fe138f7f544668022c8b9",
"assets/assets/pochipochi/pochipochi_interview1.png": "31e80a7de02570a99c92ffe592a2600b",
"assets/assets/shusseki/shusseki_navigation.png": "50ec9e2f89e74328bc79a33c8bd5b1cb",
"assets/assets/shusseki/shusseki_app_attendance.png": "cbe2314112cabd3e068064e2ad666bac",
"assets/assets/shusseki/shusseki_attendance.png": "76c6d15f79b7f409da0ef44fd2265b5c",
"assets/assets/shusseki/shusseki_overview2.png": "0f6a6336e9e2b7d88273ee3dacd0ddd9",
"assets/assets/shusseki/shusseki_community.png": "311d20d241b0c285d8169f29c5557d38",
"assets/assets/shusseki/shusseki_mockup.gif": "8de252120772ecea852c1df69d9ca6f6",
"assets/assets/shusseki/shusseki_app_mypage.png": "dcd74893572ad146548777b49b7d98ff",
"assets/assets/shusseki/shusseki_userflow.png": "441bb50ff1db601ebccdc9bcd08d0e42",
"assets/assets/shusseki/shusseki_member.png": "8685f1a176a5a9691f3ef98bad1e6f0f",
"assets/assets/shusseki/mockup_frame.png": "25840663fb4679b42f5e03eb9e3b5282",
"assets/assets/shusseki/shusseki_modeling.png": "e9edb7a07725817d4f38bf90bc1856c6",
"assets/assets/shusseki/shusseki_app_management.png": "2d6a6c7b091a8c2d487403ec25090034",
"assets/assets/shusseki/shusseki_concept.png": "8a9744663f24ea3213899c1284968094",
"assets/assets/shusseki/shusseki_icon.png": "b305c0f56aa58c6b0e58e5c1349ee7e4",
"assets/assets/shusseki/shusseki_profile.png": "92cb954d7f5428c64b206a1110778772",
"assets/assets/shusseki/shusseki_app_user.png": "2ab1909042d7f6781a1e96a94882d460",
"assets/assets/shusseki/shusseki_overview.png": "cd837454fd388821361fbce62d4103ce",
"assets/assets/shusseki/shusseki_app_calender.png": "24c313c3a7cde72bd96eebd4022b1018",
"assets/assets/shusseki/shusseki_overview3.png": "ac6aad88ece457d2bbb7b74796c28259",
"assets/assets/shusseki/shusseki_overview1.png": "cd837454fd388821361fbce62d4103ce",
"assets/assets/shusseki/shusseki_app_qr.png": "f3d13596c51fe22be6d66310c6d11a0f",
"assets/assets/about/pochipochi_display.png": "f3e55294e0d75a231528e3e34057cdbe",
"assets/assets/about/otherworks_display.png": "bb0988e4664a71d7bff3e54ee24852c2",
"assets/assets/about/shusseki_display.png": "b77a78f4f01c25d2bc8e0bdd9fec09b0",
"assets/assets/about/mobile_mockup2.png": "8b77cf488cd7e67a9130861a95c298f6",
"assets/assets/about/profile_image.jpeg": "0ad5a4ffc137930ef3bc6cb2baf39def",
"assets/assets/about/tomony_display.png": "fbd47b81e4c67d90ea463748eb40768f",
"assets/assets/about/mobile_mockup1.png": "a6a838d9f0c6cf31c99a8a82d53bc379",
"assets/assets/about/display_mockup.png": "1a61874cb0f3ab6bb3b99db2d580ecd1",
"assets/assets/otherworks/otherworks_nft1.jpeg": "4149ac448abf71c40a06f952b09d8b12",
"assets/assets/otherworks/otherworks_contest2.jpeg": "1c246a70ba1915be8cd0438e01ceb5b4",
"assets/assets/otherworks/otherworks_nft2.jpeg": "3b6a20e6695efb1728d5b3a25f6742e9",
"assets/assets/otherworks/otherworks_contest1.png": "ab1f1a0f5a4b51a8873d8bd65d32d295",
"assets/assets/otherworks/otherworks_kindle.jpeg": "6622f6dcd23a6809b0779a6bfe95f555",
"assets/assets/AssetManifest.json": "2efbb41d7877d10aac9d091f58ccd7b9",
"assets/assets/FontManifest.json": "dc3d03800ccca4601324923c0b1d6d57",
"assets/assets/icon/flutter.svg": "c7c943611b8d3221777e288f5b0fad34",
"assets/assets/icon/figma_icon3.png": "d4c838f17e2a3fc460b4ba87b82e849f",
"assets/assets/icon/github_icon.png": "d9a81c1c752f75576083d18e179bc448",
"assets/assets/icon/figma_icon1.png": "d4c838f17e2a3fc460b4ba87b82e849f",
"assets/assets/icon/figma_icon2.png": "d4c838f17e2a3fc460b4ba87b82e849f",
"assets/assets/icon/twitter_icon.png": "176f0e167758525edb4854365df756f8",
"assets/assets/icon/qiita_icon.png": "a48d4ab5e06ce4f4c7e751e03b4b6d5a",
"assets/assets/icon/notion_icon.png": "75e8b21b3dc2a76269ce56c7db019fb7",
"assets/assets/icon/python.svg": "63b2e65cd41aa4af6598b944e8b0b26a",
"assets/assets/icon/figma_black.svg": "7f206a7b34f3ab9fd0334fbdb99ae346",
"assets/assets/icon/figma.svg": "eadd22a98ff258da074fe475a56c1cf5",
"assets/assets/tomony/tomony_search_default.png": "7fb1a82c001736bf8405bd63bed93909",
"assets/assets/tomony/tomony_concept.png": "9cb91baf58b4f7ed1e50ab83e267d7e2",
"assets/assets/tomony/tomony_beginner.png": "0ff4bd71885225a6e80814b689675ef2",
"assets/assets/tomony/tomony_search_result.png": "5061c2930779ae0d421411b11d2214fe",
"assets/assets/tomony/tomony_overview.png": "5c690a6c94bc2e36fef8d1fa6241e035",
"assets/assets/tomony/tomony_chip.png": "e0c9b52059aa555fd1473844da35e527",
"assets/assets/tomony/tomony_score.png": "68112c5691c77350efa0e7d93d79fc03",
"assets/assets/tomony/tomony_interview2.png": "a66863227318647f6f7794ab934978a5",
"assets/assets/tomony/tomony_question1.png": "6d24b6a2f5cef0d55386dc0e04994421",
"assets/assets/tomony/tomony_master.png": "0e307defc04d95c4ec78ce464b430a35",
"assets/assets/tomony/tomony_persona.png": "6cc4d86fd406ffedcbaa31b90886cebe",
"assets/assets/tomony/tomony_problem.png": "8598f622f24aa3a23c67a6349d43cc97",
"assets/assets/tomony/tomony_icon.png": "295295cd57ef3197ed6a2c1832318721",
"assets/assets/tomony/tomony_interview1.png": "61495bd9037a199a848c5be0b9ffbf61",
"assets/assets/tomony/tomony_topics.png": "b2122ab2235b5542b2c5d044df7a97d1",
"assets/assets/tomony/tomony_interview3.png": "ebe51a863628bb7d87dc27e2ce2166c1",
"assets/assets/tomony/tomony_question2.png": "d82da8b784041ba7d777ee9ecc224943",
"assets/assets/NOTICES": "f0172b97d20487878545f5c6bdc60f11",
"assets/NOTICES": "8e021c5dcc32d38b4e381c64251af7a6",
"index.html": "1b331b756ae057cdb108f6b1bac48dc6",
"/": "1b331b756ae057cdb108f6b1bac48dc6",
"favicon.png": "5dcef449791fa27946b3d35ad8803796",
"version.json": "cc132570d6d238130e38adc59e1f998d"
};

// The application shell files that are downloaded before a service worker can
// start.
const CORE = [
  "main.dart.js",
"index.html",
"assets/AssetManifest.json",
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
