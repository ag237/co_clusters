{
  namespace(name, defaultCpu=1, defaultMem='256Mi'): {
    apiVersion: 'v1',
    kind: 'Namespace',
    metadata: {
      name: name,
    },
    spec: {
      limits: {
        default: {
          cpu: defaultCpu,
          memory: defaultMem,
        },
        defaultRequest: {
          cpu: 0.5,
          memory: '128Mi',
        },
        type: 'Container',
      },
    }, 
  },
}
