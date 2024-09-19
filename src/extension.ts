import { join } from 'path';
import { extensions, workspace } from 'vscode';

const LUA_PATH = join(
	extensions.getExtension('ardelanyamanel.fivem-esx-snippets')!.extensionPath,
	'plugin.lua',
);

export async function activate() {
	const config = workspace.getConfiguration('Lua');

	const library = config.get('workspace.library');

	if (!Array.isArray(library)) {
		return console.error('library is not an array');
	}

	await config.update(
		'workspace.library',
		[...library, LUA_PATH],
		workspace.workspaceFile ? 2 : 1,
	);
}

export async function deactivate() {
	const config = workspace.getConfiguration('Lua');

	const library = config.get('workspace.library');

	if (!Array.isArray(library)) {
		return console.error('library is not an array');
	}

	library.splice(library.indexOf(LUA_PATH), 1);

	await config.update(
		'workspace.library',
		library,
		workspace.workspaceFile ? 2 : 1,
	);
}