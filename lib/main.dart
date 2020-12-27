import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Flutter Fundamental"),
        ),
        body: Center(
            child: Container(
          child: Text(
            "Donec ut leo eu enim luctus mattis a et ex. Phasellus semper ex in nunc vestibulum vulputate. Nulla metus erat, tempor quis lorem in, tincidunt mollis est. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Duis in neque lacus. Aenean nec odio vitae turpis lobortis accumsan. Mauris ac lacus magna. Vestibulum purus dui, pharetra vel iaculis ac, finibus ut ex. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Vivamus euismod nunc lacus, vel ornare risus suscipit ut. Integer et rutrum est. Integer a risus rhoncus, ultricies lectus eget, imperdiet nisl. Aenean sit amet ipsum accumsan, cursus leo in, pharetra dolor. Suspendisse suscipit porttitor viverra. Vestibulum a tincidunt ligula, sed sollicitudin nulla. Curabitur sit amet ligula tristique, ornare turpis et, dapibus ante. Vestibulum bibendum lorem ut libero tempor, eu fringilla dui ultrices. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Morbi hendrerit tristique massa. Vestibulum viverra, velit et porta interdum, velit justo posuere urna, et feugiat lorem sapien a nibh. In ut tincidunt leo, eu porta libero. Ut nec lectus nec diam blandit dapibus. Aliquam ultrices quis ante quis imperdiet. Proin a semper urna. Vestibulum congue id nisl vel molestie. Quisque ut justo nec magna tempor porta. Nunc ultricies vestibulum lorem, vel ullamcorper neque eleifend non. Vestibulum imperdiet dapibus nulla, at maximus velit condimentum non. Maecenas a nisl dignissim, blandit odio id, varius turpis. Curabitur id nisl non ante maximus euismod. Sed euismod elit vitae egestas maximus. Cras aliquet augue feugiat, pellentesque urna ut, tempor quam. Mauris imperdiet lacinia erat ac feugiat. Donec mauris tellus, vulputate posuere dignissim sed, tempor sed dui. Fusce ut est sagittis, euismod metus ut, pretium metus. Aliquam nulla velit, sollicitudin sit amet ex et, molestie pulvinar metus. Proin eget neque at ipsum commodo rhoncus maximus consequat nibh. Praesent consequat elit sit amet velit euismod, molestie malesuada erat aliquet. Curabitur vel diam libero. Aliquam consectetur non erat nec elementum. In placerat tortor feugiat, blandit mauris et, ullamcorper massa. Aliquam non tristique nibh, nec viverra elit.",
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
            textAlign: TextAlign.center,
            style: TextStyle(color: Colors.deepPurple, fontWeight: FontWeight.w900, fontSize: 14),
          ),
          color: Colors.amber,
          width: 150,
          height: 50,
        )),
      ),
    );
  }
}
