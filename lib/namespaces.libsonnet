// Supporting Functions

local computeResourceQuota(name, namespace, cpu, memory, limitCpu, limitMemory, requestCpu, requestMemory) = {
  apiVersion: 'v1',
  kind: 'ResourceQuota',
  metadata: {
    name: name,
    namespace: namespace,
  },
  spec: {
    hard: {
      cpu: cpu,
      memory: memory,
      'limits.cpu': limitCpu,
      'limits.memory': limitMemory,
      'requests.cpu': requestCpu,
      'requests.Memory': requestMemory,
    },
  },
};

local defaultResourceQuotaName(namespace) = namespace + '-crq';

local namespace(name) = {
  apiVersion: 'v1',
  kind: 'Namespace',
  metadata: {
    name: name,
  },
};

// Main Library
{
  namespace(name): {
    result: namespace(name),
  },
  computeResourceQuota(name, namespace, cpu, memory, limitCpu, limitMemory, requestCpu, requestMemory): {
    result: computeResourceQuota(name, namespace, cpu, memory, limitCpu, limitMemory, requestCpu, requestMemory),
  },
  smallComputeResourceQuota(namespace): {
    result: computeResourceQuota(defaultResourceQuotaName(namespace), namespace, 2, '2Gi', 2, '2Gi', 1, '1Gi'),
  },
  mediumComputeResourceQuota(namespace): {
    result: computeResourceQuota(defaultResourceQuotaName(namespace), namespace, 5, '5Gi', 10, '10Gi', 5, '5Gi'),
  },
  largeComputeResourceQuota(namespace): {
    result: computeResourceQuota(defaultResourceQuotaName(namespace), namespace, 10, '10Gi', 100, '100Gi', 10, '10Gi'),
  },
}
