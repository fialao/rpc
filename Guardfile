# Rspec
guard :rspec, :cli => "--color --format progress", :all_on_start => true do
  watch(%r{^lib/(.+)\.rb$})     { |m| p "spec/unit/#{m[1].sub('rpc/', '')}.spec.rb" }
  watch('spec/spec_helper.rb')  { 'spec' }
  watch(%r{^spec/.+\.spec\.rb$})
end

# YARD
guard 'yard', :port => '8808' do
  watch(%r{lib/.+\.rb})
end
