project(
  'lfi-rewriter',
  ['c'],
  default_options: ['warning_level=1', 'buildtype=release']
)

argp = subproject('argp').get_variable('argp_dep')
go = find_program('go')

subdir('src')
subdir('test')
