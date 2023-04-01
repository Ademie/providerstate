#provider

#stateful widget: state management was first carried out using stateful widget. 
However, there is a flaw, when you share state between home.dart (previous) and horizontal.dart(latter).
If the state is updated in (previous), then move to (latter), the state is persisted in (latter). 

But if you update the state in (latter) and go back to (previous), the state is not persisted. 
To solve this, you can use any of the state management libraries. 

However, I'm using Provider.