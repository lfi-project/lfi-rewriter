zydis = subproject('zydis').get_variable('zydis_dep')
fadec = subproject('fadec').get_variable('fadec')

lfi_postlink = executable(
  'lfi-postlink',
  files('amd64.c', 'main.c'),
  dependencies: [zydis, argp, fadec],
  install: true,
)
