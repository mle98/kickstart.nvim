local config = {

  cmd = { '/home/mat/.local/share/nvim/mason/packages/jdtls/bin/jdtls', '--java-executable', '/usr/lib/jvm/jdk-23.0.1/bin/java' },
  root_dir = require('jdtls.setup').find_root { '.git', 'mvnw', 'gradlew', 'pom.xml', 'build.gradle' },
  settings = {
    java = {},
  },
}

require('jdtls').start_or_attach(config)
