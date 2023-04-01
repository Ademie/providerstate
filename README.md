#provider

#stateful widget: state management was first carried out using stateful widget. 
However, there is a flaw, when you share state between home.dart (previous) and horizontal.dart(latter).
If the state is updated in (previous), then move to (latter), the state is persisted in (latter). 

But if you update the state in (latter) and go back to (previous), the state is not persisted. 
To solve this, you can use any of the state management libraries. 

However, I'm using Provider.



The provider class created (ListProvider), uses inheritance to extend the ChangeNotifier class...

The entire application listens to data changes and uses data from the (ListProvider) by having either a (SingleProvider) or (MultiProvider) wrapping over the entry point of the application i.e (MaterialApp) in main.dart.

Register your provider using any of these:
    Provider
    ListenableProvider
    ChangeNotifierProvider
    ValueListenableProvider
    StreamProvider
    FutureProvider etc
    https://pub.dev/packages/provider#existing-providers 

For this project I used (ChangeNotifierProvider) to register the (ListProvider) I created.


After defining your state globally, to use it in a specific widget/place,
wrap that widget with (Consumer), while calling the type <ListProvider>

Note don't forget to notifyListeners in your (ListProvider)
