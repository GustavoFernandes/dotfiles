let environments = {
    cmd: {
        out: '@echo off\n\n',
        filename: 'aliases.cmd',
        writeAlias: function(alias, value) {
            value = value.replace(/&/g, '$T'); // replace all ampersands with command separator $T
            this.out += `DOSKEY ${alias}=${value} $*\n`;
        }
    },
    powershell: {
        out: '',
        filename: 'aliases.ps1',
        writeAlias: function(alias, value) {
            let functionName = `alias-${alias}`;
            this.out += `function ${functionName} { ${value} $args }\r\n` +
                        `Set-Alias -Name ${alias} -Value ${functionName}\r\n`;
        }
    },
    unix: {
        out: '',
        filename: 'unix',
        writeAlias: function(alias, value) {
            this.out += `alias ${alias}='${value}'\n`;
        }
    }
};

let fs = require('fs');
let aliases = require('./aliases.json');

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
