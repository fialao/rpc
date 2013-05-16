SimpleCov.start do
  add_filter 'spec'

  add_group 'RPC' do |src_file|
    File.basename(src_file.filename).match /^rpc/
  end
  add_group 'Core extensions', 'lib/rpc/ext'
end
