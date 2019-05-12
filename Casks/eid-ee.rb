cask 'eid-ee' do
  version '19.2.0.1822'
  sha256 'aab747d3d8a8a523077b323f6fba38a03e3f420214750405cfb7af31e81ff60b'

  url "https://installer.id.ee/media/osx/Open-EID_#{version}.dmg"
  name 'Electronic identity card software for Estonia'
  name 'eID Estonia'
  homepage 'https://installer.id.ee/?lang=eng'

  pkg 'Open-EID.pkg'

  uninstall script: {
                      executable: 'uninstall.sh',
                      input:      ['y'],
                      sudo:       true,
                    }

  caveats <<~EOS
    DigiDoc3 Client and ID-card Utility are available in the App Store:
      https://appstore.com/mac/ria
  EOS
end
