import 'package:flutter_examples/chat_app_design_example/models/message.dart';
import 'package:flutter_examples/chat_app_design_example/models/user.dart';

final User currentUser =
    new User(id: 5, name: 'Abdelmeonem', imageURL: "assets/images/chat_img/john.jpg");

final User sam = new User(id: 0, name: 'Sam', imageURL: "assets/images/chat_img/sme.jpeg");

final User ben = new User(id: 1, name: 'haifa', imageURL: "assets/images/chat_img/haifa.jpg");

final User john = new User(id: 2, name: 'john', imageURL: "assets/images/chat_img/john.jpg");

final User oblivia = new User(id: 3, name: 'oblivia', imageURL: "assets/images/chat_img/oblivia.jpg");

final User midhat = new User(id: 4, name: 'scarlet', imageURL: "assets/images/chat_img/scarlet.jpg");

List<User> favUsers = [ben, sam, john, oblivia, midhat];

final Message msg1 = new Message(
    sender: currentUser,
    time: '6:10 am',
    text: 'Ut quia voluptas saepe.',
    isliked: true,
    unread: true);

final Message msg2 = new Message(
    sender: currentUser,
    time: '6:15 am',
    text:
        'Nulla sequi corrupti beatae omnis ut tempora. Rerum non voluptates. Perspiciatis ab assumenda similique nihil iure ut voluptatem atque. Voluptates veritatis eligendi minus. Molestias officiis ex commodi nulla minima.',
    isliked: false,
    unread: true);

final Message msg3 = new Message(
    sender: sam,
    time: '6:00 am',
    text:
        'Ut et perspiciatis quibusdam amet quia corrupti et enim. Incidunt sit molestias maxime omnis qui vitae. Harum eum quidem est dolores possimus alias nihil deserunt.',
    isliked: true,
    unread: false);

final Message msg4 = new Message(
    sender: sam,
    time: '5:30 am',
    text:
        'Harum nesciunt qui ut consequuntur. Rerum id nihil asperiores suscipit. Laboriosam eius nemo illum dolor fuga quia nesciunt hic. Nam incidunt laborum consequuntur tempore. Eum quod magnam ut ex natus.',
    isliked: false,
    unread: true);

final Message msg5 = new Message(
    sender: sam,
    time: '7:50 am',
    text:
        'Mollitia quasi saepe tempore. Sint non labore earum nostrum omnis aut ex maxime omnis. Qui qui cum harum mollitia. Repellat earum rem aperiam sed ad odio. Et vel numquam.',
    isliked: false,
    unread: false);

final Message msg6 = new Message(
    sender: sam,
    time: '4:30 am',
    text:
        'Harum qui illo soluta non qui quo rem enim. Soluta expedita impedit numquam cumque.',
    isliked: true,
    unread: true);

final Message msg7 = new Message(
    sender: sam,
    time: '5:30 am',
    text:
        'Adipisci voluptatem aut alias eos. Voluptas id sunt veniam molestiae sit inventore sequi. Voluptatibus et facere voluptatem aut laboriosam ullam. Porro totam veniam repellendus rerum sit nemo voluptatem. Nam molestiae facilis ea qui.',
    isliked: false,
    unread: true);

final Message msg8 = new Message(
    sender: sam,
    time: '2:30 am',
    text:
        'Est aliquam sed voluptas quidem ut doloremque. Ut consectetur explicabo et quod ut. Harum esse velit tempora consequuntur dolor sit autem itaque exercitationem. Tempore reiciendis nostrum quo esse. Cumque corporis et accusantium asperiores quia nostrum atque. Dolorum iusto soluta praesentium labore voluptatum aut omnis quo.',
    isliked: false,
    unread: false);


List<Message> chatMessages = [msg1, msg5, msg3, msg4, msg2, msg6, msg7, msg8 ];