import { join } from 'path';
import { extensions, workspace } from 'vscode';

const LUA_PATH = join(
	extensions.getExtension('ardelanyamanel.fivem-esx-intellisense')!
		.extensionPath,
	'plugin.lua',
);

export async function activate() {
	const config = workspace.getConfiguration('Lua');

	const library = config.get('workspace.library');

	if (!Array.isArray(library)) {
		return console.error('library is not an array');
	}

	if (library.includes(LUA_PATH)) {
		return console.warn('plugin.lua already added to library');
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

	await config.update(
		'workspace.library',
		library.filter((f) => f !== LUA_PATH),
		workspace.workspaceFile ? 2 : 1,
	);
}
