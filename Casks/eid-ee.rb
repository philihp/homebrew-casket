cask 'eid-ee' do
  version '20.01.0.1856'
  sha256 'a29a20163bb3445c91d12fa76cfabda8d8057f7b96ec4bc1c1a97ffd0c706ce5'

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
