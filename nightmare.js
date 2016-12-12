let Nightmare = require('nightmare');
let harPlugin = require('nightmare-har-plugin');

harPlugin.install(Nightmare);

let options = {
  waitTimeout: 1000
};

let nightmare = Nightmare(Object.assign(harPlugin.getDevtoolsOptions(), options));

let onContentLoad = [];
let onLoad = [];

let url = process.argv[2];

if (!url) {
    process.exit(1);
}

nightmare
    .viewport(1024, 768)
    .waitForDevtools()
    .goto(url)
    .wait('body')
    .getHAR()
    .end()
    .then((result) => {
        let onLoad = result.pages[0].pageTimings.onLoad;
        console.log(onLoad);
     });
