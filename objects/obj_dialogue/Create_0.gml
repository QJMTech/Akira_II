dialog_t = 0;
dialog_delta = 1;
sprite_width = sprite_width + (1000-sprite_width);
sprite_height = sprite_height + (600 -sprite_height);

var dialog_text = "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aliquam semper eleifend urna, sit amet semper erat ultricies vitae. Ut sagittis euismod erat, ac ultricies nibh cursus et. Suspendisse semper, magna sed facilisis dictum, risus erat molestie libero, id imperdiet magna tellus eget eros. Maecenas at sollicitudin lorem, sed suscipit elit. Praesent eget nulla dui. Phasellus fermentum magna sed nunc consequat, eget placerat mauris feugiat. Sed elementum magna nec nisi suscipit condimentum. Fusce gravida leo lectus, id dignissim ipsum volutpat sit amet. Nam vitae efficitur libero. Maecenas venenatis nibh a mollis fermentum.";

dialog = dialog_create(sprite_width-10,
						sprite_height-10,
						10, 10, 10,
						dialog_text);
