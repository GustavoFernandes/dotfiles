let environments = {
    cmd: {
        out: '@echo off\n\n',
        filename: 'aliases.cmd',
        writeAlias: function(alias, value) {
            this.out += `DOSKEY ${alias}=${value}\n`;
        }
    },
    unix: {
        out: 'TODO\n',
        filename: 'unix',
        writeAlias: function(alias, value) {
            // TODO
        }
    }
};

let fs = require('fs');
let aliases = JSON.parse(fs.readFileSync('./aliases.json', 'utf8'));

for (let alias in aliases) {
    let value = aliases[alias];
    if (typeof value === 'object') {
        for (let e in value) {
            environments[e].writeAlias(alias, value[e]);
        }
    } else {
        for (let e in environments) {
            environments[e].writeAlias(alias, value);
        }
    }
}

for (let e in environments) {
    fs.writeFileSync(`./gen/${environments[e].filename}`, environments[e].out);
}
