control "ansible-role-nano" do
  title "ansible-role-nano role check"

  describe file('/etc/nanorc') do
    it { should exist }
    it { should be_file }
    it { should be_owned_by 'root' }
    it { should be_grouped_into 'root' }
    it { should be_readable.by_user('root') }
    its('content') { should match(%r{set const}) }
  end

end
