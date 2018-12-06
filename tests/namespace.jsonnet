local n = import 'namespaces.libsonnet';

{
  ns: std.map(n.namespace, ['detailed', 'small', 'medium', 'large']),
  detailed1RQ: n.computeResourceQuota('detailed', 'test1', 10, '64Gi', 100, '128Gi', 10, '64Gi'),
  smallRQ: n.smallComputeResourceQuota('small'),
  mediumRQ: n.mediumComputeResourceQuota('medium'),
  largeRQ: n.largeComputeResourceQuota('large'),
}
