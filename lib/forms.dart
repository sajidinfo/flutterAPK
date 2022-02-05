import 'package:flutter/cupertino.dart';

class CupertinoTextFieldDemo extends StatelessWidget {
  onPressed(){

  }
  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(

      navigationBar: const CupertinoNavigationBar(
        leading: CupertinoNavigationBarBackButton(
          color: CupertinoColors.label,
        ),
        automaticallyImplyLeading: false,
        middle: Text("Cupertino Form"),
      ),
      child: SafeArea(
        child: ListView(
          restorationId: 'text_field_demo_list_view',
          padding: const EdgeInsets.all(16),
          children: [
            const Padding(
              padding: EdgeInsets.symmetric(vertical: 8),
              child: CupertinoTextField(
                textInputAction: TextInputAction.next,
                restorationId: 'email_address_text_field',
                placeholder: "Enter your email",
                keyboardType: TextInputType.emailAddress,
                clearButtonMode: OverlayVisibilityMode.editing,
                autocorrect: false,
              ),
            ),
            const Padding(
              padding: EdgeInsets.symmetric(vertical: 8),
              child: CupertinoTextField(
                textInputAction: TextInputAction.next,
                restorationId: 'login_password_text_field',
                placeholder: "LoginPassword",
                clearButtonMode: OverlayVisibilityMode.editing,
                obscureText: true,
                autocorrect: false,
              ),
            ),
            const CupertinoTextField(
              textInputAction: TextInputAction.done,
              restorationId: 'pin_number_text_field',
              prefix: Icon(
                CupertinoIcons.padlock_solid,
                size: 28,
              ),
              padding: EdgeInsets.symmetric(horizontal: 6, vertical: 12),
              clearButtonMode: OverlayVisibilityMode.editing,
              keyboardType: TextInputType.number,
              decoration: BoxDecoration(
                border: Border(
                  bottom: BorderSide(
                    width: 0,
                    color: CupertinoColors.inactiveGray,
                  ),
                ),
              ),
              placeholder: "TextFieldPIN",
            ),
            const SizedBox(height: 10,),
            CupertinoButton.filled(child: const Text("Submit Button",style: TextStyle(
              color: CupertinoColors.systemRed,
            ),), onPressed: onPressed(),)
          ],
        ),
      ),
    );
  }
}

