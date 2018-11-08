local mm = import 'namespaces.libsonnet';
{
  testing: mm.namespace('testing'),
  testing2: mm.namespace('testing2', 4, '1028Mi'),
}
