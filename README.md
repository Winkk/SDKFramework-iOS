To deploy a new version of the SDK:

1. Open `WinkkSDK/WinkkSDK.xcodeproj` located in `Winkk SDK iOS` folder (source codes project located in SVN repository).

2. Launch archivation.

3. After the completed archivation a folder with symlink to framework will appear.

4. Click on it with right mouse button and select "Show Origin".

5. Put the compiled framework into this repository. Check if it contains the following architectures: `x86_64`, `armv7`, `arm64` by executing `lipo -info WinkkSDK.framework/WinkkSDK`.

6. Make sure the framework is added: `git add WinkkSDK.framework`.

7. Perform commit with some update message: `git commit -m "Updated WinkkSDK.framework"`.

8. Tag a new release with the same version to be set in podspec: `git tag -a 0.0.1 -m "Version 0.0.1"`.

9. Update podspec file depending on your needs.

10. Push everything:
```
git push origin master
git push origin —-tags
```

11. Register an account by running the following, entering your full name and e-mail address:
```
pod trunk register admin@winkk.com winkk
```

12. Run the following command in the same directory as
the .podspec to publish it to the CocoaPods repository:
```
pod trunk push WinkkSDK.podspec --allow-warnings
```

