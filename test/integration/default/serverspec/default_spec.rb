require 'spec_helper'

describe 'cas_robots::default' do
    describe file('/tmp/robots.txt') do
        it { should exist }
        it { should be_owned_by 'root' }
        it { should be_grouped_into 'root' }
        it { should be_mode 644 }
        its(:content) { should include 'User-agent: *' }
        its(:content) { should include 'Disallow: example/directory' }
        its(:content) { should include 'Sitemap: https://www.example.com/sitemap.xml' }
    end

    describe file('/tmp/example-robots.txt') do
        it { should exist }
        it { should be_owned_by 'root' }
        it { should be_grouped_into 'root' }
        it { should be_mode 644 }
        its(:content) { should include 'User-agent: *' }
        its(:content) { should include 'Disallow: /' }
    end
end
