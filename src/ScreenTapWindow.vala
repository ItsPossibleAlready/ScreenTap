namespace ScreenTap{
    public class ScreenTapWindow : Gtk.ApplicationWindow {
        public ScreenTapWindow (){
            this.title = "Firstly";
            Object (
                border_width: 6,
                resizable: false
            );
            this.show_all();
        }
    }
}
