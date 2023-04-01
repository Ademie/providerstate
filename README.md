#provider

#stateful widget: state management was first carried out using stateful widget. 
However, there is a flaw, when you share state between home.dart (previous) and horizontal.dart(latter).
If the state is updated in (previous), then move to (latter), the state is persisted in (latter). 

But if you update the state in (latter) and go back to (previous), the state is not persisted. 
To solve this, you can use any of the state management libraries. 

However, I'm using Provider.



The provider class created (ListProvider), uses inheritance to extend the ChangeNotifier class...

The entire application listens to data changes and uses data from the (ListProvider) by having either a (SingleProvider) or (MultiProvider) wrapping over the entry point of the application i.e (MaterialApp) in main.dart