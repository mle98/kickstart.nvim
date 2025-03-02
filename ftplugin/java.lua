local config = {

  cmd = { '/home/mat/.local/share/nvim/mason/packages/jdtls/bin/jdtls', '--java-executable', '/usr/lib/jvm/jdk-23.0.1/bin/java' },
  root_dir = require('jdtls.setup').find_root { '.git', 'mvnw', 'gradlew', 'pom.xml', 'build.gradle' },
  settings = {
    java = {},
  },
}

config['init_options'] = {
  bundles = {
    vim.fn.glob(vim.fn.expand '$HOME/programs/java-debug-main/com.microsoft.java.debug.plugin/target/com.microsoft.java.debug.plugin-*jar', 1),
  },
}

require('jdtls').start_or_attach(config)
