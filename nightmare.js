//"use strict";

let Nightmare = require('nightmare');
let harPlugin = require('nightmare-har-plugin');
let options = {
  waitTimeout: 3000
};

harPlugin.install(Nightmare);

let nightmare = Nightmare(Object.assign(harPlugin.getDevtoolsOptions(), options));

// expects URL passed in as arg
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
