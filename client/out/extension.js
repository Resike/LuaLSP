"use strict";
Object.defineProperty(exports, "__esModule", { value: true });
const languageserver = require("./languageserver");
const luadoc = require("../3rd/vscode-lua-doc/extension");
function activate(context) {
    languageserver.activate(context);
    let luadocContext = {
        subscriptions: context.subscriptions,
        workspaceState: context.workspaceState,
        globalState: context.globalState,
        extensionPath: context.extensionPath + '/client/3rd/vscode-lua-doc',
        asAbsolutePath: context.asAbsolutePath,
        storagePath: context.storagePath,
        globalStoragePath: context.globalStoragePath,
        logPath: context.logPath,
        extensionUri: context.extensionUri,
        ViewType: 'lua-doc',
        OpenCommand: 'extension.lua.doc',
    };
    luadoc.activate(luadocContext);
}
exports.activate = activate;
function deactivate() {
    languageserver.deactivate();
}
exports.deactivate = deactivate;
//# sourceMappingURL=extension.js.map